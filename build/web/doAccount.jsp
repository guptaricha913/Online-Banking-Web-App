<%-- 
    Document   : account
    Created on : Oct 30, 2015, 8:50:14 PM
    Author     : Richa
--%>
<%@ page contentType="text/html" import="java.sql.*"%>
<%
String uname = request.getParameter("uname");
String accno=request.getParameter("accno");
String acc_type = request.getParameter("acc_type");
String details = request.getParameter("details");
String query = "INSERT INTO BDB.ACCOUNT_DETAILS VALUES('"+accno+"','"+uname+"','"+acc_type+"','"+details+"')";
String update=null;
Connection c=null;
                try {
	    	Class.forName("org.apache.derby.jdbc.ClientDriver");	    	
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		try {
			c =DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");
			Statement st = c.createStatement();
			st.executeUpdate(query);                         
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
<td width="160" >
<div id="ddblueblockmenu">
  <div class="menutitle">Account Operations</div>
  <ul>
    <li><a href="main.jsp">Welcome,&nbsp;<%= (String)session.getAttribute("cust_name")%></a></li>
    <li><a href="account.jsp">Create Account</a></li>
    <li><a href="deposite.jsp">Deposit</a></li>
    <li><a href="withdraw.jsp">Do Withdraw</a></li>
    <li><a href="get-balance.jsp">Get Balance</a></li>
    <li><a href="transfer.jsp">Transfer Amount</a></li>
    <li><a href="logOff.jsp">LogOut</a></li>
  </ul>
  <div class="menutitle">&nbsp;</div>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;line-height:20px;">
	<div class="box1">
	<marquee><h2><font color="#FF0000">Online Bank.</font></h2></marquee>
	</div>
	<br/>
	<br/>
	<div class="box2">
        <% 
	if(update == null){
	%>
	Your account is successfully created. and Account No. is <%=accno%>.<br/>
	To Deposit Amount in Your Account <a href="deposite.jsp">Click Here</a><br/>
	To Withdraw From Account <a href="withdraw.jsp">Click Here</a>
        <%
	}else {
            out.println(update);
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
