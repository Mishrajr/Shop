package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class moredetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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

String cat="",subcat="",brand="",addproduct="",desc="",img="";
int stock=0,price=0,discount=0,rem=0;
Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select category.name,subcategory.name,brand.name,addproduct.name,"
                              + "price,discount,stock,addproduct.description,image from category,"
                              + "subcategory,brand,addproduct where addproduct.catid=category.catid"
                              + " and addproduct.subcatid=subcategory.subcatid and "
                              + "addproduct.brid=brand.brid and addproduct.productid=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,request.getParameter("id"));
                    
                      
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                     cat=answer.getString("category.name");
                      //  out.print(cat);
                       subcat=answer.getString("subcategory.name");
                      brand=answer.getString("brand.name");
                      addproduct=answer.getString("addproduct.name");
                       price=Integer.parseInt(answer.getString("price"));
                      discount=Integer.parseInt(answer.getString("discount"));
                      rem=price-((price*discount)/100);
                       stock=Integer.parseInt(answer.getString("stock"));
                     desc=answer.getString("addproduct.description");
                 img=answer.getString("image");
                           
                     }
                     else
                     {
                      out.println("wrong username and password");
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
      out.write("                <table width=\"80%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"10\">\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td colspan=\"3\" align=\"center\"><h2>Product Detailas</h2></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td width=\"47%\" rowspan=\"10\">");

                    out.print("<img src='userimages/"+img+"' width='250px' height='250px'>");
                    
      out.write("</td>\r\n");
      out.write("                    <td width=\"47%\">Choose Category</td>\r\n");
      out.write("                    <td width=\"53%\"><div id=\"catdiv\">");

                    out.print(cat);
                    
      out.write("</div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Choose Subcategory</td>\r\n");
      out.write("                     <td width=\"53%\"><div id=\"subcatdiv\">");

                    out.print(subcat);
                    
      out.write("</div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Choose Brand</td>\r\n");
      out.write("                    <td width=\"53%\"><div id=\"branddiv\">");

                    out.print(brand);
                    
      out.write("</div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Product Name</td>\r\n");
      out.write("                    <td width=\"53%\"><div id=\"prodiv\">");

                    out.print( addproduct );
                    
      out.write("</div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Price</td>\r\n");
      out.write("                    <td width=\"53%\"><div id=\"pricediv\">");

                    out.print(price);
                    
      out.write("</div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Discount</td>\r\n");
      out.write("                     <td width=\"53%\"><div id=\"desdiv\">");

                    out.print(discount);
                    
      out.write("</div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  \r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Description</td>\r\n");
      out.write("                     <td width=\"53%\"><div id=\"descdiv\">");

                    out.print( desc );
                    
      out.write("</div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Quantity</td>\r\n");
      out.write("                    <td><input type=\"text\" name=\"qty\" id=\"qty\"></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>&nbsp;</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                    ");

                    if(stock>0)
                    {
			out.print("<input type='submit' name='s2' id='s2' value='buy'>");
                    }
                    else
                    {
                        out.print("Out of stock");
                    }
					
      out.write("\r\n");
      out.write("                    ");

					if(request.getParameter("s2")!=null)
                                        {
                                            if(session.getAttribute("username")==null)
                                                    {
                                                        response.sendRedirect("signin.jsp?id="+request.getParameter("id"));
                                                    }
                                            else
                                            {
                                               Connection myConnection1;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection1=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q1="select * from addtocart where username=? and pid=?";
                      PreparedStatement mystatement1=myConnection1.prepareStatement(q1);
                      mystatement1.setString(1,session.getAttribute("username").toString());
                       mystatement1.setString(2,request.getParameter("id"));
                       ResultSet res=mystatement1.executeQuery();
                       if(res.next())
                       {
                           String q="update addtocart set qty=qty+?, tcost=tcost+? where username=? and pid=?";
                           PreparedStatement mystatement=myConnection1.prepareStatement(q);
                            mystatement.setString(1,request.getParameter("qty"));
                             int qty=Integer.parseInt(request.getParameter("qty"));
                             int tcost=rem*qty;
                            mystatement.setInt(2,tcost);
                            mystatement.setString(3, session.getAttribute("username").toString());
                     mystatement.setString(4, request.getParameter("id"));
                     mystatement.executeUpdate();
                       }
                       else
                       {
                      String q="insert into addtocart(pname,price,qty,tcost,image,username,pid) "
                              + "values(?,?,?,?,?,?,?)";
                      PreparedStatement mystatement=myConnection1.prepareStatement(q);
                     mystatement.setString(1, addproduct);
                     mystatement.setInt(2, rem);
                     mystatement.setString(3, request.getParameter("qty"));
                     int qty=Integer.parseInt(request.getParameter("qty"));
                     int tcost=rem*qty;
                     mystatement.setInt(4,tcost );
                     mystatement.setString(5, img);
                     mystatement.setString(6, session.getAttribute("username").toString());
                     mystatement.setString(7, request.getParameter("id"));
                     mystatement.executeUpdate();
                       }
                     response.sendRedirect("addtocart.jsp");
                    
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
                                            }
                                        }
                                        
					
      out.write("\r\n");
      out.write("                      \r\n");
      out.write("                    </td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                </table>\r\n");
      out.write("                <p>&nbsp;</p>\r\n");
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
