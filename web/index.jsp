<%-- 
    Document   : account
    Created on : Oct 30, 2015, 5:50:23 PM
    Author     : Richa
--%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object  width="900" height="90">
      <param name="movie" value="images/banks.swf" />
      <param name="quality" value="high" />
      <embed src="images/banks.swf" quality="high"  width="900" height="90"></embed>
    </object></th>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
<td width="60" >

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>

    <td colspan="2"><table width="98%" border="0" align="center" cellpadding="1" cellspacing="0">
      <tr>
        <th colspan="2" scope="col"><div class="box1">
          <marquee>
            <h2><font color="#FF0000">Online Bank.</font></h2>
            </marquee>
        </div></th>
        </tr>
      <tr>
        <th width="50%" scope="col"><form id="form1" name="form1" method="post" action="doLogin.jsp">
          <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" style="border:#000000 solid 2px; padding:5px;">
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col"><font color="#FFFFFF">Customer Login</font></th>
              </tr>
            <tr>
              <td width="28%" rowspan="3"><div align="center"><img src="images/icon_module.png" width="48" height="48" /></div></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td width="24%">Username:</td>
              <td width="48%"><label>
                <input name="username" type="text" id="username" />
              </label></td>
            </tr>
            <tr>
              <td>Password:</td>
              <td><label>
                <input name="password" type="password" id="password" />
              </label></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td colspan="2"><label>
                
                    <div align="center">
                      <input name="Submit" type="submit"/>
                    </div>
                  </label></td>
              </tr>
            <tr>
              <td colspan="3">Want to Create a New Account? <a href="register.jsp">Click Here</a> </td>
              </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
                </form>        </th>
        <th width="50%" scope="col"><p align="left" style="line-height:18px; padding:10px; font-weight:normal">The central concept of the application is to allow the  customer(s) to service virtually using the Internet with out going to bank and  allow customers to open new account, withdraw, deposit,  close and  getting balance using this banking service.&nbsp;  The information pertaining to the customers stores on an RDBMS at the  server side (BANK).&nbsp; The Bank services  the customers according to the customer&rsquo;s intention and it updates and backups  of each customer transaction accordingly.</p></th>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>

</html>
