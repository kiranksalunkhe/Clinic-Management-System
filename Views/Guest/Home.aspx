<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EHospitalMS.Views.Guest.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Libs/Boostrap/css/bootstrap.min.css" />
</head>
<body>
    <!--<form id="form1" runat="server">
    <div>
    
    </div>
    </form>-->
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
  <a class="navbar-brand" href="#">Clinic</a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="">Doctors</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="">Labroterian</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="">Receiptionist</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="../../billing Module/Billing.aspx">Pharamsist</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="../../User/Appointment.aspx"> Book Appoinment</a>
      </li>
     
         <li class="nav-item">
        <a class="nav-link" href="../Login.aspx">Login</a>
      </li>
        </ul>
   
  </div>
 </div>
</nav>

    <div class="row" style="background-image:url(../../Assets/Images/h2.jpg); height:400px; background-size:cover">
        <div class="col-md-2">

        </div>
        <div class="col-md-5">
            <div class="row" style="height:100px">

            </div>
            <h2>Your Health is Our Only Priority</h2>
            <h2>Always Serving you And Taking Care</h2>
            <p class="h6">Our Clinic Has been Created in 2000 By a Group Of Persons who wanted</p> 
            <p class="h6"> really take care of the Health of the Population.</p> <br />
            <button class="btn btn-primary">Contact Us</button>
            <button class="btn btn-light border-primary text-primary">FeedBack</button>
        </div>

    </div>
    <div class="row bg-primary">
         <div class="row" style="height:20px"></div>
        <div class="row">
             <div class="col-md-3 bg-light offset-1 rounded-3">
          
           <div class="row">
               <div class="col-2">
                   <img src="../../Assets/Images/LabItem2.png" height="50%" width="180%" class="rounded-3" />
               </div>
               <div class="col-7">
                   <h5 class="text-center">Surgery</h5>
                   <p class="h6">The Clinic Has a Surgery Department with Highly Qualified Doctors.</p>
               </div>
           </div>
       </div>
       
        <div class="col-md-3 bg-light offset-1 rounded-3">
           <div class="row">
               <div class="col-2">
                   <img src="../../Assets/Images/LabItem2.png" height="50%" width="180%" class="rounded-3" />
               </div>
               <div class="col-7">
                   <h5 class="text-center">Urolory</h5>
                   <p class="h6">The Clinic Has a Surgery Department with Highly Qualified Doctors.</p>
               </div>
           </div>

        </div>
       
        <div class="col-md-3 bg-light offset-1 rounded-3">
           <div class="row">
               <div class="col-2">
                   <img src="../../Assets/Images/LabItem2.png" height="50%" width="180%" class="rounded-3" />
               </div>
               <div class="col-7">
                   <h5 class="text-center">Ophtalmology</h5>
                   <p class="h6">The Clinic Has a Surgery Department with Highly Qualified Doctors.</p>
               </div>
           </div>

        </div>

        </div>

      
         <div class="row" style="height:22px"></div>
       
     
       
    </div>
</div>
</body>
</html>
