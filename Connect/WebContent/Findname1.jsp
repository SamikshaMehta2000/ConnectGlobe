<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%
    	 String email=(String)request.getParameter("email");
      	if(email.length()>0){
      		try{
      			Class.forName("com.mysql.cj.jdbc.Driver");
      			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
      			PreparedStatement ps=con.prepareStatement("select * from forumreg where email='"+email+"'");
      			ResultSet rs=ps.executeQuery();
      			if(rs.next()){
      				out.print("<font color='orange' size='2'>*email already exists</font>");
      			}
      			con.close();
      		}catch(Exception e){
      			e.printStackTrace();
      		}
      	}
    %>
