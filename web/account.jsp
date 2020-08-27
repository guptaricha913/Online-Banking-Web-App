<%-- 
    Document   : account
    Created on : Oct 30, 2015, 7:50:14 PM
    Author     : Richa
--%>
<%@ page contentType="text/html" import="java.sql.*" errorPage="" %>
<%
java.util.Random r = new java.util.Random();
int accNo = r.nextInt(10000000);
String uname = request.getParameter("username");
String password = request.getParameter("password");
String sql = "SELECT USERNAME,PASSWORD FROM BDB.USER_DETAILS WHERE USERNAME ='"+uname+"' AND PASSWORD= '"+password+"'";
boolean check = false;
		Connection c=null;
                try {
	    	Class.forName("org.apache.derby.jdbc.ClientDriver");	    	
		}
		catch (Exception ex) {
			out.println (ex);
		}
		try 
                {
			c = DriverManager.getConnection("jdbc:derby://localhost:1527/BankDataBase","BDB","BDB");                                
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next() == true){
				check = true;
			}else {
				check = false;
			}                        
                }
                catch(Exception e)
                {
                    out.println(e);
                }
if(check == true ){
	session.setAttribute("cust_name",uname);
}else {
//	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object width="900" height="90">
      <param name="movie" value="images/banks.swf" />
      <param name="quality" value="high" />
      <embed src="images/banks.swf" quality="high"  width="900" height="90"></embed>
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
    <td colspan="2" style="padding:20px;">
	<div class="box1">
	<marquee><h2><font color="#FF0000">Online Bank.</font></h2></marquee>
	</div>
	<br/>
	<form id="form1" name="form1" method="post" action="doAccount.jsp">
	  <table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Create Bank Account</font></th>
        </tr>
        <tr>
          <td width="39%">&nbsp;</td>
          <td width="3%">&nbsp;</td>
          <td width="58%">&nbsp;</td>
        </tr>
        <tr>
          <td><div align="right">Account Holder Name </div></td>
          <td>:</td>
          <td><label>
            <input name="uname" type="text" id="uname"  readonly="true" value="<%= (String)session.getAttribute("cust_name")%>"/>
          </label></td>
        </tr>
        <tr>
          <td><div align="right">Account Number </div></td>
          <td>:</td>
          <td><label>
            <input name="accno" type="text" id="accno"  readonly="true" value="<%=accNo%>"/>
          </label></td>
        </tr>
        <tr>
          <td><div align="right">Account Type </div></td>
          <td>:</td>
          <td><select name="acc_type">
		  <option value="CURRENT"> Current Account</option>
		  <option value="SAVING"> Saving Account</option>
		  <option value="STUDENT"> Student Account</option>
		  </select></td>
        </tr>
        <tr>
          <td><div align="right">Account Details</div></td>
          <td>:</td>
          <td><label>
            <textarea name="details" cols="30" rows="3" id="details"></textarea>
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><label>
            <input type="submit" name="Submit" value="Create Account" />
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="3" bgcolor="#333333">&nbsp;</td>
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