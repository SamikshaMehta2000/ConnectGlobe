<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
  <%
				  String val;
				 try{
					 Class.forName("com.mysql.cj.jdbc.Driver");
					 Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
					 PreparedStatement ps=con.prepareStatement("select id,topic,email,createdon from forumtpc order by createdon desc");
					 ResultSet rs=ps.executeQuery();
					 out.print("<div id='postedmain' style='width:801px;'>");
					 while(rs.next()){
						 int id=rs.getInt("id");
						
						 out.print("<div id='posteditem' class='thiss' style='margin:6px 0px;border-radius:14px' onhover=''>");
						out.print("<font   style='display:inline-block'><b><h1>Topic:</h1></b></font>&nbsp;");
						out.print("<font color='#c9d6e2' class='item' >");
						out.print(rs.getString("topic")+"</font>");
					 out.print("<br>");
					
					out.print("<font><h1 style='display:inline-block'>by:</h1>&nbsp;</font>");
					out.print("<font class='item'>"+rs.getString("email")+"</font>");
					out.print("<br>");
					
					
					out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
					out.print("<h1 style='display:inline-block'>Created on:</h1>&nbsp;");
					out.print("<font class='item'>"+rs.getString("createdon")+"</font>");
					  out.print("<br>");
					  
					  //statement to get max rid from table
					  ps=con.prepareStatement("select max(id) from forumtadvc where tid="+rs.getInt("id"));
					  ResultSet rs1=ps.executeQuery();
					  rs1.next();
					  int max=rs1.getInt(1);
					  
					  //find total comments related to a post
					  ps=con.prepareStatement("select count(id) from forumtadvc where tid="+rs.getInt("id"));
					  ResultSet rs2=ps.executeQuery();
					  rs2.next();
					  int count=rs2.getInt(1);
					  if(count>3){
						  out.print("<font color='orange' style='cursor:pointer;' onclick='viewAll("+id+")' name='"+id+"'>View all Comments</font>");
				
					    out.print("<br>");
					  }
					  
					  
					  ps=con.prepareStatement("select * from forumtadvc where tid="+rs.getInt("id")+" limit 3");
					  ResultSet r=ps.executeQuery();
					  out.print("<div id='"+rs.getString("id")+"'>");
					  while(r.next()){
						out.print("<br><font color='orange'>"+r.getString("email")+":</font>");
						out.print("<font color='#c9d6e2'>"+r.getString("cmt")+"</font>");
								}
					        out.print("</div>");
					  
					  //advice
					   if(request.getAttribute("error")!=null){
						   out.print("<font color='orange' size='2'>");
						   out.print(request.getAttribute("error"));
						   out.print("</font>");
					   }
					  out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color='orange' style='cursor:pointer'  onclick='post("+id+")' class='"+rs.getString("id")+"' name='"+rs.getInt("id")+"'>YOUR ADVICE</font>");
					  out.print("<div id='"+id+"abc'>");
					  out.print("</div>");
					out.print("</div>");
					 }
					 con.close();
				 }catch(Exception e){
					 
					 e.printStackTrace();
				 }
				  out.print("</div>");
			
				  %>
 				