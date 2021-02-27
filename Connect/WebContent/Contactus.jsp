<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
		<head>
			<meta charset="ISO-8859-1">

			<link href="Style.css" rel="stylesheet" type="text/css" media="screen" />

			<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>


		<script type="text/javascript">
					$( "section.aw-accordion div" ).mouseover(function() 
							{
									  $(this).css('width','50%');
									  $(this).siblings('div').css('width','14%');
						}
					);
		</script>
			<title>Connect Globe</title>
</head>

<!-- BODY -->
<body>

<section class="aw-accordion">
				<img  id="logo" alt="" src="https://th.bing.com/th/id/OIP.7gWiYfwII2mtyWMGkrRS7AHaHa?w=202&h=202&c=7&o=5&pid=1.7">
   		   <h1>
   				 CONNECT GLOBE
    			<a href="Register.jsp" class="read-article" id="login">
    					REGISTER NOW
    					</a>
    	 </h1>
			  
  
  <div id="nav" class="read-article">
      <ul>
		    <li><a href="Index.jsp" style="margin-left: -31px;">HOME</a></li>
		    <li><a href="ViewStatus.jsp">VIEW STATUS</a></li>
		    <li><a href="YourArea.jsp">YOUR AREA</a></li>
		    <li><a href="HomeDiscuss.jsp">DISCUSS</a></li>
		    <li><a href="Contactus.jsp" style="color:white;">CONTACT US</a></li>
		    <li><a href="Admin.jsp">ADMIN</a></li>
    </ul>
 </div>
    
<div id="top">
    
    <div class="one">
        
        	<h1>Cyberbullying</h1>
       
        <span>
        		<img src="https://th.bing.com/th/id/OIP.4CWfqaaXqUaGjYdzujk29gHaE7?w=234&h=180&c=7&o=5&pid=1.7">
        				In today's world which has been made smaller by technology, new age problems have been born. No doubt technology has a lot of benefits; however, it also comes with a negative side. It has given birth to cyberbullying. To put it simply, cyberbullying refers to the misuse of information technology with the intention to harass others.
        			Subsequently, cyberbullying comes in various forms. It doesn’t necessarily mean hacking someone's profiles or posing to be someone else. It also includes posting negative comments about somebody or spreading rumors to defame someone. As everyone is caught up on the social network, it makes it very easy for anyone to misuse this access.
					In other words, cyberbullying has become very common nowadays. It includes actions to manipulate, harass and defame any person. These hostile actions are seriously damaging and can affect anyone easily and gravely. They take place on social media, public forums, and other online information websites. A cyberbully is not necessarily a stranger; it may also be someone you know.
       </span>
   </div>

  <div class="two">
        	<h1>Scams</h1>
       
       <span>
       		<img src="https://th.bing.com/th/id/OIP.cagxL6ahi2sliN-8hPQdKAHaEK?w=272&h=180&c=7&o=5&pid=1.7">
       				A scam is a term used to describe any fraudulent business or scheme that takes money or other goods from an unsuspecting person. 
       				With the world becoming more connected thanks to the Internet, online scams have increased, and it's often up to you to help stay cautious with people on the Internet.			
      </span>
  </div>

 <div class="three">
       	 <h1>Hacking</h1>
        
        <span>
        		<img src="https://th.bing.com/th/id/OIP.EhFgdU2ozfg7ZqLppSUNagHaEe?w=271&h=180&c=7&o=5&pid=1.7">
        			Hacking is the activity of identifying weaknesses in a computer system or a network to exploit the security to gain access to personal data or business data. An example of computer hacking can be: using a password cracking algorithm to gain access to a computer system.
					Computers have become mandatory to run a successful businesses. It is not enough to have isolated computers systems; they need to be networked to facilitate communication with external businesses. This exposes them to the outside world and hacking. System hacking means using computers to commit fraudulent acts such as fraud, privacy invasion, stealing corporate/personal data, etc. Cyber crimes cost many organizations millions of dollars every year. Businesses need to protect themselves against such attacks.</span>
   </div>
     
   <div class="four"  style="  background-color:#9ea036;"> 
      	 	 <h1>Identity theft</h1>
      
      <span>
      		<img src="https://th.bing.com/th/id/OIP.CHj-ZsLoinSIKs_cB_X0jAHaEI?w=289&h=180&c=7&o=5&pid=1.7">
      				Identity theft is the crime of obtaining the personal or financial information of another person to use their identity to commit fraud, such as making unauthorized transactions or purchases. Identity theft is committed in many different ways and its victims are typically left with damage to their credit, finances, and reputation.
					Identity theft occurs when someone steals your personal information—such as your Social Security number, bank account number, and credit card information. Identity theft can be committed in many different ways. Some identity thieves sift through trash bins looking for bank account and credit card statements. More high-tech methods involve accessing corporate databases to steal lists of customer information. Once identity thieves have the information they are looking for, they can ruin a person's credit rating and the standing of other personal information.
					Identity thieves increasingly use computer technology to obtain other people's personal information for identity fraud. To find such information, they may search the hard drives of stolen or discarded computers; hack into computers or computer networks; access computer-based public records; use information-gathering malware to infect computers; browse social networking sites; or use deceptive emails or text messages.1
	</span>
  </div>
</div>
    
    <div id="middle" style="top:19px;left:22px;">
    		<div id="loginform" style="color:#c9d6e2;" >
    			<form action="Contactusprocess.jsp">
    				<table style="color:#c9d6e2;position:relative;left:122px">
		    	<%
		    	if(request.getAttribute("error")!=null){
		    		out.print("<font color='orange' id='fades' >"+request.getAttribute("error")+"</font>");
		    	}
		    	if(request.getAttribute("success")!=null){
		    		out.print("<font color='orange' id='fades' >"+request.getAttribute("success")+"</font>");
		    	}
		         
		    	%>
    	<tr>
    		<td><div id="log" >
    			<h1 style="color:white;padding-left:60px;position: relative;left:28px">
    				<font color="white" style="position: relative;top: 17px;">
    						Contact Us
    			   </font>
    			</h1>
    		  </div>
    	  </td>
     </tr>
    
      <tr>
      	<td>
    		<br/>
    		<div id="invalidemail"></div>
    	</td>
    </tr>
    
    <tr>
    	<td>Email</td>
   	    <td><input type="text" id="email" name="email"/></td>
   </tr>
    	
    <tr>
    	<td><br></td>
    </tr>
    
    <tr>
    	<td>Message:</td>
    	<td><textarea rows="3" cols="50" name="msg" style="background-color:#90a4ae"></textarea></td>
    </tr>
    	
    <tr><td><br/></td>
    </tr>
    	
    <tr>
    	<td><input type="submit" value="Submit" class="btn" id="submit" class="read-article" style="position: relative;top:-13px;"/>
    		</td>
   </tr>
 
  </table>
</form> 
      <br/>
 </div>
  <div id="footer" style="color:#191d21;position:relative;top:333px;">
		<p >created by SAMIKSHA </p>
</div>
</div> 

</section>
			<br/>
		
 
  
  
  <script type="text/javascript">
  			//email validation
  				
  			$(document).ready(function(){
   						$("#submit").click(function(){
   							var emailreg=/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
   							if(!emailreg.test($("#email").val())){
   							
   								$("#invalidemail").html("<font color='orange' size='2'>*please enter a valid email</font>");
   								return false;
   							}
   						});
   					});
  </script>
</body>
</html>