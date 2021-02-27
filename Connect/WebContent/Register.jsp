<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<meta charset="ISO-8859-1">
			<link rel="stylesheet" href="Style.css">
			<title>Register</title>
	</head>

	<jsp:include page="Header.jsp"></jsp:include>
  
<div id="basic">
		<h1 style="font-size:18px;position:relative;top:33px;">
		Please enter all the details below and register yourself.
		  <br>After registeration you can login to your account.
		  </h1>
</div>
   
 <div id="middle">
   
    <div id="loginform" style="display:inline-block;">
    	<form action="Registerprocess.jsp" method="post">
    		<table style="display: inline-block;">
    		
    	<tr>
	    	<td><div id="log" style="position: relative;top:-38px;left:-28px">
	    	<img id="logimg" style="border-radius: 20px;position:relative;right:30px;" src="image/log.jpg">
	    	<h1 style="color:white;padding-left:50px;position: relative;left:28px">
	    		<font color="white" style="position: relative;top: 17px;left:21px">REGISTER</font>
	    	</h1></div></td>
       </tr>
    	
    	<tr>
    	<td>
    	
    		<br>
   <div id="reqid" >
    	  <%
    	     if(request.getAttribute("regerror")!=null){
    	    	 out.print("<font color='orange' size='2'>"+request.getAttribute("regerror")+"</font>");
    	     }
    	  %>
    	  
     </div> 
    	</td>
    </tr>
    	
    	<tr>
	    	<td>ID</td>
	    	<td><input type="text"  id="user" name="username"></td>
    	</tr>
    	
    	<tr>
	    	<td><br>
	    	<div id="reqpassword"></div></td>
    	</tr>
    	
    	<tr>
	    	<td>Password:</td>
	    	<td><input  name="password" type="password" id="password"></td>
    	</tr>
    	
    	<tr>
	    	<td><br>
	    	<div id="passmsg"></div>
	    	</td>
    	</tr>
    	
    	<tr>
    	<td>Confirm Password:</td>
	    	<td><input type="password" name="confirm" id="confirm">
	    	</td>
    	</tr>
    	
    	<tr>
	    	<td><br>
	    	<div id="reqemail"></div></td>
    	</tr>
    	
    	<tr>
	    	<td>E-mail:</td>
	    	<td><input type="text" id="email" name="email"></td>
    	</tr>
    	
    	<tr><td><br></td></tr>
    	
    	<tr>
	    	<td>Mobile:</td>
	    	<td><input type="text" name="mobile" id="mobile"></td>
    	</tr>
    	
    	<tr><td><br></td></tr>
    	
    	<tr>
	    	<td>Address:</td>
	    	<td><input type="text" name="address" id="address"></td>
    	</tr>
    	
    	<tr><td><br></td></tr>
    	
    	<tr>
    		<td><input type="submit"   value="Register" class="btn" class="read-article" style="position: relative;top:-9px;" id="submit"></td>
    	</tr>
 
   </table>
  </form>
    	<br>
    	
</div>
    
<div id="recentdiscovery" style="top:-426px">
    	
       <div class="three" style="background-color:#34495e">
        
        <span>
	         <h2> why us?</h2>
	         <p>
	         A cyber or cybersecurity threat is a malicious act that seeks to damage data, steal data, or disrupt digital life in general. Cyber threats include computer viruses, data breaches, Denial of Service (DoS) attacks and other attack vectors.
	        </p>
	        <p>Cyberbullying is also one of the most common cyber threats which should be taken seriously.It can damage you both physically and  mentally. It is very important to report these events to save you and others. We're here for just that, if you are facing any cyber threat please register yourself and post a report to your nearest police station our team will contact you as soon as your po</p>
        </span>
    </div>
</div>
 
  <jsp:include page="Footer.jsp"></jsp:include>
  
  <!--     CONFIRM PASSWORD CODE -->
  <script type="text/javascript">
	   $(document).ready(function(){
		  $("#confirm").on("keyup",function(){
				 if($("#password").val()==$("#confirm").val()){
					$("#passmsg").hide();
				 }else{
					 $("#passmsg").show();
					 $("#passmsg").html("<font color='orange' size='2'>*passwords do not match</font>");
				 } });
	   });
   
   
   // REQUIRED FIELD CODE
                       var error=0;
   					$(document).ready(function(){
   						$("#submit").click(function(){
   						
   							if($("#user").val()==""){
   								error=1;
   								$("#reqid").html("<font color='orange' size='2'>*requierd</font>");
   							
   							}
   							if($("#password").val()==""){
   								error=1;
   								$("#reqpassword,#passmsg").html("<font color='orange' size='2'>*requierd</font>")
   							}
   							if($("#email").val()==""){
   								error=1;
   								$("#reqemail").html("<font color='orange' size='2'>*requierd</font>")
   							}
   							if(error>0){
   								return false;
   							}else{
   								return true;
   							}
   						})
   					});
   					
   					
   					//	 EMAIL VALIDATION
   					//regex.test(value)
   					
   					$(document).ready(function(){
   						$("#submit").click(function(){
   							var emailreg=/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
   							if(!emailreg.test($("#email").val())){
   							
   								$("#reqemail").html("<font color='orange' size='2'>*please enter a valid email</font>");
   								return false;
   							}
   						});
   					});
   					
   					
   					//CHECK IF THE VALUE ALREADY EXISTS FOR NAME AND EMAIL
   					
   					
   					//CHECK FOR NAME
   					$(document).ready(function(){
   						$("#user").on("blur",function(){
   							$.get("Findname.jsp",{username:$("#user").val()},function(data){
   								$("#reqid").html(data);
   							})
   						});
   					});
   					
   					//CHECK FOR EMAIL
   					$(document).ready(function(){
   						$("#email").on("blur",function(){
   						
   							$.get("Findname1.jsp",{email:$("#email").val()},function(d){
   								$("#reqemail").html(d);
   							})
   						});
   					});
   					
	</script>
	</div>

</body>
</html>