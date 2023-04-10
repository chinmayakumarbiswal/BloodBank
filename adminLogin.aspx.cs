using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BloodBankProject
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            string server = "localhost";
            string database = "bloodbank";
            string uid = "root";
            string password = "";
            string port = "8800";
            string con;


            con = "SERVER=" + server + ";" + "DATABASE=" + database + ";" + "UID=" + uid + ";" + "PWD=" + password + ";";
            MySqlConnection db = new MySqlConnection(con);
            try
            {
                db.Open();

            }
            catch (Exception error)
            {
                Response.Write("<script>alert('Database connection error !" + error.Message + "')</script>");
            }




            string insert = "select * from adminData where email='" + email.Text + "' AND password='" + pass.Text + "'";
            MySqlCommand cmd = new MySqlCommand(insert, db);
            MySqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["adminEmail"] = email.Text;
                Response.Redirect("adminDonorDetails.aspx");
                db.Close();
            }
            else
            {
                output.Text = "Username And Password not matched";
                db.Close();
            }




            
        }
    }
}