package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=iso-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\r\n");
      out.write("<title>Online Bank</title>\r\n");
      out.write("<link href=\"css/menu.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"css/main.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write("html,body{\r\n");
      out.write("    background-image: url(images/img.gif);\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<table width=\"900\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-weight:normal; background-color:#FFFFFF\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <th colspan=\"3\" scope=\"col\" style=\"height:90px; background-color:#2175bc;\"><object  width=\"900\" height=\"90\">\r\n");
      out.write("      <param name=\"movie\" value=\"images/banks.swf\" />\r\n");
      out.write("      <param name=\"quality\" value=\"high\" />\r\n");
      out.write("      <embed src=\"images/banks.swf\" quality=\"high\"  width=\"900\" height=\"90\"></embed>\r\n");
      out.write("    </object></th>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td colspan=\"3\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("<td width=\"60\" >\r\n");
      out.write("\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<p>&nbsp;</p>\t</td>\r\n");
      out.write("\r\n");
      out.write("    <td colspan=\"2\"><table width=\"98%\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <th colspan=\"2\" scope=\"col\"><div class=\"box1\">\r\n");
      out.write("          <marquee>\r\n");
      out.write("            <h2><font color=\"#FF0000\">Online Bank.</font></h2>\r\n");
      out.write("            </marquee>\r\n");
      out.write("        </div></th>\r\n");
      out.write("        </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <th width=\"50%\" scope=\"col\"><form id=\"form1\" name=\"form1\" method=\"post\" action=\"doLogin.jsp\">\r\n");
      out.write("          <table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"2\" style=\"border:#000000 solid 2px; padding:5px;\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <th colspan=\"3\" bgcolor=\"#000000\" scope=\"col\"><font color=\"#FFFFFF\">Customer Login</font></th>\r\n");
      out.write("              </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"28%\" rowspan=\"3\"><div align=\"center\"><img src=\"images/icon_module.png\" width=\"48\" height=\"48\" /></div></td>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"24%\">Username:</td>\r\n");
      out.write("              <td width=\"48%\"><label>\r\n");
      out.write("                <input name=\"username\" type=\"text\" id=\"username\" />\r\n");
      out.write("              </label></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>Password:</td>\r\n");
      out.write("              <td><label>\r\n");
      out.write("                <input name=\"password\" type=\"password\" id=\"password\" />\r\n");
      out.write("              </label></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("              <td colspan=\"2\"><label>\r\n");
      out.write("                \r\n");
      out.write("                    <div align=\"center\">\r\n");
      out.write("                      <input name=\"Submit\" type=\"submit\"/>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </label></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td colspan=\"3\">Want to Create a New Account? <a href=\"register.jsp\">Click Here</a> </td>\r\n");
      out.write("              </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("                </form>        </th>\r\n");
      out.write("        <th width=\"50%\" scope=\"col\"><p align=\"left\" style=\"line-height:18px; padding:10px; font-weight:normal\">The central concept of the application is to allow the  customer(s) to service virtually using the Internet with out going to bank and  allow customers to open new account, withdraw, deposit,  close and  getting balance using this banking service.&nbsp;  The information pertaining to the customers stores on an RDBMS at the  server side (BANK).&nbsp; The Bank services  the customers according to the customer&rsquo;s intention and it updates and backups  of each customer transaction accordingly.</p></th>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr style=\"height:30px;\">\r\n");
      out.write("    <td colspan=\"3\" style=\"background-color:#2175bc;\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
