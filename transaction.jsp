<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="css/userstyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@100;400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

.navbar
{
    width:100%;
    white-space:nowrap;
    background-color: #f44336;
}
.main_div
{
    width:100%;
    height:100vh;
 
}
   input
  {
      margin-top:10px;
      width:230px;
      height:40px;
      border-radius:5px;
      outline:none;
  }
 ::placeholder
 {
     padding:10px;
     color:orange;
 }
button
{
    color:#7A3DAF;
    background:white;
    border-color:#7A3DAF;
   padding: 14px 20px;
  cursor: pointer;
  width: 100%;
    
}
button:hover
 {
     color:white;
     background:#4CAF50;
     border:none;
     opacity:0.8;
 }


 </style>
</head>
<body>

<%

String msg = (String)request.getAttribute("msg");

if(msg != null)
	out.println("<center><font color=red>"+msg+"</font></center>");
%>


<form action="transfermethod2.jsp">
<div class="main_div">
 
     <div class="navbar navbar-expand-md">
   
    
      <button class="navbar-toggler text-white " type="button" data-toggle="collapse" data-target="#collapsenavbar">
      <span class="navbar-toggler-icon" style="background:white;"></span>
      </button>
     
       <div class="collapse navbar-collapse text-center" id="collapsenavbar">
          <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                  <a href="StartBanking.html" class="nav-link text-white">HOME</a></li>
              <li class="nav-item">
                  <a href="contactus.html" class="nav-link text-white">CONTACT</a></li>
              <li class="nav-item">
                  <a href="transfermoney" class="nav-link text-white"></a></li>
              <li class="nav-item">
                  <a href="#" class="nav-link text-white"></a></li>    
               </ul>
        </div>
     </div>


      <nav class="sp">
                   <center> <a href="index.html"><img src="images/banking-finance-logo-design18.jpg"></a></center>
                    </nav

     <div class="container">
        <div class="row">

          <div class="col-sm-4">
              <div class="card text-center" style="margin-top:76px;background-color:#f44336;border-radius:10px;color:white" >
              <form method="POST">  







               
                                              
 
                     
                    <div class="card-body">
                     
                    <h3>Sender's Details</h3>
                  

                        <label>Id</label>
                        <input type="text"  name="t1" value="" required placeholder="Enter your id"/><br><br>
                        <label>Name</label>
                      
                        <input type="text" name="email" value="" required placeholder="Enter your Name"/><br><br>
                        <label>Amount</label>
                        <input type="text" name="t2" value="" style="width:210px;" required placeholder="Enter amount"/><br><br>
                        <img src="images/10.png" style="width:130px;height:60px;">
                    </div>

               </div>
          </div>
           
          <div class="col-sm-4">
              <div class="card text-center" style="margin-top:60px;height:380px;">
                   <div class="card-body">
                   <img src="images/credit.jfif" style="width:250px;height:220px;margin-top:40px;">
                   <button name="b1" value="Proceed">Proceed to Pay</button>
                  </div>
             </div>
          </div>

          <div class="col-sm-4">
                <div class="card text-center" style="margin-top:76px;background-color:#f44336;border-radius:10px;color:white">
                   
                   <div class="card-body">
                   <h3>Receiver Details</h3>
                        <label>Id</label>
                        <input type="text"  name="p1" value="" required placeholder="Enter your id"/><br><br>
                        <label>Name</label>
                        <input type="text"  name="name2" value="" required placeholder="Enter your name"/><br><br>
                        
                 
                    <img src="images/10.png" style="width:130px;height:60px;">
                   </div>

               </div>
          </div>

       </div>
       
    </div>
</div>
</form> 
</body>
</html>