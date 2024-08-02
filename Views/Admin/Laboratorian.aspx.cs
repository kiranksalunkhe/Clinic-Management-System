using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospitalMS.Views.Admin
{
    public partial class Laboratorian : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowLaboratorian();
        }
       
        private void ShowLaboratorian()
        {
            string Query = "Select * from  LaboratirianTbl";
            LaboratorianGV.DataSource = Con.GetDatas(Query);
            LaboratorianGV.DataBind();
        }
        //Add This Ovrriden Method.
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LabNameTb.Value;
                string LabEmail  = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAdd = LabAddressTb.Value;
                string LabGen = GenderCb.SelectedItem.Value;
               
                string Query = "insert into LaboratirianTbl values('{0}','{1}',{2},'{3}','{4}','{5}')";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAdd, LabGen);
                Con.SetDates(Query);
                ShowLaboratorian();
                ErrMsg.InnerText = "Laboratorian Added !!!";
                LabNameTb.Value = "";
                EmailTb.Value = "";
                LabAddressTb.Value = "";
                GenderCb.SelectedIndex = -1;
                PhoneTb.Value = "";
               
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void DoctorsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabNameTb.Value = LaboratorianGV.SelectedRow.Cells[2].Text;
            EmailTb.Value = LaboratorianGV.SelectedRow.Cells[3].Text;
            PasswordTb.Value = LaboratorianGV.SelectedRow.Cells[4].Text;
            PhoneTb.Value = LaboratorianGV.SelectedRow.Cells[5].Text;
            LabAddressTb.Value = LaboratorianGV.SelectedRow.Cells[6].Text;
            GenderCb.SelectedItem.Value = LaboratorianGV.SelectedRow.Cells[7].Text;
            
            if (LabNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(LaboratorianGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LabNameTb.Value == "")
                {
                    ErrMsg.InnerText = "select a Doctor !!!";
                }
                else
                {
                    string Query = "delete from LaboratirianTbl where LabId={0}";
                    Query = string.Format(Query, LaboratorianGV.SelectedRow.Cells[1].Text);
                    Con.SetDates(Query);
                    ShowLaboratorian();
                    ErrMsg.InnerText = "Laboratorian Deleted !!!";
                    Key = 0;
                    LabNameTb.Value = "";
                    EmailTb.Value = "";
                    PasswordTb.Value = "";
                    PhoneTb.Value = "";
                    GenderCb.SelectedIndex = -1;
                    LabAddressTb.Value = "";
                   
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LabNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAddress = LabAddressTb.Value;
                string LabGen = GenderCb.SelectedItem.ToString();
                
               

                string Query = "update  LaboratirianTbl  set LabName = '{0}',LabEmail = '{1}',LabPass = '{2}',LabPhone = '{3}',LabAddress = '{4}',LabGen = '{5}' where LabId = {6}";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen,LaboratorianGV.SelectedRow.Cells[1].Text);
                Con.SetDates(Query);
                ShowLaboratorian();
                ErrMsg.InnerText = "Laboratorian Updated !!!";
                LabNameTb.Value = "";
                EmailTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                LabAddressTb.Value = "";
                GenderCb.SelectedIndex = -1;
               

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
    }
    
