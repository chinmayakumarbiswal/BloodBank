using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BloodBankProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createu_Click(object sender, EventArgs e)
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
                Response.Write("<script>alert('Database connection error !"+ error.Message + "')</script>");
            }




            string insert = "insert into registerData (name,number,Address,dob,weight,bloodgroup) values ('" + name.Text + "','" + number.Text + "','" + Address.Text + "','" + dob.Text + "','" + weight.Text + "','" + bloodgroup.Text + "')";
            MySqlCommand cmd = new MySqlCommand(insert, db);
            int noOfExecute = cmd.ExecuteNonQuery();

            if (noOfExecute > 0)
            {
                Response.Write("<script>alert('Data inserted successfully')</script>");
                name.Text = "";
                number.Text = "";
                Address.Text = "";
                dob.Text = "";
                weight.Text = "";
                bloodgroup.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Data inserted error contact to admin')</script>");
            }
            db.Close();
        }
    }
}