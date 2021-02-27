<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
 <%
     String rid=(String)request.getParameter("id");
     String cmt=(String)request.getParameter("cmt");
     String mail=(String)session.getAttribute("email");
     try{
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
     PreparedStatement ps=con.prepareStatement("insert into forumtadvc(tid,email,cmt)values(?,?,?)");
     ps.setString(1, rid);
     ps.setString(2, mail);
     ps.setString(3, cmt);
     int status=ps.executeUpdate();
     if(status>0){
    	 %>
    	 <jsp:forward page="Discuss.jsp"></jsp:forward>
    	 <% 
     }else{
    	 request.setAttribute("error", "cannot comment please try again");
    			 
     }
     }catch(Exception e){
    	 e.printStackTrace();
     }
     %>
<jsp:forward page="Discuss.jsp"></jsp:forward>