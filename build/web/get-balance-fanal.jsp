<%-- 
    Document   : account
    Created on : Oct 31, 2015, 2:26:46 PM
    Author     : Richa
--%>
<%@ page contentType="text/html" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<%
String uname = (String)session.getAttribute("cust_name");
int accNo = Integer.parseInt(request.getParameter("accNo"));
String bal_sql = "SELECT BALANCE FROM BDB.AMT_DETAILS WHERE USERNAME='"+uname+"' AND ACC_NO='"+accNo+"'";
int bal =0;
                Connection c=null;
                try {
	    	Class.forName("org.apache.derby.jdbc.ClientDriver");	    	
		}
		catch (Exception ex) {
			out.println (ex);
		}
		try {
			c = DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(bal_sql);
			while(rs.next()){
				bal = rs.getInt(1);
			}
		}
		catch (Exception ex) {
			out.println (ex);
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
	<form id="form1" name="form1" method="post" action="">
	  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Your Current Banalce is As Follows </font></th>
        </tr>
        <tr>
          <td><div align="right"><strong>Customer Name </strong></div></td>
          <td><div align="right"><strong>:</strong></div></td>
          <td><%=uname%></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Account No. </strong></div></td>
          <td><div align="right"><strong>:</strong></div></td>
          <td>&nbsp;<%=accNo%></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Current Balance </strong></div></td>
          <td><div align="right"><strong>:</strong></div></td>
          <td>&nbsp;<font color="#FF0000"><%=bal%> Rs. </font></td>
        </tr>
        <tr>
          <td colspan="3">&nbsp;If you want to Deposit then <a href="deposite.jsp">Click Here</a><br/> Or For Withdraw the Amount fro Your Account <a href="withdraw.jsp">Click here</a></td>
          </tr>
        <tr>
          <td width="43%">&nbsp;</td>
          <td width="2%">&nbsp;</td>
          <td width="55%">&nbsp;</td>
        </tr>
      </table>
      </form>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>
</html>