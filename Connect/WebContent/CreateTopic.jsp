<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
    <%
    String topic=(String)request.getParameter("topic");
    Date date=Calendar.getInstance().getTime();
    java.sql.Date sqldate=new java.sql.Date(date.getTime());
    
    String email=(String)session.getAttribute("email");
    
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
    	PreparedStatement ps=con.prepareStatement("select * from forumtpc where topic='"+topic+"'");
    	ResultSet rs=ps.executeQuery();
    	if(rs.next()){
    		request.setAttribute("created","*this topic already exists");
    		%>
    		<jsp:forward page="Discuss.jsp"></jsp:forward>
    		<%
    	}else{
    		ps=con.prepareStatement("insert into forumtpc(topic,email,createdon) values(?,?,?)");
    		ps.setString(1,topic);
    		ps.setString(2, email);
    		ps.setDate(3, sqldate);
    		int status=ps.executeUpdate();
    		if(status>0){
    			request.setAttribute("created", "*topic created successfully");
    			
    			%>
    			<jsp:forward page="Discuss.jsp"></jsp:forward>
    			<%
    		}else{
    			request.setAttribute("created", "*sorry cannot create the topic. please try again");
    		}
    	}
    	
    }catch(Exception e){
    	e.printStackTrace();
    	request.setAttribute("created","*sorry cannot create the topic. please try again");
    }
    %>
  <jsp:forward page="Discuss.jsp"></jsp:forward>