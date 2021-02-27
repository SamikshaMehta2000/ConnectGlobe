<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	 		<link rel="stylesheet"  href="Style.css">
			<meta charset="ISO-8859-1">
			<title>Forgot Password</title>
	</head>
<body>
 
 <jsp:include page="Header.jsp"></jsp:include>
 			  
<div id="middle" style="top:5px">
	    	<%   
	    		if(request.getAttribute("error")!=null){
	    			out.print("<font color='orange' id='a' style='position:relative;top:52px'>");
	    			out.print(request.getAttribute("error"));
	    			out.print("</font>");
	    		}
	    	%>
    <div id="loginform">
   	
   	<div id='log' style='position: relative;top:-38px'>
  	 	<h1 style='color:white;padding-left:60px;position: relative;left:28px;top:66px'>
   		<font color='white' style='position: relative;top: 17px;'>RESET PASSWORD</font></h1></div>
   		
   		<form action='ResetProcess.jsp' method='post'>
   			<table id='reset' style="position: relative;top:81px;">
   				<tr>
   					<td>id:</td>
   					<td><input type="text" name="username" id="username"></td>
   			   </tr>
   			   
   			   <tr>
   			   		<td><br><div id="sameold" ><font color="orange" size="2">
				   <%
				   if(request.getAttribute("repeated")!=null){
					   out.print(request.getAttribute("repeated"));
				   }
				   %>
   
  						 </font></div></td>
  			</tr>
   	
   	        <tr>
   	        	<td>new password:</td>
   				<td><input type='text' name="newpass"   id='newpass'></td>
   			</tr>
   			
   			<tr>
   				<td><br><div id='loc'></div></td>
   			</tr>
   			
   			<tr>
   				<td>confirm password:</td>
   				<td>
   				<input name='con' type='text' id='con' onkeyup='confirmpass()' ></td>
   		   </tr>
   	
   		   <tr>
   		   	   <td><br></td>
   		   </tr>
   		   
   		   <tr>
   		     	<td><input type='submit' value='reset password' class='btn' class='read-article' style='position: relative;top:-13px;' id='check'></td>
   		  </tr>
  </table>
 </form>
		 <br>
    	<br>
</div>
    
 <div id="leftline" style="left:450px"></div>
    
    <!-- LATEST NEWS -->
   	 <div id="latestNews" style="left: 492px">
    		<img id="newslogo" alt="" src="https://th.bing.com/th/id/OIP.1ky72N5qD59pNfdd9MJSZQHaGf?w=144&h=144&c=7&o=5&pid=1.7">
    			<h1 style="color:white;" ><font color="white" style="postion:relative;top:19px; " id="ln">LATEST NEWS</font></h1>
    
 <div class="two" style="left: 0px;top: 24px;width: 178px;background-color:#3d495e">
				 <span >
       				 <ul id="latest" style="list-style: none;">
				        <li><a   target="_blank" href="https://www.ndtv.com/education/sensitise-students-parents-about-cyber-threats-online-bullying-delhi-government-schools"><img alt="" src="https://www.ndtv.com/education/cache-static/media/presets/625X400/article_images/2021/2/23/boy-child-mobile-edtech-shutterstock.webp"></a></li>
				        <li><a   target="_blank" href="https://www.newindianexpress.com/cities/delhi/2021/feb/23/guidelines-issued-to-sensitise-students-about-cyber-bullying-2267716.html"><img alt="" src="https://images.newindianexpress.com/uploads/user/imagelibrary/2021/2/23/w900X450/Guidelines_.jpg"></a></li>
				        <li><a   target="_blank" href="https://northglennews.co.za/261162/how-to-handle-cyberbullying/"><img alt="" src="https://www.bing.com/th?id=OVFT.B9k2YA2aijktRLs876s6iy&pid=News&w=234&h=132&c=14&rs=2&qlt=90"></a></li>
				     </ul>
       		 </span>
  </div>
  
</div>
     
 <script type="text/javascript">
 		 
 		    // FOR CONFIRM PASS MATCH
 		  function confirmpass(){
 		    	
 			 if($("#con").val()!=$("#newpass").val()){
	    			$("#loc").html("<font color='orange' size='2'>*passwords do not match</font>")
	    		}else{
	    			$("#loc").html("");
	    		}
 		    }
 	 
</script>
  <jsp:include page="Footer.jsp"></jsp:include>
</div>

</body>
</html>