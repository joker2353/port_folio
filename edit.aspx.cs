using MySql.Data.MySqlClient;
using Org.BouncyCastle.Utilities.Encoders;
using Port_folio;
using System;
using System.Web.UI;

namespace My_Portfolio
{
    public partial class edit : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write(Session["id"]);
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
                        string query1 = "SELECT MAX(id) AS LastIndex FROM message";
                        MySqlCommand command = new MySqlCommand(query, connection);
                        MySqlCommand command1 = new MySqlCommand(query1, connection);
                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string aboutValue = reader["about"].ToString();

                                aboutTextBox.Text = aboutValue;

                            }
                        }

                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"An error occurred: {ex.Message}");
                    }
                    using (MySqlConnection connectio = new MySqlConnection(connectionString))
                    {
                        try
                        {
                            connectio.Open();

                            // Query to retrieve the index of the last inserted data
                            string query = "SELECT MAX(id) AS LastIndex FROM message";

                            // Create a command
                            MySqlCommand command1 = new MySqlCommand(query, connectio);

                            // Execute the command
                            object lastIndexObj = command1.ExecuteScalar();

                            if (lastIndexObj != null && lastIndexObj != DBNull.Value)
                            {
                                int lastIndex = Convert.ToInt32(lastIndexObj);
                                string li = lastIndex.ToString();
                                id_label.Text = $"Index of last inserted data: {li}";
                            }
                            else
                            {
                                Console.WriteLine("No data found in the 'message' table.");
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

        protected void updateButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                string aboutValue = aboutTextBox.Text;

                try
                {
                    connection.Open();
                    string query = "UPDATE edit SET about = @about WHERE id = 1";
                    MySqlCommand command = new MySqlCommand(query, connection);

                    command.Parameters.AddWithValue("@about", aboutValue);

                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Console.WriteLine($"Update successful. Rows affected: {rowsAffected}");
                    }
                    else
                    {
                        Console.WriteLine($"No rows updated.");
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }
            }
        }

        protected void delButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "DELETE FROM hobbies WHERE id = 1";
                    MySqlCommand command = new MySqlCommand(query, connection);

                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Console.WriteLine($"Delete successful. Rows affected: {rowsAffected}");
                    }
                    else
                    {
                        Console.WriteLine($"No rows deleted.");
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }
            }
        }




        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Profile profile = new Profile(

                EmailTextBox.Text.Trim(),
                OccupationDropDownList.SelectedValue,
                SexRadioButtonList.SelectedValue
                );

            // If send to profile page is checked, send the profile values using querystrings
            string queryString = $"?email={EmailTextBox.Text.Trim()}&occupation={OccupationDropDownList.SelectedValue}&sex={SexRadioButtonList.SelectedValue}";

            // Redirect to the main page with the query string
            Response.Redirect("main.aspx" + queryString);

        }


        protected void hobbyButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                string hobbyValue = hobbyTextBox.Text;

                try
                {
                    connection.Open();
                    string query = "INSERT INTO hobbies (id, hobby) VALUES (1, @hobby)";
                    MySqlCommand command = new MySqlCommand(query, connection);

                    command.Parameters.AddWithValue("@hobby", hobbyValue);

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

        protected void show_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string msg_id = idbox.Text;
                    int m_id = int.Parse(msg_id);
                    string query = "SELECT msg FROM message WHERE Id = @m_id";

                    // Create and execute the command to fetch the message
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        // Add parameter to the command
                        command.Parameters.AddWithValue("@m_id", m_id);

                        // Execute the command and retrieve the message
                        string msgValue = (string)command.ExecuteScalar();

                        // Display the message
                        show_msg.Text = msgValue;

                    }
                    
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();

            if (Session["id"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}
