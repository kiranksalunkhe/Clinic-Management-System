using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospitalMS.User
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowAppointment();

        }

        private void ShowAppointment()
        {
            string Query = "Select * from AppointmentTbl";
            AppointmentGV.DataSource = Con.GetDatas(Query);
            AppointmentGV.DataBind();
        }
        //Add This Ovrriden Method.
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

       

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string AppId = AppidTb.Value;
                string Patient = PatNmTb.Value;
                string treatment = TreatTb.Value;
                string AppDate = Datetb.Value;
                string Aptime = Timecb.SelectedItem.ToString();
                string Address = AddressTb.Value;
                string DoctorName = DocNmcb.SelectedItem.ToString();
                string PatientName = patTb.Value;
                string TreatementName = TreatmentTb.Value;
                string Query = "insert into AppointmentTbl values('{0}','{1}',{2},'{3}','{4}','{5}','{6}','{7}','{8}')";
                Query = string.Format(Query, AppId, Patient, treatment, AppDate, Aptime, Address, DoctorName, PatientName,TreatementName);
                Con.SetDates(Query);
                ShowAppointment();
                ErrMsg.InnerText = "Booked Appointment !!!";
                AppidTb.Value = "";
                PatNmTb.Value = "";
                TreatTb.Value = "";
                Datetb.Value = "";
                Timecb.SelectedIndex = -1;
                AddressTb.Value = "";
                DocNmcb.SelectedIndex = -1;
                patTb.Value = "";
                TreatmentTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void AppointmentGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            PatNmTb.Value = AppointmentGV.SelectedRow.Cells[2].Text;
            TreatTb.Value = AppointmentGV.SelectedRow.Cells[3].Text;
            Datetb.Value = AppointmentGV.SelectedRow.Cells[4].Text;
            Timecb.SelectedItem.Value = AppointmentGV.SelectedRow.Cells[5].Text;
            AddressTb.Value = AppointmentGV.SelectedRow.Cells[6].Text;
            DocNmcb.SelectedItem.Value = AppointmentGV.SelectedRow.Cells[7].Text;
            patTb.Value = AppointmentGV.SelectedRow.Cells[8].Text;
            TreatmentTb.Value = AppointmentGV.SelectedRow.Cells[9].Text;
            if (AppidTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(AppointmentGV.SelectedRow.Cells[1].Text);
            }
        }
    

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PatNmTb.Value == "")
                {
                    ErrMsg.InnerText = "select a Patient !!!";
                }
                else
                {
                    string Query = "delete from AppointmentTbl where ApId={0}";
                    Query = string.Format(Query, AppointmentGV.SelectedRow.Cells[1].Text);
                    Con.SetDates(Query);
                    ShowAppointment();
                    ErrMsg.InnerText = "Appointment Deleted !!!";
                    Key = 0;
                    AppidTb.Value = "";
                    PatNmTb.Value = "";
                    TreatTb.Value = "";
                    Datetb.Value = "";
                    Timecb.SelectedIndex = -1;
                    AddressTb.Value = "";
                    DocNmcb.SelectedIndex = -1;
                    patTb.Value = "";
                    TreatmentTb.Value = "";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

      
    }
}