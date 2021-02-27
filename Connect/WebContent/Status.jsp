<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
		     <link rel="stylesheet" href="Style.css">
		<meta charset="ISO-8859-1">
		<title>Home</title>
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
    <h1>CONNECT GLOBE
    <br>
    <%
    if(session.getAttribute("username")!=null){
    	out.print("<font color='#c9d6e2'> Welcome "+session.getAttribute("username")+" !</font>");
    }
    %>
    <%
    if(session.getAttribute("islogin")==null){
    	request.setAttribute("notlogin_msg", "please do login first");
    %>
    <jsp:forward page="Index.jsp"></jsp:forward>
    <%
    }
    %>
    <a href="Logout.jsp" class="read-article" id="login">LOGOUT</a></h1>
   
 <div id="nav" class="read-article">
    
    			<ul>
					<li><a href="Status.jsp" style="color:white">HOME</a></li>
					<li><a href="Post.jsp">POST REPORT</a></li>
					<li><a href="Area.jsp">YOUR AREA</a></li>
					<li><a href="Advice.jsp">YOUR ADVICE</a></li>
					<li><a href="Discuss.jsp">DISCUSS</a></li>
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
			Identity thieves increasingly use computer technology to obtain other people's personal information for identity fraud. To find such information, they may search the hard drives of stolen or discarded computers; hack into computers or computer networks; access computer-based public records; use information-gathering malware to infect computers; browse social networking sites; or use deceptive emails or text messages.1
		</span>
   </div>
</div>
    
<div id="basic">
	<h1 style="font-size:18px;position:relative;top:33px;">
		<p>You can post a report and give your adivce on existing reports.</p>
		<p>You can also create a new topic in Discuss section and give your advice on existing topics.</p><p>You can also browse through reports of specific city in your country.</p>
	</h1>
</div>
 
<div id="container" style="position: relative;top: 194px;">
 		<h1><font color="white"><center>POSTED REPORTS:</center></font></h1>
         <!--      CONNECTIVITY CODE	 -->
				  <%
				  String val;
				 try{
					 Class.forName("com.mysql.cj.jdbc.Driver");
					 Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
					 PreparedStatement ps=con.prepareStatement("select id,state,country,district,police_station,report,status,email,postedon from forumrep order by postedon desc");
					 ResultSet rs=ps.executeQuery();
					 out.print("<div id='postedmain' style='width:801px;'>");
					 while(rs.next()){
						 out.print("<div id='posteditem' class='thiss' style='margin:6px 0px;border-radius:14px' onhover=''>");
						out.print("<font   style='display:inline-block'><b><h1>Country:</h1></b></font>&nbsp;");
						out.print("<font color='#c9d6e2' class='item' >");
						out.print(rs.getString("country")+"</font>");
					 out.print("<br>");
					
					out.print("<font><h1 style='display:inline-block'>State:</h1>&nbsp;</font>");
					out.print("<font class='item'>"+rs.getString("state")+"</font>");
					out.print("<br>");
					
					out.print("<font ><h1 style='display:inline-block'>District:</h1></font>&nbsp;");
					out.print("<font class='item'>"+rs.getString("district")+"</font>");
					out.print("<br>");
					
					out.print("<font><h1 style='display:inline-block'>Police Station:</h1></font>&nbsp;");
					out.print("<font class='item'>"+rs.getString("police_station")+"</font>");
					out.print("<br>");
					
					out.print("<h1 style='display:inline-block'>Report:</h1>&nbsp;<br>");
					out.print("<font class='item'>"+rs.getString("report")+"</font>");
					out.print("<br>");
					val=rs.getString("id");
					out.print("<h1 style='display:inline-block'>Status:</h1>&nbsp;");
					out.print("<font class='item'>"+rs.getString("status")+"</font>");
					out.print("<br>");
					
					out.print("<font><h1 style='display:inline-block'>Email:</h1></font>&nbsp;");
					out.print("<font class='item'>"+rs.getString("email")+"</font>");
					out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
					out.print("<h1 style='display:inline-block'>Posted on:</h1>&nbsp;");
					out.print("<font class='item'>"+rs.getString("postedon")+"</font>");
					
					out.print("</div>");
					 }
					 con.close();
				 }catch(Exception e){
					 
					 e.printStackTrace();
				 }
				  out.print("</div>");
			
				  %>
 				 
		 <script type="text/javascript">
				  $(document).ready(function(){
					  setTimeout( function(){$('#fade').hide();} , 4000);
				  });
		 </script>
				
<div id="footer">
		<p style="color:#191d21;position:relative;bottom: -333px;">created by SAMIKSHA </p>
</div> 
 
 
</div>
</section>

</body>
</html>