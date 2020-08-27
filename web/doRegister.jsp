<%-- 
    Document   : account
    Created on : Oct 30, 2015, 9:35:54 PM
    Author     : Richa
--%>
<%@ page contentType="text/html" import="java.sql.*"%>
<%
String uname = request.getParameter("username");
String password = request.getParameter("password");
String question = request.getParameter("question");
String answer = request.getParameter("answer");
String address = request.getParameter("address");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String query = "INSERT INTO BDB.USER_DETAILS VALUES('"+uname+"','"+password+"','"+question+"','"+answer+"','"+email+"','"+mobile+"','"+address+"')";
String update=null;
Connection c=null;
                try {
	    	Class.forName("org.apache.derby.jdbc.ClientDriver");	    	
		}
		catch (Exception ex) {
			out.println (ex);
		}
		try {
			c =DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");
			Statement st = c.createStatement();
			st.executeUpdate(query); 
                        //update=1;
		}
		catch (Exception ex) 
                {
                        update=ex.toString();
			System.out.println (ex);
		}
		c.close();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online Bank</title>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
html,body{
    background-image: url(images/img.gif);
}
</style>
</head>
<body>
<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="90">
      <param name="movie" value="images/banks.swf" />
      <param name="quality" value="high" />
      <embed src="images/banks.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="900" height="90"></embed>
    </object></th>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
<td width="160" ><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;">
	<div class="box1">
	<% 
	if(update == null){
	%>
	Account is Created Successfully.<br/><a href="index.jsp">Click Here</a> to Login and Activate Your Account.
	<%
	}else {
            out.println(update);
	%>
	<font color="#FF0000">Sorry!. Account is not created.<br/>Click Here to <a href="register.jsp">Register Again</a></font>
	<%
	}
	 %>
	</div>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>
</html>
