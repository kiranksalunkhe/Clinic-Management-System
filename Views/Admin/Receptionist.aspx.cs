using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospitalMS.Views.Admin
{
    public partial class Receptionist : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowReceptionist();
        }
        //Add This Ovrriden Method.
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        private void ShowReceptionist()
        {
            string Query = "Select * from  ReceptionistTbl";
            ReceptionistGV.DataSource = Con.GetDatas(Query);
            ReceptionistGV.DataBind();
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RName = ReceptNameTb.Value;
                string REmail = RecEmailTb.Value;
                string RAdd = AddressTb.Value;
                string RPhone = PhoneTb.Value;
                string Password = PasswordTb.Value;
                string Query = "insert into ReceptionistTbl values('{0}','{1}','{2}','{3}','{4}')";
                Query = string.Format(Query, RName, REmail, RAdd, RPhone, Password);
                Con.SetDates(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Receptionist Added !!!";
                ReceptNameTb.Value ="";
                RecEmailTb.Value="";
                AddressTb.Value="";
                PhoneTb.Value="";
                PasswordTb.Value="";
            }
            catch(Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void ReceptionistGV_SelectedIndexChanged1(object sender, EventArgs e)
        {
            ReceptNameTb.Value = ReceptionistGV.SelectedRow.Cells[2].Text;
            RecEmailTb.Value = ReceptionistGV.SelectedRow.Cells[3].Text;
            AddressTb.Value = ReceptionistGV.SelectedRow.Cells[4].Text;
            PhoneTb.Value = ReceptionistGV.SelectedRow.Cells[5].Text;
            PasswordTb.Value = ReceptionistGV.SelectedRow.Cells[6].Text;
            if (ReceptNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(ReceptionistGV.SelectedRow.Cells[1].Text);
            }
        }

        
        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(ReceptNameTb.Value == "")
                {
                    ErrMsg.InnerText = "select a Receptionist !!!";
                }
                else
                {
                    string Query = "delete from ReceptionistTbl where RecId={0}";
                    Query = string.Format(Query, ReceptionistGV.SelectedRow.Cells[1].Text);
                    Con.SetDates(Query);
                    ShowReceptionist();
                    ErrMsg.InnerText = "Receptionist Deleted !!!";
                    Key = 0;
                    ReceptNameTb.Value = "";
                    RecEmailTb.Value = "";
                    AddressTb.Value = "";
                    PhoneTb.Value = "";
                    PasswordTb.Value = "";
                }
                
            }
            catch(Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RName = ReceptNameTb.Value;
                string REmail = RecEmailTb.Value;
                string RAdd = AddressTb.Value;
                string RPhone = PhoneTb.Value;
                string Password = PasswordTb.Value;
                string Query = "update ReceptionistTbl set RecName = '{0}',RecEmail = '{1}',RecAdd = '{2}',RecPhone = '{3}',RecPassword = '{4}' where RecId = {5}";
                Query = string.Format(Query, RName, REmail, RAdd, RPhone, Password, ReceptionistGV.SelectedRow.Cells[1].Text);
                Con.SetDates(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Receptionist Updated !!!";
                ReceptNameTb.Value = "";
                RecEmailTb.Value = "";
                AddressTb.Value = "";
                PhoneTb.Value = "";
                PasswordTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}