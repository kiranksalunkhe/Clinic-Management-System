<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="EHospitalMS.User_Appintment.Appointment" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div  style="background-image: url('../Assets/Images/Hospital.jpg'); height: 705px; font-family: 'Baskerville Old Face'; font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DOCTOR APPOINTMENT BOOKING
            <p><asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label>
            <input type="text" class="form-control" id="PatientNameTb" runat="server"/>
            </p>
        
            <asp:Label ID="Label2" runat="server" Text="Age">
            </asp:Label>
                 <input type="text" class="form-control" id="AgeTb" runat="server"/>
        
        <p>
            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
              <asp:DropDownList ID="GenderCb" runat="server">
          <asp:ListItem>Male</asp:ListItem>
          <asp:ListItem>FeMale</asp:ListItem>
      </asp:DropDownList></p>
            <p>
            <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
                 <input type="text" class="form-control" id="DepartmentTb" runat="server"/></p>
            <p>
            <asp:Label ID="Label5" runat="server" Text="Doctor Name"></asp:Label>
                 <input type="text" class="form-control" id="DoctorNameTb" runat="server"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p>
            <asp:Label ID="Label6" runat="server" Text="Date"></asp:Label>
                 <input type="text" class="form-control" id="DateTb" runat="server"/></p>
            <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book Appointment" BackColor="Black" ForeColor="White" />
            </p>
        
            <asp:Label ID="Label7" runat="server" Text="Message"></asp:Label>
            
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>&nbsp;</p>
        &nbsp;
    </div>
    </form>
</body>
</html>
