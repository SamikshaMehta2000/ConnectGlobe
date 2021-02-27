<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
    <%
    java.util.Date date=Calendar.getInstance().getTime();
    java.sql.Date sqdate=new java.sql.Date(date.getTime());
    String state=(String)request.getParameter("state");
    String country=(String)request.getParameter("country");
    String district=(String)request.getParameter("district");
    String policestation=(String)request.getParameter("policestation");
    String report=(String)request.getParameter("report");
  
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
    	PreparedStatement ps=con.prepareStatement("insert into forumrep(country,district,police_station,report,email,state,postedon) values(?,?,?,?,?,?,?)");
    	ps.setString(1, country);
    	ps.setString(2, district);
    	ps.setString(3, policestation );
    	ps.setString(4, report);
    	
    	ps.setString(5, (String)session.getAttribute("email"));
    	ps.setString(6, state );
    	ps.setDate(7, sqdate);
    	int s=ps.executeUpdate();
    	if(s>0){
    		%>
    		<jsp:forward page="Uploadpic.jsp"></jsp:forward>
    		<%
    	}else{
    		request.setAttribute("error","cannot upload your report please try again");
    				%>
    				<jsp:forward page="Post.jsp"></jsp:forward>
    				<%
    	}
    }catch(Exception e){
    	e.printStackTrace();
    }
    %>
