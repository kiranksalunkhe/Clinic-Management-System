<%@ Page Title="" Language="C#" MasterPageFile="~/User/Apoointment.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="EHospitalMS.User.WebForm1" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                 <h2>Appointment  Detail</h2>
                <form>
  <div class="mb-3">
    <label for="Appid">Appointmet ID</label>
    <input type="text" class="form-control" id="AppidTb" runat="server"/>
  
  </div>
  <div class="mb-3">
    <label for="PatNmTb">Patient No</label>
    <input type="text" class="form-control" id="PatNmTb" runat="server"/>
 
  </div> 
  
   <div class="mb-3">
    <label for="TreatTb">Treatement</label>
    <input type="text" class="form-control" id="TreatTb" runat="server"/>
 </div>
  <div class="mb-3">
    <label for="DateTb">Appointment Date</label>
    <input type="Date" class="form-control" id="Datetb" runat="server"/>
  </div>
  <div class="mb-3">
    <label for="Timecb">Appointment Time-Slot</label>
      <asp:DropDownList ID="Timecb" runat="server" class="form-control">
          <asp:ListItem>8-9</asp:ListItem>
          <asp:ListItem>9-10</asp:ListItem>
           <asp:ListItem>10-11</asp:ListItem>
          <asp:ListItem>11-12</asp:ListItem>
           <asp:ListItem>12-1</asp:ListItem>
          <asp:ListItem>4-5</asp:ListItem>
           <asp:ListItem>5-6</asp:ListItem>
          <asp:ListItem>6-7</asp:ListItem>
           <asp:ListItem>7-8</asp:ListItem>
          <asp:ListItem>8-9</asp:ListItem>
           <asp:ListItem>9-10</asp:ListItem>
      </asp:DropDownList>
    
  </div>
    <div class="mb-3">
    <label for="AddressTb">Adddress</label>
    <input type="text" class="form-control" id="AddressTb" runat="server"/>
  </div>
     <div class="mb-3">
    <label for="DocNmcb">Doctor Name</label>
      <asp:DropDownList ID="DocNmcb" runat="server" class="form-control">
          <asp:ListItem>Saumya</asp:ListItem>
          <asp:ListItem>Kiran</asp:ListItem>
           <asp:ListItem>Suresh</asp:ListItem>
          <asp:ListItem>Omkar</asp:ListItem>
           <asp:ListItem>Rohan</asp:ListItem>
          
      </asp:DropDownList>
    
  </div>
  <div class="mb-3">
    <label for="PatTb">Patient Name</label>
    <input type="text" class="form-control" id="patTb" runat="server"/>
 
  </div> 
  <div class="mb-3">
    <label for="TreatmentTb">Treatement Name</label>
    <input type="text" class="form-control" id="TreatmentTb" runat="server"/>
 
  </div> 
 
  <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
  
  <asp:Button ID="AddBtn" runat="server" Text="Book Appointment" class="btn btn-primary" OnClick="AddBtn_Click" /> 
  <asp:Button ID="DeleteBtn" runat="server" Text="Cancel Appointment" class="btn btn-danger" OnClick="DeleteBtn_Click" /> 
</form>
            </div>
            <div class="col-md-8">
                <div class="row">
                <div class="col">
                    <img src="../../Assets/Images/Hospital.jpg" height="300px" width="100%" class="rounded-3" />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h1>Appointment Details</h1>
                    <asp:GridView ID="AppointmentGV" class="table table-hover" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AppointmentGV_SelectedIndexChanged">
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
