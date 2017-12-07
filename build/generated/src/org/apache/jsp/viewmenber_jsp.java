package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class viewmenber_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/adminheader.jsp");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
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
      out.write(' ');

 /*if(session.getAttribute("admin")==null)
 {
     response.sendRedirect("signin.jsp?id=admin");
 }*/
 
      out.write("<link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\" /><table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0                                                                                     0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"right\"><table width=\"1000\" border=\"0\" cellspacing=\"0                                                                                     0\" cellpadding=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFC4EC\" class=\"heaslinestyle\">Welcome Guest</td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFC4EC\" class=\"linkdesign\"><a href=\"viewfeedback.jsp\">View Feedback</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFC4EC\"><a href=\"viewmenber.jsp\" class=\"linkdesign\">View Member</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFC4EC\"><a href=\"signup.jsp\" class=\"linkdesign\">Sign up</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFC4EC\"><a href=\"signin.jsp\" class=\"linkdesign\">Sign in</a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><img src=\"img/banner.png\" width=\"1037\" height=\"300\" alt=\"banner\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td><table width=\"100%\" border=\"0\" cellspacing=\"0                                                                                     0\" cellpadding=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"admin.jsp\" class=\"linkdesign\">Admin</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"addcat.jsp\" class=\"linkdesign\">Add Catgeory</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"addsubcat.jsp\" class=\"linkdesign\">Add Subcategory</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"addbrand.jsp\" class=\"linkdesign\">Add Brand</a></td>\r\n");
      out.write("        <td width=\"20%\" align=\"center\" bgcolor=\"#FFA4E1\"><a href=\"addpro.jsp\" class=\"linkdesign\">Add Product</a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><form name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("          <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"51%\" valign=\"top\"><p class=\"headlinedesign\">List of Member</p></td>\r\n");
      out.write("              <td width=\"18%\" valign=\"center\"><input type=\"text\" name=\"search\" id=\"search\"></td>\r\n");
      out.write("              <td width=\"31%\" valign=\"center\"><input type=\"submit\" name=\"Find\" id=\"Find\" value=\"Find\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td colspan=\"3\" valign=\"top\">");

              if(request.getParameter("Find")!=null)
              {
                  String name=request.getParameter("search");
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from signup where name like ?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
					    mystatement.setString(1,"%"+name+"%");
                         ResultSet answer=mystatement.executeQuery();
						 if(answer.next())
						 {
							 out.print("<table width='80%' align='center'><tr><th>Name</th>"
                                                                 + "<th>Email</th><th>Phone No</th><th>Delete</th></tr>");
							 do
							 {
								out.print( "<tr align='center'><td>"+answer.getString("name")+"</td><td>"+
                                                                        answer.getString("email")+"</td><td>"+answer.getString("phno")+"</td>"
                                                                        + "<td><a href='deleteMamber.jsp?id="+answer.getString("email")+"'>Delete</a></td></tr>"); 
							 }while(answer.next());
                                                         out.print("</table>");
						 }
						 else
						 {
							 out.print("no Member available");
						 }
                     
                  }
                  catch(Exception e)
                  {
                      out.println("Error in query deu to "+e.getMessage());
                  }
              }
              catch(Exception e)
              {
                  out.print("Error in connection due to "+e.getMessage());
              }
              }
			
			
			
      out.write("</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
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
