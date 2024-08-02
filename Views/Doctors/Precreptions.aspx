<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Doctors/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="Precreptions.aspx.cs" Inherits="EHospitalMS.Views.Doctors.Precreptions" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
 <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                 <h2>Prescription  Detail</h2>
                <br /><br /><br />
   <form>
  <div class="mb-3">
    <label for="Patientcb">PatientNM</label>
     <asp:DropDownList ID="Patientcb" runat="server" class="form-control">
      
     </asp:DropDownList>
  </div>
  <div class="mb-3">
    <label for="MedicineTb">Medicines</label>
    <input type="text" class="form-control" id="MedicineTb" runat="server"/>
 
  </div> 
   <div class="mb-3">
    <label for="Testcb">LabTest</label>
    <asp:DropDownList ID="Testcb" runat="server" class="form-control">
      
     </asp:DropDownList>
 </div>
   <div class="mb-3">
    <label for="CostTb">Medicine Cost</label>
    <input type="text" class="form-control" id="CostTb" runat="server"/>
 </div>
       <div class="mb-3">
    <label for="QuantTb">Quantity</label>
    <input type="text" class="form-control" id="QuantTb" runat="server"/>
 
  </div> 
        <div class="mb-3">
    <label for="DoccostTb">Doctor Cost</label>
    <input type="text" class="form-control" id="DoccostTb" runat="server"/>
 
  </div> 
 <div class="d-grid">
  <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
 
  <asp:Button ID="AddBtn" runat="server" Text="Save Precription" class="btn btn-warning btn-block text-white" OnClick="AddBtn_Click" /> 
  <asp:Button ID="DeleteBtn" runat="server" Text=" Delete Prescription " class="btn btn-danger btn-block text-white" OnClick="DeleteBtn_Click"/> 
  </div> 
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
                    <h1>Prescription Details</h1>
                    <asp:GridView ID="PrescriptionGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None">
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
