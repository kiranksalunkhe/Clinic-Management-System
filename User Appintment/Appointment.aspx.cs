using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospitalMS.User_Appintment
{
    public partial class Appointment : System.Web.UI.Page
    {
        Models.Functions Con;

        public object ErrMsg { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowPatient();
        }

        private void ShowPatient()
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Calendar2.SelectedDate > Calendar2.TodaysDate)
            {
                try
                {
                    string PatientName = PatientNameTb.Value;
                    string Age = AgeTb.Value;
                    string Gender = GenderCb.SelectedIndex.ToString();
                    string Depatment = DepartmentTb.Value;
                    string DoctorName = DoctorNameTb.Value;
                    string Date = DateTb.Value;

                    string Query = "insert into AppointmentTbl values('{0}','{1}',{2},'{3}','{4}','{5}')";
                    Query = string.Format(Query, PatientName, Age, Gender, Depatment, DoctorName, Date);
                    Con.SetDates(Query);
                    ShowPatient();
                    DoctorNameTb.Value = "";
                    AgeTb.Value = "";
                    DepartmentTb.Value = "";
                    DateTb.Value = "";
                    GenderCb.SelectedIndex = -1;

                }
                catch (Exception Ex)
                {
                    
                }
            


            //  Label7.Text = "<br>Patient Name : " + TextBox1.Text + "<br>Age :" + TextBox2.Text + "<br> Gender :" + TextBox3.Text + "<br> Department :" + TextBox4.Text + "<br> Doctor Name :" + TextBox5.Text + "<br>Your Appointment Booked On " + Calendar1.SelectedDate.ToShortDateString();
        }
             else
            // {
                 Label7.Text = "Sorry!Your Appintment with Doctor is not avaliable on " + Calendar2.SelectedDate.ToShortDateString();
             }
         }

         /*protected void Calendar1_SelectionChanged(object sender, EventArgs e)
         {
             TextBox6.Text = Calendar1.SelectedDate.ToLongDateString();
         }

         protected void TextBox1_TextChanged(object sender, EventArgs e)
         {

         }*/
        }
        
    





