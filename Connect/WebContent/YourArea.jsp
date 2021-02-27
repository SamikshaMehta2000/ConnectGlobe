<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<link href="Style.css" rel="stylesheet" type="text/css" media="screen" />
		
		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		
		<script type="text/javascript">
			$( "section.aw-accordion div" ).mouseover(function() {
				  $(this).css('width','50%');
				  $(this).siblings('div').css('width','14%');
				});
		</script>
		<title>Connect Globe</title>
	</head>
	
<body>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript">
		$( "section.aw-accordion div" ).mouseover(function() {
			  $(this).css('width','50%');
			  $(this).siblings('div').css('width','14%');
			});
</script>
 
<section class="aw-accordion">
		<img  id="logo" alt="" src="https://th.bing.com/th/id/OIP.7gWiYfwII2mtyWMGkrRS7AHaHa?w=202&h=202&c=7&o=5&pid=1.7">
    		<h1>CONNECT GLOBE <a href="Register.jsp" class="read-article" id="login">REGISTER NOW</a></h1>
    		
    <div id="nav" class="read-article">
			  <ul>
				    <li><a href="Index.jsp" style="margin-left: -31px;">HOME</a></li>
				    <li><a href="ViewStatus.jsp">VIEW STATUS</a></li>
				    <li><a href="YourArea.jsp" style="color:white;">YOUR AREA</a></li>
				    <li><a href="HomeDiscuss.jsp">DISCUSS</a></li>
				    <li><a href="Contactus.jsp">CONTACT US</a></li>
				    <li><a href="Admin.jsp">ADMIN</a></li>
			   
			  </ul>
    </div>
   
<div id="top">
   <div class="one">
        <h1>Cyberbullying</h1>
        <span>
	        <img src="https://th.bing.com/th/id/OIP.4CWfqaaXqUaGjYdzujk29gHaE7?w=234&h=180&c=7&o=5&pid=1.7">In today's world which has been made smaller by technology, new age problems have been born. No doubt technology has a lot of benefits; however, it also comes with a negative side. It has given birth to cyberbullying. To put it simply, cyberbullying refers to the misuse of information technology with the intention to harass others.
	        Subsequently, cyberbullying comes in various forms. It doesn’t necessarily mean hacking someone's profiles or posing to be someone else. It also includes posting negative comments about somebody or spreading rumors to defame someone. As everyone is caught up on the social network, it makes it very easy for anyone to misuse this access.
			In other words, cyberbullying has become very common nowadays. It includes actions to manipulate, harass and defame any person. These hostile actions are seriously damaging and can affect anyone easily and gravely. They take place on social media, public forums, and other online information websites. A cyberbully is not necessarily a stranger; it may also be someone you know.
        </span>
    </div>

    <div class="two">
        <h1>Scams</h1>
        <span>
        	<img src="https://th.bing.com/th/id/OIP.cagxL6ahi2sliN-8hPQdKAHaEK?w=272&h=180&c=7&o=5&pid=1.7">A scam is a term used to describe any fraudulent business or scheme that takes money or other goods from an unsuspecting person. With the world becoming more connected thanks to the Internet, online scams have increased, and it's often up to you to help stay cautious with people on the Internet.
        </span>
    </div>

    <div class="three">
        <h1>Hacking</h1>
        <span>
	        <img src="https://th.bing.com/th/id/OIP.EhFgdU2ozfg7ZqLppSUNagHaEe?w=271&h=180&c=7&o=5&pid=1.7">Hacking is the activity of identifying weaknesses in a computer system or a network to exploit the security to gain access to personal data or business data. An example of computer hacking can be: using a password cracking algorithm to gain access to a computer system.
			Computers have become mandatory to run a successful businesses. It is not enough to have isolated computers systems; they need to be networked to facilitate communication with external businesses. This exposes them to the outside world and hacking. System hacking means using computers to commit fraudulent acts such as fraud, privacy invasion, stealing corporate/personal data, etc. Cyber crimes cost many organizations millions of dollars every year. Businesses need to protect themselves against such attacks.
		</span>
    </div>
     
    <div class="four" style="  background-color:#9ea036;"> 
        <h1>Identity theft</h1>
        <span>
	        <img src="https://th.bing.com/th/id/OIP.CHj-ZsLoinSIKs_cB_X0jAHaEI?w=289&h=180&c=7&o=5&pid=1.7">Identity theft is the crime of obtaining the personal or financial information of another person to use their identity to commit fraud, such as making unauthorized transactions or purchases. Identity theft is committed in many different ways and its victims are typically left with damage to their credit, finances, and reputation.
			Identity theft occurs when someone steals your personal information—such as your Social Security number, bank account number, and credit card information. Identity theft can be committed in many different ways. Some identity thieves sift through trash bins looking for bank account and credit card statements. More high-tech methods involve accessing corporate databases to steal lists of customer information. Once identity thieves have the information they are looking for, they can ruin a person's credit rating and the standing of other personal information.
			Identity thieves increasingly use computer technology to obtain other people's personal information for identity fraud. To find such information, they may search the hard drives of stolen or discarded computers; hack into computers or computer networks; access computer-based public records; use information-gathering malware to infect computers; browse social networking sites; or use deceptive emails or text messages.
		</span> 
	</div>
</div>
    
    
<div id="basic">
		<h1 style="font-size:18px;position:relative;top:33px;">
		You can search reports posted around the globe here. Just type the name of the country you want to see reports for. 
 		 <p> If you want to report about some cyber threat you're facing register yourself and post your report.</p></h1></div>
 
<div id="container" style="position: relative;top: 194px;">
 		<h1><font color="white"><center>POSTED REPORTS:</center></font></h1>
    <br/>
        <center>
	          <form action="#" id="loginform">
	          <table>
	          <tr><td>Enter Country:</td><td><input type="text" id="country"/>
	          </td></tr>
	          </table>
	          </form>
        </center>
          
 <div id="location"></div>

<script type="text/javascript">
				  $(document).ready(function(){
					  setTimeout( function(){$('#fade').hide();} , 4000);
				 
					  $("#country").on("keyup",function(){
						  $.get("FindCountry.jsp",{val:$("#country").val()},function(data){
							  $("#location").html(data);
						  });
					  });
				  });
				  
				  
</script>
				
<div id="footer">
		<p style="color:#191d21;position:relative;bottom: -333px;">created by SAMIKSHA </p>
</div> 
 


</div>
</section>
</body>
</html>