	<%
		String username=getServletContext().getInitParameter("username");
		String password=getServletContext().getInitParameter("password");
		
		if(request.getParameter("username").equalsIgnoreCase(username)&&request.getParameter("password").equalsIgnoreCase(password)){
			 session.setAttribute("islogin", "please do login first");
			session.setAttribute("username", "Administrator");
		
	%>
	<jsp:forward page="Astatus.jsp"></jsp:forward>
	<%
	}	
	%><%
	else{
		request.setAttribute("error", "please enter correct details");
		session.setAttribute("loginmsg", "please do login first");
	
	%>
	<jsp:forward page="Admin.jsp"></jsp:forward>
	<%
	}
	%>