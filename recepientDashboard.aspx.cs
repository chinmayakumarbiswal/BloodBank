using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BloodBankProject
{
    public partial class recepientDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["emailRecepient"] == null)
            {
                Response.Redirect("adminLogin.aspx");
            }

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


            string insertlogin = "select * from recepient";
            MySqlCommand cmdlogin = new MySqlCommand(insertlogin, db);
            MySqlDataReader drlogin = cmdlogin.ExecuteReader();

            if (drlogin.Read())
            {
                userName.Text = drlogin.GetString(1);
                HospitalName.Value= drlogin.GetString(3);

            }
            db.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
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




            string insert = "insert into requestdata (BloodGroup,Hospital) values ('" + bloodgroup.Text + "','" + HospitalName.Value + "')";
            MySqlCommand cmd = new MySqlCommand(insert, db);
            int noOfExecute = cmd.ExecuteNonQuery();

            if (noOfExecute > 0)
            {
                Response.Write("<script>alert('Data inserted successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data inserted error contact to admin')</script>");
            }
            db.Close();
        }
    }
}