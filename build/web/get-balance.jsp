<%-- 
    Document   : account
    Created on : Oct 31, 2015, 4:53:11 PM
    Author     : Richa
--%>
<%@ page contentType="text/html" import="java.sql.*,java.util.*"%>
<%
String uname = (String)session.getAttribute("cust_name");
String sql = "SELECT ACC_NO,ACC_TYPE FROM BDB.ACCOUNT_DETAILS WHERE USERNAME='"+uname+"'";
ArrayList one=new ArrayList();
            Connection c=null;
                try 
                {
	    	Class.forName("org.apache.derby.jdbc.ClientDriver");	    	
		}
		catch (Exception ex) {
			out.println (ex);
		}
		try {
			c = DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){                            				
				one.add(rs.getString("ACC_NO"));                                
			}
		}
		catch (Exception ex) {
			out.println ("Error :"+ex);
		}
                c.close();
int size=0;                
try
{    
    size = one.size();
    if(size < 1) 
    {
	response.sendRedirect("noAcc.jsp");        
    }
}
catch(Exception e)
{
}
%>

<html">
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
	<form id="form1" name="form1" method="post" action="get-balance-fanal.jsp">
	  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Please Select the Account to Check Your Current Balance </font></th>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><div align="right"><strong>Account Holder Name </strong></div></td>
          <td>:</td>
          <td>&nbsp;<%= uname %></td>
        </tr>
        <tr>
          <td width="43%"><div align="right"><strong>Select Account No.</strong></div></td>
          <td width="2%">:</td>
          <td width="55%"><select name="accNo">
              <%
			for(int i=0; i<size; i++){
		//	ArrayList o=null;  
               //         o=(ArrayList)one.get(i);
			%>
              <option value="<%=(one.get(i).toString())%>" ><%=(one.get(i).toString())%></option>
              <% } %>
            </select>          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><label>
          <input type="submit" name="Submit" value="Check Balance" />
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
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
