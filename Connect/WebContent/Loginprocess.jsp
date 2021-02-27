<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
    <%
    String username=(String)request.getParameter("username");
    String password=(String)request.getParameter("password");
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
    	PreparedStatement ps=con.prepareStatement("select * from forumreg where username='"+username+"' and password='"+password+"'");
    	ResultSet rs=ps.executeQuery();
    	if(rs.next()){
    		session.setAttribute("islogin","please do login first");
    		session.setAttribute("username",rs.getString("username"));
    		session.setAttribute("email",rs.getString("email"));
    		
    		%>
    		<jsp:forward page="Status.jsp"></jsp:forward>
    		<%
    	}else{
    		request.setAttribute("error", "*enter correct details");
    		session.setAttribute("loginmsg","please do login first");
    		%>
    		<jsp:forward page="Index.jsp"></jsp:forward>
    		<%
    	}
    }catch(Exception e){
    	e.printStackTrace();
    }
    %>
