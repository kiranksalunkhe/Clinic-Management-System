using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospitalMS.Views.Doctors
{
    public partial class Precreptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowPrescription();
            GetTest();
            GetPatients();
        }
        Models.Functions Con;
        private void ShowPrescription()
        {
            string Query = "Select * from  PrescriptionTb";
            PrescriptionGV.DataSource = Con.GetDatas(Query);
            PrescriptionGV.DataBind();
        }
        //Add This Ovrriden Method.
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        // get lab test

        private void GetTest()
        {
            string Query = "select * from LabTestTbl";
            Testcb.DataTextField = Con.GetDatas(Query).Columns["TestName"].ToString();
            Testcb.DataValueField = Con.GetDatas(Query).Columns["TestId"].ToString();
            Testcb.DataSource = Con.GetDatas(Query);
            Testcb.DataBind();
        }
        private void GetPatients()
        {
            string Query = "select * from PatientTbl";
            Patientcb.DataTextField = Con.GetDatas(Query).Columns["PatName"].ToString();
            Patientcb.DataValueField = Con.GetDatas(Query).Columns["PatId"].ToString();
            Patientcb.DataSource = Con.GetDatas(Query);
            Patientcb.DataBind();
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                int Doctor = 301;
                string Patient =Patientcb.SelectedValue.ToString();
                string Medicines = MedicineTb.Value;
                string LabTest = Testcb.SelectedValue.ToString();
                string MedicineCost = CostTb.Value;
                string Quantity = QuantTb.Value;
                string Doccost = DoccostTb.Value;
                

                string Query = "insert into PrescriptionTb values({0},'{1}','{2}',{3},{4},{5},{6})";
                Query = string.Format(Query,Doctor, Patient, Medicines, LabTest, MedicineCost,Quantity,Doccost);
                Con.SetDates(Query);
                ShowPrescription();
                ErrMsg.InnerText = "Prescription Added !!!";
                MedicineTb.Value = "";
                CostTb.Value = "";
                Patientcb.SelectedIndex = -1;
                Testcb.SelectedIndex = -1;
                QuantTb.Value = "";
                DoccostTb.Value = "";

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0; 
        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (MedicineTb.Value == "")
                {
                    ErrMsg.InnerText = "select a Medicine !!!";
                }
                else
                {
                    string Query = "delete from PrescriptionTb where PrescId={0}";
                    Query = string.Format(Query, PrescriptionGV.SelectedRow.Cells[1].Text);
                    Con.SetDates(Query);
                    ShowPrescription();
                    ErrMsg.InnerText = "Prescription Deleted !!!";
                    Key = 0;
                    MedicineTb.Value = "";
                    CostTb.Value = "";
                    Patientcb.SelectedIndex = -1;
                    Testcb.SelectedIndex = -1;
                    QuantTb.Value = "";
                    DoccostTb.Value = "";

                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
    }
