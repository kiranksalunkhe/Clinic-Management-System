using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospitalMS.billing_Module
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowMedicine();

            if(!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6]
                {
                   new DataColumn("ID"),
                   new DataColumn("Mediines"),
                   new DataColumn("Price"),
                   new DataColumn("Quantity"),
                   new DataColumn("DOcCost"),
                   new DataColumn("Total"),
                 });
                ViewState["Bill"] = dt;
                this.BindGrid();
            }
        }
        private void BindGrid()
        {
            BillGV.DataSource = (DataTable)ViewState["Bill"];
            BillGV.DataBind();
        }
        private void ShowMedicine()
        {
            string Query = "Select * from  PrescriptionTb";
            PrescriptionGV.DataSource = Con.GetDatas(Query);
            PrescriptionGV.DataBind();
        }

        //Add This Ovrriden Method.
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        int Key = 0;
        int Stock;
        protected void PrescriptionGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            MedNmTb.Value = PrescriptionGV.SelectedRow.Cells[4].Text;
            MedPrTb.Value = PrescriptionGV.SelectedRow.Cells[6].Text;
            MedDocTb.Value = PrescriptionGV.SelectedRow.Cells[8].Text;
            Stock = Convert.ToInt32(PrescriptionGV.SelectedRow.Cells[5].Text);
            ErrMsg.InnerText = "" +Stock;
            if (MedNmTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(PrescriptionGV.SelectedRow.Cells[1].Text);
            }
        }
        private void UpdateStock()
        {
            int newQty;
            newQty = Convert.ToInt32(PrescriptionGV.SelectedRow.Cells[5].Text) - Convert.ToInt32(MedQtyTb.Value);
            string Query = "update PrescriptionTb set Quantity = '{0}' where PrescId = {1}";
            Query = string.Format(Query,newQty,PrescriptionGV.SelectedRow.Cells[1].Text);
            Con.SetDates(Query);
            ShowMedicine();
            ErrMsg.InnerText = "Quantity Updated !!!";
           
        }
        int GrdTotal = 0;
        protected void AddToBillBth_Click(object sender, EventArgs e)
        {
            int total = Convert.ToInt32(MedQtyTb.Value) * Convert.ToInt32(MedPrTb.Value) + Convert.ToInt32(MedDocTb.Value);
            DataTable dt = (DataTable)ViewState["Bill"];
            dt.Rows.Add(BillGV.Rows.Count + 1,
                MedNmTb.Value.Trim(),
                MedPrTb.Value.Trim(),
                MedQtyTb.Value.Trim(),
                MedDocTb.Value.Trim(),
                total
                );

            ViewState["Bill"] = dt;
            this.BindGrid();
           UpdateStock();
           GrdTotal = GrdTotal + total;
           GrdTotTb.InnerText = "Rs " + GrdTotal;
            MedNmTb.Value = string.Empty;
            MedPrTb.Value = string.Empty;
            MedQtyTb.Value = string.Empty;
            MedDocTb.Value = string.Empty;
        }

       
    }
}