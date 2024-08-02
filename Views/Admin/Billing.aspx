<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin2.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="EHospitalMS.Views.Admin.WebForm1"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                 <h2>Pharmsist Detail</h2>
                <form>
  <div class="mb-3">
    <label for="PharmNameTb">Pharasist Name</label>
    <input type="text" class="form-control" id="PharmNameTb" runat="server"/>
  
  </div>
  <div class="mb-3">
    <label for="EmailTb">Email</label>
    <input type="Email" class="form-control" id="EmailTb" runat="server"/>
 
  </div> 
   <div class="mb-3">
    <label for="PasswordTb">Password</label>
    <input type="text" class="form-control" id="PasswordTb" runat="server"/>
 </div>
   <div class="mb-3">
    <label for="PhoneTb">Phone</label>
    <input type="text" class="form-control" id="PhoneTb" runat="server"/>
 </div>
  <div class="mb-3">
    <label for="LabAddressTb">Address</label>
    <input type="text" class="form-control" id="LabAddressTb" runat="server"/>
  </div>
  <div class="mb-3">
    <label for="GenderCb">Gender</label>
     <asp:DropDownList ID="GenderCb" runat="server" class="form-control">
          <asp:ListItem>Male</asp:ListItem>
          <asp:ListItem>FeMale</asp:ListItem>
      </asp:DropDownList>
  </div>
    
 
  <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
  <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click"  /> 
  <asp:Button ID="AddBtn" runat="server" Text="Save" class="btn btn-primary" OnClick="AddBtn_Click1"/> 
  <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger" OnClick="DeleteBtn_Click" /> 
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
                    <h1>Pharmsist Details</h1>
                    <asp:GridView ID="BillingGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BillingGV_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
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
