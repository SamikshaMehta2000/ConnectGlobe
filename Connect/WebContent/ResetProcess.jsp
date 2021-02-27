<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
		<%
		String username=(String)request.getParameter("username");
		String password=(String)request.getParameter("newpass");
		try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
		  //check for repeated password
		  PreparedStatement ps=con.prepareStatement("select * from forumreg where username='"+username+"' and password='"+password+"'");
				  ResultSet rs=ps.executeQuery();
				  if(rs.next()){
					  request.setAttribute("repeated","*new password cannot be same as old");
					  %>
					  <jsp:forward page="Forgot.jsp"></jsp:forward>
					  <%
				  }else{
					    PreparedStatement p=con.prepareStatement("update forumreg set password='"+password+"' where username='"+username+"'");
			      int status=p.executeUpdate();
			      if(status>0){
			    	  request.setAttribute("success","successfully changed password please do login");
			    	  %>
			    	  <jsp:forward page="Index.jsp"></jsp:forward>
			    	  <%
			      }else{
			    	  request.setAttribute("error", "sorry cannot change password try again");
			    	%>
			    	<jsp:forward page="Forgot.jsp"></jsp:forward>
			    	<%		  
			      }
				  }
				  con.close();
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("error", "error please try again");
					%>
					<jsp:forward page="Forgot.jsp"></jsp:forward>
					<%
		}
		%>