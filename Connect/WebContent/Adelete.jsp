<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
		
		<%
		String id=(String)request.getParameter("val");
			if(id.length()>0){
				try{
					Class.forName("com.mysql.cj.jdbc.Driver");
				    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
				    PreparedStatement ps=con.prepareStatement("delete from forumrep where id="+id);
				    int status=ps.executeUpdate();
				    if(status>0){
				    	request.setAttribute("success","record sucessfully deleted");
				    }else{
				    	request.setAttribute("failure","sorry cannot delete record please try again");
				    }
				}catch(Exception e){
					e.printStackTrace();
					request.setAttribute("failure", "cannto delete record please try again");
				}
				
			}
		%>
		<jsp:forward page="Astatus.jsp"></jsp:forward>
		