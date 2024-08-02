<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Pharmsist/PharmsistMaster.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="EHospitalMS.Views.Pharmsist.WebForm1" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
       function PrintPanel() {
            var PGrid = document.getElementById('<%=BillGV.ClientID %>');
            PGrid.border = 0;
            var Pwin = window.open('', 'PrintGrid', 'left=100,top=100,width=1024,height=768,tollbar=0,scrollbars=1,status=0,resizable=1');
            Pwin.document.write(PGrid.outerHTML);
            Pwin.document.close();
            Pwin.focus();
            Pwin.print();
            Pwin.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="row">
                    <div class="col">
                        <br />
                         <div class="mb-3">
                           <label for="MedNmTb">Medicine Name</label>
                           <input type="text" class="form-control" id="MedNmTb" runat="server" required="required"/>
                             <br />
                         </div>
                         
                          <div class="mb-3">
                           <label for="MedPrTb">Medicine Price</label>
                           <input type="text" class="form-control" id="MedPrTb" runat="server" required="required"/>
                            <br />
                         </div>
                         
                         <div class="mb-3">
                           <label for="MedQtyTb">Medicine Qty</label>
                           <input type="text" class="form-control" id="MedQtyTb" runat="server" required="required"/>
                             <br />
                         </div>
                         
                        <div class="mb-3">
                           <label for="MedDocTb">Doctor Cost</label>
                           <input type="text" class="form-control" id="MedDocTb" runat="server" required="required"/>
                             <br />
                         </div>


                </div>
                    <div class="col">
                        <img src="../../Assets/Images/download.png" height="200px" width="100%" class="rounded-3"/><br />
                        <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
                        <asp:Button ID="AddToBillBth" runat="server" Text="Add To Bill" class="btn btn-warning" OnClick="AddToBillBth_Click" /> 
                        <asp:Button ID="ResetBtn" runat="server" Text="Reset" class="btn btn-danger" /> 
                    </div>
            </div>
                
            <div class="row">
                <div class="col">
                   <asp:GridView ID="PrescriptionGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="PrescriptionGV_SelectedIndexChanged" Height="146px" Width="183px">
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
            
            <div class="col-md-7">
                <div class="row">
                    <div class="col-3"></div>
                    <div class="col"><h1 class="text-warning pl-2">Patient Billing</h1></div>
                </div>
                <div class="row">
                     <asp:GridView  ID="BillGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                <div class="row">
                    <div class="col"></div>
                    <div class="col"><h3 id="GrdTotTb" class="text-danger" runat="server"></h3></div>
                   
                    <div class="col d-grid"><asp:Button ID="PrintBtn" runat="server" Text="Print Bill" class="btn btn-warning btn-block text-white " OnClientClick="PrintPanel()" /> </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


