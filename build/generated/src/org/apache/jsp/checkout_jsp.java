package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("         \r\n");
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
      out.write("          <table width=\"80%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"43%\">&nbsp;</td>\r\n");
      out.write("              <td width=\"57%\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>Mode of Payment</td>\r\n");
      out.write("              <td><p>\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"radio\" name=\"mode\" value=\"radio\" id=\"mode_0\">\r\n");
      out.write("                  Cash</label>\r\n");
      out.write("                <br>\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"radio\" name=\"mode\" value=\"radio\" id=\"mode_1\">\r\n");
      out.write("                  Credit cart</label>\r\n");
      out.write("                <br>\r\n");
      out.write("              </p></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>Holder name</td>\r\n");
      out.write("              <td><label>\r\n");
      out.write("                <input type=\"text\" name=\"hname\" id=\"hname\">\r\n");
      out.write("              </label></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>Phone no</td>\r\n");
      out.write("              <td><label>\r\n");
      out.write("                <input type=\"text\" name=\"phno\" id=\"phno\">\r\n");
      out.write("              </label></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>Address</td>\r\n");
      out.write("              <td><label>\r\n");
      out.write("                <textarea name=\"add\" id=\"add\"></textarea>\r\n");
      out.write("              </label></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>Tcost</td>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("              <td><input type=\"submit\" name=\"s1\" id=\"s1\" value=\"Submit\">\r\n");
      out.write("                  ");

                  
                  if(request.getParameter("s1")!=null)
                  {
                      try
                      {
                      Class.forName("com.mysql.jdbc.Driver");
                  Connection myConnection1=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String hname,phno,address;
              hname=request.getParameter("hname");
               phno=request.getParameter("phno");
               address=request.getParameter("add");
               
                      
                      String q="insert into ordertable(hname,phno,address,tcost) "
                              + "values(?,?,?,?)";
                      PreparedStatement mystatement=myConnection1.prepareStatement(q);
                     mystatement.setString(1, hname);
                     mystatement.setString(2, phno);
                     mystatement.setString(3,address);
                     mystatement.setString(4,session.getAttribute("final").toString());
                     mystatement.executeUpdate();
                      out.print("your order is successfully published");
                    
                  }
                  catch(Exception e)
                  {
                      out.println("Error in query due to "+ e.getMessage());
                  }
              }
              catch(Exception e)
              {
                  out.print("Error in connection due to "+ e.getMessage());
              } 
                  }
				  Connection myConnection2;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q1="select * from addtocart where username=? and pid=?";
                      PreparedStatement mystatement1=myConnection2.prepareStatement(q1);
                      mystatement1.setString(1,session.getAttribute("username").toString());
                       mystatement1.setString(2,request.getParameter("id"));
                       ResultSet res=mystatement1.executeQuery();
                       if(res.next())
                       {
                           do
                           {
                           String q="update addproduct set stock=stock-? where pid=?";
                           PreparedStatement mystatement=myConnection2.prepareStatement(q);
                           int a=res.getInt("qty");
                            mystatement.setInt(1, a);
                            mystatement.executeUpdate();
                            String q2="insert into orderhistory value(orderno,pname,pid,image,qty,price,tcost)";
                           PreparedStatement mystatement2=myConnection2.prepareStatement(q2);
                            mystatement2.setString(2,request.getParameter("pname"));
                           mystatement2.setString(3,request.getParameter("pid"));
                           mystatement2.setString(4,request.getParameter("image"));
                           mystatement2.setString(5,request.getParameter("qty"));
                           mystatement2.setString(6,request.getParameter("price"));
                           mystatement2.setString(7,request.getParameter("tcost"));
                           mystatement2.executeUpdate(); 
                           
                          
                            
                            String q3="delete from addtocart where username=?";
                             
                        PreparedStatement mystatement3=myConnection2.prepareStatement(q3);
                        mystatement3.setString(1,session.getAttribute("username").toString());
                        mystatement3.executeUpdate();
                           }while(res.next());
                            
                       }
                       
                     //response.sendRedirect("");
                    
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
      out.write("              </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("          <p>&nbsp;</p>\r\n");
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
