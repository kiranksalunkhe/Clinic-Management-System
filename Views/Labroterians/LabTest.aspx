<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Labroterians/LaboratorianMaster.Master" AutoEventWireup="true" CodeBehind="LabTest.aspx.cs" Inherits="EHospitalMS.Views.Labroterians.LabTest" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row" style="height:50px"></div>
        <div class="row">
            <div class="col-md-4">
                 <h2>Laboratory Test Detail</h2>
                 <p>
                     <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Views/Doctors/Precreptions.aspx">Doctor Prescription</asp:HyperLink>
                 </p>
                <form>
  <div class="mb-3">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" id="LabNameTb" runat="server"/>
     
  </div>
  <div class="mb-3">
    <label for="TestCostTb">Test Cost</label>
    <input type="text" class="form-control" id="TestCostTb" runat="server"/>
 
  </div> 
   <div class="row" style="height:150px"></div>
    
 
  <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
  <asp:Button ID="EditBtn" runat="server" Text=" Edit " class="btn btn-warning" OnClick="EditBtn_Click"/> 
  <asp:Button ID="AddBtn" runat="server" Text=" Save " class="btn btn-primary" OnClick="AddBtn_Click"/> 
  <asp:Button ID="DeleteBtn" runat="server" Text=" Delete " class="btn btn-danger" OnClick="DeleteBtn_Click"/> 
</form>
            </div>
            <div class="col-md-8">
                <div class="row">
                <div class="col">
                    <img src="../../Assets/Images/lab.jpg" height="300px" width="100%" class="rounded-3" />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h1>Laboratory Test Details</h1>
                    <asp:GridView ID="LabTestGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="LabTestGV_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
