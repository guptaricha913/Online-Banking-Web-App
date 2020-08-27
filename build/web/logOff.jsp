<% 
	session.removeAttribute("cust_name");
        session.invalidate();
	response.sendRedirect("index.jsp");
%>