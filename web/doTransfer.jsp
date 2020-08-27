<%-- 
    Document   : account
    Created on : Oct 30, 2015, 10:54:23 PM
    Author     : Richa
--%>
<%@ page contentType="text/html" import="java.sql.*,java.util.*"%>
<%
String uname = (String)session.getAttribute("cust_name");
String date = (new java.util.Date()).toString();
String accno = request.getParameter("accNo");
String daccno = request.getParameter("daccNo");
int amt = Integer.parseInt(request.getParameter("Amount"));
String bal_sql = "SELECT BALANCE FROM BDB.AMT_DETAILS WHERE USERNAME='"+uname+"' AND acc_no ='"+accno+"'";
int balance=0;
            Connection c=null;		
		try {
			c = DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(bal_sql);
			while(rs.next()){
				balance = rs.getInt("BALANCE");
			}
		}
		catch (Exception ex) {
			out.println (ex);
		}
String name=null;
                try {
			c = DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery("SELECT USERNAME FROM BDB.ACCOUNT_DETAILS WHERE ACC_NO= '"+daccno+"'");
			while(rs.next()){
				name = rs.getString(1);
			}
		}
		catch (Exception ex) {
                     
                    out.println (ex);
		}
String bal_sql_1 = "SELECT BALANCE FROM BDB.AMT_DETAILS WHERE USERNAME='"+name+"' AND ACC_NO = '"+daccno+"'";
int bal_2=0;
                try {
			c = DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(bal_sql_1);
			while(rs.next()){
				bal_2 = rs.getInt("BALANCE");
			}
		}
		catch (Exception ex) {
			out.println (ex);
		}
int bal1=0;
if(balance < amt ){	
	response.sendRedirect("lowBal.jsp");
}else if(balance == 0){
	response.sendRedirect("noBal.jsp");
}else {
	bal1 = balance - amt;
	String sql_up = "UPDATE BDB.AMT_DETAILS SET BALANCE="+bal1+" WHERE USERNAME='"+uname+"' AND ACC_NO = '"+accno+"'";
	int up =0;
        try {
			c =DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");
			Statement st = c.createStatement();
			st.executeUpdate(sql_up); 
                        up=1;
		}
		catch (Exception ex) 
                {                        
			out.println (ex);
		}	
}

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
	Your Amount <font  color="#FF0000"><%=amt%></font> is Successfully Transfer to Account <font color="#FF0000"><%=daccno%> Rs.</font><br/>
	To Deposit Amount in Your Account <a href="deposite.jsp">Click Here</a><br/>
	To Withdraw From Account <a href="withdraw.jsp">Click Here</a>
	</div>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>
</html>
