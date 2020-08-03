using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banguilan_Exercise04.Register
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_SignUp_Click(object sender, EventArgs e)
        {
            if (Register_User(TextBox_Username.Text, TextBox_FN.Text, TextBox_LN.Text, TextBox_Password.Text, TextBox_Email.Text))
            {
                Response.Write("<script>alert('Account Created Successfully!')</script>");
            }
            else {
                Response.Write("<script>alert('Account Already Exists!')</script>");
            }
        }

        private bool Register_User(string username, string FN, string LN, string Pass, string email) {
            string connectionString = ConfigurationManager.ConnectionStrings["ExerciseDB"]?.ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand("Register_Account", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                connection.Open();
                string EncryptedPassword = DataProtection.Encrypt(Pass, true);

                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = username;
                command.Parameters.Add("@FirstName", SqlDbType.NVarChar).Value = FN;
                command.Parameters.Add("@LastName", SqlDbType.NVarChar).Value = LN;
                command.Parameters.Add("@PassWord", SqlDbType.NVarChar).Value = EncryptedPassword;
                command.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
                
                int ReturnCode = (int)command.ExecuteScalar();
                return (ReturnCode == 1);
            }
        }

    }
}