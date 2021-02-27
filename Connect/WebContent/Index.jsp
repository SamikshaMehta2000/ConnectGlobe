<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!--  FOR ADMIN LOGIN: 
          username: admin
          password: admin123
    -->
<!DOCTYPE html>
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
			    <%
			      if(request.getAttribute("regsuccess")!=null){
			    	  out.print("<font color='#c9d6e2'>"+request.getAttribute("regsuccess")+"</font>");
			      }
			    if(request.getAttribute("success")!=null){
			    	out.print("<font color='#c9d6e2'>"+request.getAttribute("success")+"</font>");
			    }
			    %>
  
  <div id="nav" class="read-article">
      <ul>
		    <li><a href="Index.jsp" style="color:white;margin-left: -31px;">HOME</a></li>
		    <li><a href="ViewStatus.jsp">VIEW STATUS</a></li>
		    <li><a href="YourArea.jsp">YOUR AREA</a></li>
		    <li><a href="HomeDiscuss.jsp">DISCUSS</a></li>
		    <li><a href="Contactus.jsp">CONTACT US</a></li>
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
  
<div id="basic">
		<h1 style="font-size:18px;position:relative;top:33px;">
  			 <P>
 				Cyberbullying is bullying with the use of digital technologies. It can take place on social media, messaging platforms, gaming platforms and mobile phones. 
 				It is repeated behaviour, aimed at scaring, angering or shaming those who are targeted. 
 		    </P>
             <p>
                 When bullying happens online it can feel as if you're being attacked everywhere, even inside your own home.
                  It can seem like there's no escape. The effects can last a long time and affect a person in many ways:
		  <ul>
  
  				<li>
 					<strong>Mentally - </strong> 
 					feeling upset, embarrassed, stupid, even angry 
 				</li>
  
  				<li>
 					<strong>Emotionally - </strong>
 					 feeling ashamed or losing interest in the things you love
 			   </li>
  
                <li>
 					<strong>Physically - </strong>
 					  tired (loss of sleep), or experiencing symptoms like stomach aches and headaches 
 			   </li>
  
  		</ul>
  
  			</p>
  						You can Share Your Social Problem such as some kind of Harassment,Bribe matters.
								Simply just Register Yourself and Do login After that click on Post Report Link as shown above.And After selecting Your subject and location YOu can post Your matter . This will be visible to every visitors and our Supporters will try to proceed it further
		</h1>
	</div>
   
    <div id="middle" style="top:413px">
    		<div id="loginform">
    			<form action="Loginprocess.jsp">
    				<table>
		    	<%
		    	if(request.getAttribute("notlogin_msg")!=null){
		    		out.print("<font color='orange' id='fades' >"+request.getAttribute("notlogin_msg")+"</font>");
		    	}
		    	if(request.getAttribute("error")!=null){
		    		out.print("<font color='orange' id='fades' >"+request.getAttribute("error")+"</font>");
		    	}
		         if(request.getAttribute("loginToCmt")!=null){
		        	 out.print("<font color='orange' id='fades' >"+request.getAttribute("loginToCmt")+"</font>");
		         }
		    	%>
    	<tr>
    		<td><div id="log">
    			<img id="logimg" style="border-radius: 20px" src="image/log.jpg">
    			<h1 style="color:white;padding-left:60px;position: relative;left:28px">
    				<font color="white" style="position: relative;top: 17px;">
    						LOGIN
    			   </font>
    			</h1>
    		  </div>
    	  </td>
     </tr>
    
      <tr>
      	<td>
    		<br/>
    	</td>
    </tr>
    
    <tr>
    	<td>ID</td>
   	    <td><input type="text" name="username"/></td>
   </tr>
    	
    <tr>
    	<td><br></td>
    </tr>
    
    <tr>
    	<td>PASSWORD:</td>
    	<td><input type="password" name="password"/></td>
    </tr>
    	
    <tr><td><br/></td>
    </tr>
    	
    <tr>
    	<td><input type="submit" value="login" class="btn" class="read-article" style="position: relative;top:-13px;"/>
    		<a href="Register.jsp" >
    				<font color="white" style="position:relative;left:3px" id="newuser">new User?</font>
    		</a></td>
        <td><a href="Forgot.jsp" >
        			<font color="white" id="newuser" >Forgot Password</font>
        	</a>&nbsp;&nbsp;
        	<a href="Admin.jsp" >
        			<font color="white" id="newuser" class="forgot" style="position: relative;top: -7px;">
        					Administrator Login
        			 </font>
            </a>
        </td>
   </tr>
 
  </table>
</form> 
      <br/>
 </div>
    
    <div id="leftline" style="left:390px"></div>
    
    <!-- LATEST NEWS -->
    	<div id="latestNews" style="left: 462px">
   				 <img id="newslogo" alt="" src="https://th.bing.com/th/id/OIP.1ky72N5qD59pNfdd9MJSZQHaGf?w=144&h=144&c=7&o=5&pid=1.7">
    			<h1 style="color:white;" >
    					<font color="white" style="postion:relative;top:19px; " id="ln">
    					LATEST NEWS</font>
    			</h1>
   
   <div class="two" style="left: 0px;top: 24px;width: 178px;background-color:#3d495e">

        <span>
	        <ul id="latest" style="list-style: none;">
		        <li><a   target="_blank" href="https://www.ndtv.com/education/sensitise-students-parents-about-cyber-threats-online-bullying-delhi-government-schools"><img alt="" src="https://www.ndtv.com/education/cache-static/media/presets/625X400/article_images/2021/2/23/boy-child-mobile-edtech-shutterstock.webp"></a></li>
		       
		        <li><a   target="_blank" href="https://www.newindianexpress.com/cities/delhi/2021/feb/23/guidelines-issued-to-sensitise-students-about-cyber-bullying-2267716.html"><img alt="" src="https://images.newindianexpress.com/uploads/user/imagelibrary/2021/2/23/w900X450/Guidelines_.jpg"></a></li>
		        <li><a   target="_blank" href="https://northglennews.co.za/261162/how-to-handle-cyberbullying/"><img alt="" src="https://www.bing.com/th?id=OVFT.B9k2YA2aijktRLs876s6iy&pid=News&w=234&h=132&c=14&rs=2&qlt=90"></a></li>
	        </ul>
        </span>
    </div>
  </div>
   <div id="footer" style="color:#191d21;position:relative;bottom: 22px;">
		<p >created by SAMIKSHA </p>
</div>
</div> 
  
</section>
			
		
  
  
</body>
</html>