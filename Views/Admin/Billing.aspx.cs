using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospitalMS.Views.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowBill();
        }

        private void ShowBill()
        {
            string Query = "Select * from  BillingTbl";
            BillingGV.DataSource = Con.GetDatas(Query);
            BillingGV.DataBind();
        }
        //Add This Ovrriden Method.
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        int Key = 0;
        protected void BillingGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            PharmNameTb.Value = BillingGV.SelectedRow.Cells[2].Text;
            EmailTb.Value = BillingGV.SelectedRow.Cells[3].Text;
            PasswordTb.Value = BillingGV.SelectedRow.Cells[4].Text;
            PhoneTb.Value = BillingGV.SelectedRow.Cells[5].Text;
            LabAddressTb.Value = BillingGV.SelectedRow.Cells[6].Text;
            GenderCb.SelectedItem.Value = BillingGV.SelectedRow.Cells[7].Text;

            if (PharmNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(BillingGV.SelectedRow.Cells[1].Text);
            }
        }


        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string PharmName = PharmNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAddress = LabAddressTb.Value;
                string LabGen = GenderCb.SelectedItem.ToString();



                string Query = "update  BillingTbl  set PharmName = '{0}',BillEmail = '{1}',BillPass = '{2}',BillPhone = '{3}',BillAddress = '{4}',BillGen = '{5}' where BillId = {6}";
                Query = string.Format(Query, PharmName, LabEmail, LabPass, LabPhone, LabAddress, LabGen, BillingGV.SelectedRow.Cells[1].Text);
                Con.SetDates(Query);
                ShowBill();
                ErrMsg.InnerText = "Laboratorian Updated !!!";
                PharmNameTb.Value = "";
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

        protected void AddBtn_Click1(object sender, EventArgs e)
        {
            try
            {
                string PharmName = PharmNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAdd = LabAddressTb.Value;
                string LabGen = GenderCb.SelectedItem.Value;

                string Query = "insert into BillingTbl values('{0}','{1}',{2},'{3}','{4}','{5}')";
                Query = string.Format(Query, PharmName, LabEmail, LabPass, LabPhone, LabAdd, LabGen);
                Con.SetDates(Query);
                ShowBill();
                ErrMsg.InnerText = "Laboratorian Added !!!";
                PharmNameTb.Value = "";
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


        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PharmNameTb.Value == "")
                {
                    ErrMsg.InnerText = "select a Pharmsist !!!";
                }
                else
                {
                    string Query = "delete from BillingTbl where BillId={0}";
                    Query = string.Format(Query, BillingGV.SelectedRow.Cells[1].Text);
                    Con.SetDates(Query);
                    ShowBill();
                    ErrMsg.InnerText = "Laboratorian Deleted !!!";
                    Key = 0;
                    PharmNameTb.Value = "";
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
    }
}    
    
