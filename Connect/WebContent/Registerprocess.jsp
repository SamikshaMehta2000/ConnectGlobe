<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
    <%
     String username=(String)request.getParameter("username");
     String password=(String)request.getParameter("password");
     String email=(String)request.getParameter("email");
     String mobile=(String)request.getParameter("mobile");
     String address=(String)request.getParameter("address");
    
 
  
   try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
	   PreparedStatement ps=con.prepareStatement("select * from forumreg where username='"+username+"' or email='"+email+"'");
	   ResultSet rs=ps.executeQuery();
	   if(rs.next()){
		   //either username or password are repeated
		   if(rs.getString("username").equalsIgnoreCase(username)&&rs.getString("email").equalsIgnoreCase(email)){
			     request.setAttribute("regerror","both username and email already exists");
			     
			     %>
			     
			     
			     <jsp:forward page="Register.jsp"></jsp:forward>
			   
			   
			     <%
		   }
		   else if(rs.getString("username").equalsIgnoreCase(username)){
			   request.setAttribute("regerror", "username already exists");
			   %>
			   <!--  only username repeated -->
			   <jsp:forward page="Register.jsp"></jsp:forward>
			   <%
		   }else{
			   //only email repeated
			  request.setAttribute("regerror","email aleady exists");
			  %>
			  <jsp:forward page="Register.jsp"></jsp:forward>
			  <%
			  
		   }
	   }else{
		   //nothing repeated insert records
		  PreparedStatement p=con.prepareStatement("insert into forumreg(username,password,email,mobile,address)values(?,?,?,?,?)");
		  p.setString(1,username);
		  p.setString(2,password);
		  p.setString(3,email);
		  p.setString(4,mobile);
		  p.setString(5,address);
		  int status=p.executeUpdate();
		  if(status>0){
			  //update success
			  request.setAttribute("regsuccess","registeration successful. Please login to your account.");
			  %>
			  <jsp:forward page="Index.jsp"></jsp:forward>
			  <%
		  }else{
			  request.setAttribute("regerror","There was an unecpected error while registering you. Please try again");
					  %>
					  <jsp:forward page="Register.jsp"></jsp:forward>
					  <%
		  }
		  
	   }
	   con.close();
   }catch(Exception e){
	   e.printStackTrace();
	   request.setAttribute("regerror","There was an unexpected error while registering you. Please try again");
	   %>
	   
	   <%
   }
   %>
  