<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
       
    <%
	String id=(String)request.getParameter("n");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/connect","root","root");
    try{
     
    PreparedStatement pss=con.prepareStatement("select * from forumadvc where rid='"+id+"'");
  

    ResultSet rss=pss.executeQuery();
    
    while(rss.next()){
    	out.print("<br><font color='orange'>"+rss.getString("email")+":</font>");
		out.print("<font color='#c9d6e2'>"+rss.getString("cmt")+"</font>");
				}
    }catch(Exception e){
    	e.printStackTrace();
    }
    %>