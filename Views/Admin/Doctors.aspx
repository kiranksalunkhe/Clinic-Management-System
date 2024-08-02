<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin2.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="EHospitalMS.Views.Admin.Doctors" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                 <h2>Doctor Detail</h2>
                <form>
  <div class="mb-3">
    <label for="exampleInputEmail1">Doctor Name</label>
    <input type="text" class="form-control" id="DoctorNameTb" runat="server"/>
  
  </div>
  <div class="mb-3">
    <label for="DoctorPhoneTb">Phone Number</label>
    <input type="text" class="form-control" id="DoctorPhoneTb" runat="server"/>
 
  </div> 
   <div class="mb-3">
    <label for="DoctorExpTb">Experience</label>
    <input type="text" class="form-control" id="DoctorExpTb" runat="server"/>
 </div>
   <div class="mb-3">
    <label for="SpecialisationTb">Specialisation</label>
    <input type="text" class="form-control" id="SpecialisationTb" runat="server"/>
 </div>
  <div class="mb-3">
    <label for="PasswordTb">Password</label>
    <input type="text" class="form-control" id="Passwordtb" runat="server"/>
  </div>
  <div class="mb-3">
    <label for="GenderCb">Gender</label>
      <asp:DropDownList ID="GenderCb" runat="server" class="form-control">
          <asp:ListItem>Male</asp:ListItem>
          <asp:ListItem>FeMale</asp:ListItem>
      </asp:DropDownList>
    
  </div>
    <div class="mb-3">
    <label for="AddressTb">Adddress</label>
    <input type="text" class="form-control" id="AddressTb" runat="server"/>
  </div>
    <div class="mb-3">
    <label for="DOBTb">Date of Birth</label>
    <input type="Date" class="form-control" id="DOBTb" runat="server"/>
  </div>
  <div class="mb-3"><label for="EmailTb">Email</label>
    <input type="Email" class="form-control" id="EmailTb" runat="server"/>
  </div>
 
  <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
  <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click" /> 
  <asp:Button ID="AddBtn" runat="server" Text="Save" class="btn btn-primary" OnClick="AddBtn_Click" /> 
  <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger" OnClick="DeleteBtn_Click" /> 
</form>
            </div>
            <div class="col-md-8">
                <div class="row">
                <div class="col">
                    <img src="../../Assets/Images/Doctors.jpg" height="300px" width="100%" class="rounded-3" />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h1>Doctor Details</h1>
                    <asp:GridView ID="DoctorsGV" class="table table-hover" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="DoctorsGV_SelectedIndexChanged">
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
