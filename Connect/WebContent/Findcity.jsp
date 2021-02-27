<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
 
 	<%
 	String city=(String)request.getParameter("city");
 	String email=(String)session.getAttribute("email");
 	if(city.length()>0){
 		try{
 			Class.forName("com.mysql.cj.jdbc.Driver");
 			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
 			PreparedStatement ps=con.prepareStatement("select country from forumrep where email='"+email+"'");
 			ResultSet rs=ps.executeQuery();
 			rs.next();
 			String country=rs.getString("country");
 			  PreparedStatement p=con.prepareStatement("select * from forumrep where country='"+country+"' and state like '%"+city+"%'");
 			  ResultSet r=p.executeQuery();
 			 out.print("<div id='postedmain' style='width:801px;'>");
 			  while(r.next()){
 				 out.print("<div id='posteditem' class='thiss' style='margin:6px 0px;border-radius:14px' onhover=''>");
					out.print("<font   style='display:inline-block'><b><h1>Country:</h1></b></font>&nbsp;");
					out.print("<font color='#c9d6e2' class='item' >");
					out.print(r.getString("country")+"</font>");
				 out.print("<br>");
				
				out.print("<font><h1 style='display:inline-block'>State:</h1>&nbsp;</font>");
				out.print("<font class='item'>"+r.getString("state")+"</font>");
				out.print("<br>");
				
				out.print("<font ><h1 style='display:inline-block'>District:</h1></font>&nbsp;");
				out.print("<font class='item'>"+r.getString("district")+"</font>");
				out.print("<br>");
				
				out.print("<font><h1 style='display:inline-block'>Police Station:</h1></font>&nbsp;");
				out.print("<font class='item'>"+r.getString("police_station")+"</font>");
				out.print("<br>");
				
				out.print("<h1 style='display:inline-block'>Report:</h1>&nbsp;<br>");
				out.print("<font class='item'>"+r.getString("report")+"</font>");
				out.print("<br>");
			
				out.print("<h1 style='display:inline-block'>Status:</h1>&nbsp;");
				out.print("<font class='item'>"+r.getString("status")+"</font>");
				out.print("<br>");
				
				out.print("<font><h1 style='display:inline-block'>Email:</h1></font>&nbsp;");
				out.print("<font class='item'>"+r.getString("email")+"</font>");
				out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
				out.print("<h1 style='display:inline-block'>Posted on:</h1>&nbsp;");
				out.print("<font class='item'>"+r.getString("postedon")+"</font>");
				
				out.print("</div>");
 			  }
 			  out.print("</div>");
 		}catch(Exception e){
 			e.printStackTrace();
 		}
 	}
      %>