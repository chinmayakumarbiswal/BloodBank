using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BloodBankProject
{
    public partial class adminBloodRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminEmail"] == null)
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


            string insertlogin = "select * from admindata";
            MySqlCommand cmdlogin = new MySqlCommand(insertlogin, db);
            MySqlDataReader drlogin = cmdlogin.ExecuteReader();

            if (drlogin.Read())
            {
                userName.Text = drlogin.GetString(2);

            }
            db.Close();

            db.Open();
            string insert = "select * from requestdata";
            MySqlCommand cmd = new MySqlCommand(insert, db);
            MySqlDataReader dr = cmd.ExecuteReader();


            do
            {
                RequestData.DataSource = dr;
                RequestData.DataBind();


            } while (dr.Read());



            db.Close();
        }
    }
}