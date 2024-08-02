using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace EHospitalMS.User_Appintment
{
    public partial class Loginpgyt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con;
            con = new OleDbConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Kiran\\Documents\\ClinicASPDb.mdf;Integrated Security=True;Connect Timeout=30");
            string query = ("Select count (*) from loginregister where username='" +TextBox1.Text + "'and password='" + TextBox2.Text + "'");
            OleDbCommand com = new OleDbCommand(query, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("loggedin.aspx");
            }
            else
            {
                Label3.Text = "username and password is not correct ";
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}