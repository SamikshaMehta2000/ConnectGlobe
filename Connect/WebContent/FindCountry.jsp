<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
 <%
 
 String country=(String)request.getParameter("val");
				  String val;
				 try{
					 Class.forName("com.mysql.cj.jdbc.Driver");
					 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
					 PreparedStatement ps=conn.prepareStatement("select id,state,country,district,police_station,report,status,email,postedon from forumrep where country like '"+country+"%' order by postedon desc");
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
					out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
					out.print("<h1 style='display:inline-block'>Posted on:</h1>&nbsp;");
					out.print("<font class='item'>"+rs.getString("postedon")+"</font>");
					
					out.print("</div>");
					 }
					 conn.close();
				 }catch(Exception e){
					 
					 e.printStackTrace();
				 }
				  out.print("</div>");
			
				  %>