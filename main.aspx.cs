using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Port_folio
{
    public partial class main : System.Web.UI.Page
    {



        protected void button5_click(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                string msg = msgbox.Text;

                try
                {
                    connection.Open();
                    string query = "INSERT INTO message (msg) VALUES (@ms)";
                    MySqlCommand command = new MySqlCommand(query, connection);

                    command.Parameters.AddWithValue("@ms", msg);

                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Console.WriteLine($"Insert successful. Rows affected: {rowsAffected}");
                    }
                    else
                    {
                        Console.WriteLine($"No rows inserted.");
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }
            }
        }

        protected void GithubButton_Click(object sender, EventArgs e)
        {
            // Redirect to the GitHub URL
            Response.Redirect("https://github.com/joker2353/Puzzle_game");
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["email"] != null && Request.QueryString["occupation"] != null && Request.QueryString["sex"] != null)
            {
                string email = Request.QueryString["email"];
                string occupation = Request.QueryString["occupation"];
                string sex = Request.QueryString["sex"];

                // Do something with the retrieved values, such as displaying them on the page
                // For example:
                InfoLabel.Text = $"<br/>Email: {email}<br />Occupation: {occupation}<br />Sex: {sex}";

            }










            if (!IsPostBack)
            {
                string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    try
                    {
                        connection.Open();
                        string query = "SELECT about FROM edit WHERE Id = 1";
                        MySqlCommand command = new MySqlCommand(query, connection);

                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string aboutValue = reader["about"].ToString();

                                ab.Text = aboutValue;

                            }
                        }
                        string query1 = "SELECT hobby FROM hobbies WHERE Id = 1";
                        MySqlCommand command1 = new MySqlCommand(query1, connection);

                        using (MySqlDataReader reader = command1.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string hobbyValue = reader["hobby"].ToString();

                                hobbs.Text = hobbyValue;

                            }
                            else
                            {
                                hobbs.Text = " ";
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
    }
}