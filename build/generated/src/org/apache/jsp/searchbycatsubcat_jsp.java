package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class searchbycatsubcat_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        <script>\r\n");
      out.write("\t\tfunction abc()\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\tdocument.getElementById(\"namemsg\").innerHTML=\"\"\r\n");
      out.write("\t\t\tdocument.getElementById(\"emaildiv\").innerHTML=\"\"\r\n");
      out.write("\t\t\tif(document.form1.name.value.length<4)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"namemsg\").innerHTML=\"name is too short\"\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif((document.form1.email.value.length<1)||document.form1.email.value.indexOf(\"@\")<3||document.form1.email.value.lastIndexOf(\".\")<=3)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t\t\tdocument.getElementById(\"emaildiv\").innerHTML=\"email is not in correct format\"\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("     </script>\r\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("         <link rel=\"stylesheet\" href=\"js/blitzer/jquery-ui.css\">\r\n");
      out.write("  \t\t<script src=\"js/jquery.js\"></script>\r\n");
      out.write("  \t\t<script src=\"js/jquery-ui.js\"></script>\r\n");
      out.write("          <script>\r\n");
      out.write("\t\t  $(function() {\r\n");
      out.write("\t\t\t$( \"#datepicker\" ).datepicker({\r\n");
      out.write("\t\t\t\t      changeMonth: true,\r\n");
      out.write("      \t\t\t\t\tchangeYear: true,\r\n");
      out.write("\t\t\t\t\t\tdateFormat: \"yy-mm-dd\"\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t);\r\n");
      out.write("\t\t  });\r\n");
      out.write("\t\t  \r\n");
      out.write("  </script>\r\n");
      out.write("    <script>\r\n");
      out.write("    $(document).ready(function(e) {\r\n");
      out.write("        $(\"#cat\").change(function(){\r\n");
      out.write("\t\t\tvar cat=$(this).val();\r\n");
      out.write("\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\t\t\turl:\"ajax1.jsp\",\r\n");
      out.write("\t\t\t\t\t\tdata:{\"cat\":cat},\r\n");
      out.write("\t\t\t\t\t\ttype:\"post\",\r\n");
      out.write("\t\t\t\t\t\tbeforeSend: function()\r\n");
      out.write("\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\t\t$(\"#catdiv\").html(\"<img src='images/pre.gif' width='30px' heigth='30px'>\")\r\n");
      out.write("\t\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\t\tsuccess: function(res)\r\n");
      out.write("\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\t\t$(\"#catdiv\").html(\"\")\r\n");
      out.write("\t\t\t\t\t\t\t$(\"#subcat\").html(res)\r\n");
      out.write("\t\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\t\terror:function()\r\n");
      out.write("\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\t\t$(\"#catdiv\").html(\"error in ajax\");\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t})\r\n");
      out.write("\t\t\t})\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("    });\r\n");
      out.write("\t</script>\r\n");
      out.write("    <script>\r\n");
      out.write("\t$(document).ready(function(e) {\r\n");
      out.write("\t\t\t$(\"#s1\").click(function(){\r\n");
      out.write("\t\t\t var tom=$(\"#cat\").val()\r\n");
      out.write("\t\t\t var jerry=$(\"#subcat\").val()\r\n");
      out.write("\t\t\t $.ajax({\r\n");
      out.write("\t\t\t\t url:\"ajax2.jsp\",\r\n");
      out.write("\t\t\t\t data:{\"mytom\":tom,\"myjerry\":jerry},\r\n");
      out.write("\t\t\t\t type:\"POST\",\r\n");
      out.write("\t\t\t\t success: function(result)\r\n");
      out.write("\t\t\t\t {\r\n");
      out.write("\t\t\t\t\t $(\"#grid1\").html(result)\r\n");
      out.write("\t\t\t\t },\r\n");
      out.write("\t\t\t\t error:function()\r\n");
      out.write("\t\t\t\t {\r\n");
      out.write("\t\t\t\t\t $(\"#grid1\").html(\"error in ajax\")\r\n");
      out.write("\t\t\t\t }\r\n");
      out.write("\t\t\t\t \r\n");
      out.write("\t\t\t\t })\r\n");
      out.write("\t\t\t  })\r\n");
      out.write("\t\t\t\r\n");
      out.write("    });\r\n");
      out.write("    </script>\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("    body {\r\n");
      out.write("\tbackground-color: #FFD5F1;\r\n");
      out.write("}\r\n");
      out.write("    </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0                                                                                     0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("          <td>\r\n");
      out.write("              ");
      out.write("<table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0                                                                                     0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"right\"><table width=\"500\" border=\"0\" cellspacing=\"0                                                                                     0\" cellpadding=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFC4EC\" class=\"heaslinestyle\">Welcome Guest</td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFC4EC\">\r\n");
      out.write("        ");

		  if(session.getAttribute("username")==null)
		  out.print("<a href='signup.jsp' class='linkdesign'>Sign up</a>");
                  else
                  out.print ("<a href='Changepass.jsp' class='linkdesign'>Change Password</a>");  
		
      out.write("\r\n");
      out.write("        </td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFC4EC\">\r\n");
      out.write("          ");

                if(session.getAttribute("username")==null)
		  out.print("<a href='signin.jsp' class='linkdesign'>Sign In</a>");
                  else
                  out.print ("<a href='signout.jsp' class='linkdesign'>Sign Out</a>");  
		
      out.write("\r\n");
      out.write("        </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><img src=\"img/banner.png\" width=\"1037\" height=\"300\" alt=\"banner\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"index.jsp\" class=\"linkdesign\">Home</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"product.jsp\" class=\"linkdesign\">Products</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"search.jsp\" class=\"linkdesign\">Search</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"contact.jsp\" class=\"linkdesign\">Contact Us</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"feed.jsp\" class=\"linkdesign\">Feedback</a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><form name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("          <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0                                                                                     0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"248\">Choose Category</td>\r\n");
      out.write("              <td width=\"252\"><select name=\"cat\" id=\"cat\">\r\n");
      out.write("                <option>Choose Category</option>\r\n");
      out.write("                ");

              Connection myConnection1;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection1=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from category";
                      PreparedStatement mystatement=myConnection1.prepareStatement(q);
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         do
                         {
                         out.print("<option value="+answer.getString("catid")+">"+answer.getString("name")+"</option>");
                         }while(answer.next());
                     }
                     else
                     {
                           out.print("<option>No category available</option>");
                     }
                  }
                  catch(Exception e)
                  {
                      out.println("Error in query due to "+e.getMessage());
                  }
              }
              catch(Exception e)
              {
                  out.print("Error in connection due to "+e.getMessage());
              }
              
      out.write("\r\n");
      out.write("              </select>\r\n");
      out.write("              <div id=\"catdiv\"></div></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>Choose Subcategory</td>\r\n");
      out.write("              <td><select name=\"subcat\" id=\"subcat\">\r\n");
      out.write("                <option>Choose SubCategory</option>\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("              <td><input type=\"button\" name=\"s1\" id=\"s1\" value=\"Submit\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("          <div id=\"grid1\"></div>\r\n");
      out.write("        </form></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("          <td>");
      out.write("<table width=\"1000\" border=\"0\" cellspacing=\"0                                                                                     0\" cellpadding=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\" bgcolor=\"#FFA4E1\" class=\"heaslinestyle\">&copy; Website Created By GTB COMPUTER EDUCATION</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("       \r\n");
      out.write("    </body>\r\n");
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
