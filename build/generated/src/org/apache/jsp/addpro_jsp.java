package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;
import java.text.SimpleDateFormat;
import org.apache.commons.fileupload.FileItem;
import java.util.Iterator;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import java.util.List;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.sql.*;

public final class addpro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("    <style type=\"text/css\">\r\n");
      out.write("    body {\r\n");
      out.write("\tbackground-color: #FFD5F1;\r\n");
      out.write("}\r\n");
      out.write("    </style>\r\n");
      out.write("    <script src=\"jquery/jquery.js\"></script>\r\n");
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
      out.write("    });\r\n");
      out.write("    </script>\r\n");
      out.write("    \r\n");
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
      out.write("        <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"28%\" valign=\"top\"><img src=\"img/shopping-bags.jpg\" width=\"362\" height=\"303\" alt=\"bags\"></td>\r\n");
      out.write("            <td width=\"72%\" align=\"center\" valign=\"middle\">\r\n");
      out.write("            <form action=\"\" method=\"post\" enctype=\"multipart/form-data\"  name=\"form1\">\r\n");
      out.write("              <table width=\"80%\" border=\"0\" cellspacing=\"10\" cellpadding=\"0\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td colspan=\"2\" align=\"center\">Add Product</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td width=\"47%\">Choose Category</td>\r\n");
      out.write("                  <td width=\"53%\"><select name=\"cat\" id=\"cat\">\r\n");
      out.write("                  <option>Choose Category</option>\r\n");
      out.write("                    ");

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
      out.write("                  </select>\r\n");
      out.write("                  <div id=\"catdiv\"></div></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>Choose Subcategory</td>\r\n");
      out.write("                  <td><select name=\"subcat\" id=\"subcat\">\r\n");
      out.write("                          <option>Choose SubCategory</option>\r\n");
      out.write("                  </select></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>Choose Brand</td>\r\n");
      out.write("                  <td><select name=\"brand\" id=\"brand\">\r\n");
      out.write("                  ");

              Connection myConnection2;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from brand";
                      PreparedStatement mystatement=myConnection2.prepareStatement(q);
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         do
                         {
                         out.print("<option value="+answer.getString("brid")+">"+answer.getString("name")+"</option>");
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
      out.write("                  </select>\r\n");
      out.write("                  <div id=\"branddiv\"></div>\r\n");
      out.write("                  </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>Product Name</td>\r\n");
      out.write("                  <td><input type=\"text\" name=\"name\" id=\"name\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>Price</td>\r\n");
      out.write("                  <td><input type=\"text\" name=\"price\" id=\"price\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>Discount</td>\r\n");
      out.write("                  <td><input type=\"text\" name=\"dis\" id=\"dis\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>Available Stock</td>\r\n");
      out.write("                  <td><input type=\"text\" name=\"st\" id=\"st\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>Description</td>\r\n");
      out.write("                  <td><input type=\"text\" name=\"desc\" id=\"desc\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>Image</td>\r\n");
      out.write("                  <td><input type=\"file\" name=\"img\" id=\"img\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>&nbsp;</td>\r\n");
      out.write("                  <td><input type=\"submit\" name=\"s2\" id=\"s2\" value=\"Submit\">\r\n");
      out.write("                  ");

               Connection myConnection5;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection5=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                    String email="";
                    String category="",subcat="",brand="",price="",discount="",pname="",avst="",description="",filename="";
                    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
                    if(isMultipart)
                    {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    List items = null;
                    try
                    {
                    items = upload.parseRequest(request);
                    }
                    catch (FileUploadException e)
                    {
                        e.printStackTrace();
                    }
                    Iterator itr = items.iterator();
                    while (itr.hasNext())
                    {
                    FileItem item = (FileItem) itr.next();
                    if (item.isFormField())
                     {
                        String itemName1 = item.getFieldName();
                         String value=item.getString();
            
                        if(itemName1.equals("cat")) //control's name - textbox name
                       {
                            category=value;//variable name
                            //out.println(category);
                       }
		    else if(itemName1.equals("subcat")) //control's name - textbox name
                    {
                    subcat=value;//variable name
                    //out.println(subcat);
                     }
		   else if(itemName1.equals("brand")) //control's name - textbox name
                       {
                        brand=value;//variable name
                        //out.println(brand);
                        }
		   else if(itemName1.equals("name")) //control's name - textbox name
                    {
                pname=value;//variable name
                //out.println(pname);
                 }
		   else if(itemName1.equals("price")) //control's name - textbox name
           {
                price=value;//variable name
                //out.println(price);
           }
		   else if(itemName1.equals("dis")) //control's name - textbox name
           {
                discount=value;//variable name
               // out.println(discount);
           }
		   else if(itemName1.equals("st")) //control's name - textbox name
           {
                avst=value;//variable name
                //out.println(avst);
           }
		   else if(itemName1.equals("desc")) //control's name - textbox name
           {
                description=value;//variable name
                //out.println(description);
           }

        }
        else
        {
			
                String type=item.getContentType();
                //long size=item.getSize(); //bytes
                //out.println(size);
                if(type.equals("image/pjpeg") || type.equals("image/jpeg")
                        || type.equals("image/png") || type.equals("image/x-png")
                        || type.equals("image/gif"))
                    {
                java.util.Date obj=new java.util.Date();
                SimpleDateFormat myformat=new SimpleDateFormat("ddMMyyyyhhmmss");
                String newdate=myformat.format(obj);
                String name = new File(item.getName()).getName();
                String userid=email;
                filename=newdate+userid+name;
                String path=config.getServletContext().getRealPath("/") + "userimages\\" + filename;
                File savefile=new File(path);
                item.write(savefile);
                //out.println("<img src='userimages/" + filename + "' width=500px height=300px>");
                }
                else
                    {
                        out.println("Sorry only pictures are allowed to upload");
                    }
                String q="insert into addproduct(catid,subcatid,brid,name,price,discount,stock,description,image)"
                        + " values(?,?,?,?,?,?,?,?,?)";
                      PreparedStatement mystatement=myConnection5.prepareStatement(q);
                      mystatement.setString(1,category);
                      mystatement.setString(2,subcat);
                       mystatement.setString(3,brand);
                        mystatement.setString(4,pname);
                         mystatement.setString(5,price);
                          mystatement.setString(6,discount);
                           mystatement.setString(7,avst);
                            mystatement.setString(8,description);
                             mystatement.setString(9,filename);
                             
                      
                      mystatement.executeUpdate();
                      out.println("product added successfully");
        }
   }

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
            
			  
              
          
          
          
      
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("              </table>\r\n");
      out.write("            </form>              <p class=\"headlinedesign\">&nbsp;</p></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table></td>\r\n");
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
