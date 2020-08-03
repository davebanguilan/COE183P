using Banguilan_Exercise04.Register;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banguilan_Exercise04
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            if (Authenticate_User(TextBox_LoginUser.Text, TextBox_LoginPass.Text))
            {
                Response.Redirect("Home.aspx");
            }
            else {
                Response.Write("<script>alert('Invalid Username/Password!')</script>");
            }
        }

        protected void Button_SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register/Registration.aspx");
        }

        private bool Authenticate_User(string username, string Pass) {
            string connectionString = ConfigurationManager.ConnectionStrings["ExerciseDB"]?.ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand("Authenticate_Account", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                connection.Open();
                string EncryptedPassword = DataProtection.Encrypt(Pass, true);

                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = username;
                command.Parameters.Add("@PassWord", SqlDbType.NVarChar).Value = EncryptedPassword;

                int ReturnCode = (int)command.ExecuteScalar();
                return (ReturnCode == 1);
            }
        }
    }
}