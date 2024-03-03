using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using MySql.Data.MySqlClient;

namespace Port_folio
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["UserInfo"];

                if (cookie != null)
                {
                   username.Text = cookie["username"].ToString();
                   password.Text = cookie["password"].ToString();

                }
                
               // if (Session["uname"] != null)
               // {
                  //  username.Text = Session["uname"].ToString();
              //  }
               // if (Session["pass"] != null)
               // {
               //     password.Text = Session["pass"].ToString();
               // }
            }

        }
        protected void Login_button(object sender, EventArgs e)
        {
            //Session["uname"] = username.Text;
            Session["id"] = password.Text;

            HttpCookie cookie = new HttpCookie("UserInfo");

            cookie["username"] = username.Text;
            cookie["password"] = password.Text;

            cookie.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(cookie);


            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);
            String user = username.Text;
            String pass = password.Text;

            try
            {
                connection.Open();
                string query = "SELECT username, password FROM login WHERE username= @Username";
                MySqlCommand command = new MySqlCommand(query, connection);

                command.Parameters.AddWithValue("@Username", user);
                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        //string username = reader["username"].ToString();
                        string password = reader["password"].ToString();

                        if (pass == password)
                        {
                             Response.Redirect("edit.aspx");
                        }
                        else
                        {

                        }


                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }

           



        }
}
}