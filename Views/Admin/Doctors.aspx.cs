using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospitalMS.Views.Admin
{
    public partial class Doctors : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDoctors();
        }
        private void ShowDoctors()
        {
            string Query = "Select * from  DoctorTbl";
            DoctorsGV.DataSource = Con.GetDatas(Query);
            DoctorsGV.DataBind();
        }
        //Add This Ovrriden Method.
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string DocName = DoctorNameTb.Value;
                string DocPhone = DoctorPhoneTb.Value;
                string DocExp = DoctorExpTb.Value;
                string DocSpec = SpecialisationTb.Value;
                string DocGen = GenderCb.SelectedItem.ToString();
                string DocAdd = AddressTb.Value;
                string DocDob = DOBTb.Value;
                string DocPass = Passwordtb.Value;
                string DocEmail = EmailTb.Value;

                string Query = "insert into DoctorTbl values('{0}','{1}',{2},'{3}','{4}','{5}','{6}','{7}','{8}')";
                Query = string.Format(Query, DocName,DocPhone,DocExp,DocSpec,DocGen,DocAdd,DocDob,DocPass,DocEmail);
                Con.SetDates(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doctor Added !!!";
                DoctorNameTb.Value = "";
                DoctorPhoneTb.Value = "";
                DoctorExpTb.Value = "";
                SpecialisationTb.Value = "";
                GenderCb.SelectedIndex = -1;
                AddressTb.Value = "";
                DOBTb.Value = "";
                Passwordtb.Value = "";
                EmailTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void DoctorsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            DoctorNameTb.Value = DoctorsGV.SelectedRow.Cells[2].Text;
            DoctorPhoneTb.Value = DoctorsGV.SelectedRow.Cells[3].Text;
            DoctorExpTb.Value = DoctorsGV.SelectedRow.Cells[4].Text;
            SpecialisationTb.Value = DoctorsGV.SelectedRow.Cells[5].Text;
            GenderCb.SelectedItem.Value = DoctorsGV.SelectedRow.Cells[6].Text;
            AddressTb.Value = DoctorsGV.SelectedRow.Cells[7].Text;
            DOBTb.Value = DoctorsGV.SelectedRow.Cells[8].Text;
            Passwordtb.Value = DoctorsGV.SelectedRow.Cells[9].Text;
            EmailTb.Value = DoctorsGV.SelectedRow.Cells[10].Text;
            if (DoctorNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DoctorsGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DoctorNameTb.Value == "")
                {
                    ErrMsg.InnerText = "select a Doctor !!!";
                }
                else
                {
                    string Query = "delete from DoctorTbl where DocId={0}";
                    Query = string.Format(Query, DoctorsGV.SelectedRow.Cells[1].Text);
                    Con.SetDates(Query);
                    ShowDoctors();
                    ErrMsg.InnerText = "Doctor Deleted !!!";
                    Key = 0;
                    DoctorNameTb.Value = "";
                    DoctorPhoneTb.Value = "";
                    DoctorExpTb.Value = "";
                    SpecialisationTb.Value = "";
                    GenderCb.SelectedIndex = -1;
                    AddressTb.Value = "";
                    Passwordtb.Value = "";
                    EmailTb.Value = "";
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
                string DocName = DoctorNameTb.Value;
                string DocPhone = DoctorPhoneTb.Value;
                string DocExp = DoctorExpTb.Value;
                string DocSpec = SpecialisationTb.Value;
                string DocGen = GenderCb.SelectedItem.ToString();
                string DocAdd = AddressTb.Value;
                string DocDob = DOBTb.Value;
                string DocPass = Passwordtb.Value;
                string DocEmail = EmailTb.Value;
                string Query = "update DoctorTbl set DocName = '{0}',DocPhone = '{1}',DocExp = '{2}',DocSpec = '{3}',DocGen = '{4}',DocAdd = '{5}',DocDob = '{6}',DocPass = '{7}',DocEmail ='{8}' where DocId = {9}";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocDob, DocPass, DocEmail, DoctorsGV.SelectedRow.Cells[1].Text);
                Con.SetDates(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doctor Updated !!!";
                DoctorNameTb.Value = "";
                DoctorPhoneTb.Value = "";
                DoctorExpTb.Value = "";
                SpecialisationTb.Value = "";
                GenderCb.SelectedIndex = -1;
                AddressTb.Value = "";
               
                Passwordtb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}