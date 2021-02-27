<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
    <%
    	String email=(String)request.getParameter("email");
    	String msg=(String)request.getParameter("msg");
    	try{
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
    		PreparedStatement ps=con.prepareStatement("insert into contactus(email,msg)values(?,?)");
    		ps.setString(1, email);
    		ps.setString(2, msg);
    		int Status=ps.executeUpdate();
    		if(Status>0){
    			request.setAttribute("success","*sucessfully submitted");
    			
    		}else{
    			request.setAttribute("error","*cannot submit please try again");
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    		request.setAttribute("error","*cannot submit please try again");
    	}
    %>
    <jsp:forward page="Contactus.jsp"></jsp:forward>
