<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
Thread.sleep(1000);
if(request.getParameter("n")!=null)
{
String name=request.getParameter("n");
if(name.equals(""))
out.print("Welcome Guest");
else
out.print("Welcome "+name);
}
else if(request.getParameter("email")!=null)
{
	String email=request.getParameter("email");
	     
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from signup where email=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,email);
                      
                      
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         out.print("Username already Exist");
                     }
                         else
                         {
                          out.print("username valid");
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
}
else if(request.getParameter("cat")!=null)
{ 
out.print("<option>Choose SubCategory</option>");
    String cat=request.getParameter("cat");
    Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from subcategory where catid=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                       mystatement.setString(1,cat);
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         do
                         {
                         out.print("<option value="+answer.getString("subcatid")+">"+answer.getString("name")+"</option>");
                         }while(answer.next());
                     }
                     else
                     {
                           out.print("<option>No subcategory available</option>");
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
}
else if(request.getParameter("subcat")!=null)
{
   
    //String subcat=request.getParameter("subcat");
    Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from brand ";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                    
					  // mystatement.setString(1,subcat);
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         do
                         {
                         out.print("<option value="+answer.getString("brandid")+">"+answer.getString("name")+"</option>");
                         }while(answer.next());
                     }
                     else
                     {
                           out.print("<option>No brand available</option>");
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
}

else if(request.getParameter("mycat")!=null)
{
                  String cat,pname;
                  cat=request.getParameter("mycat");
                  pname=request.getParameter("pname");
                  Connection myConnection2;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from addproduct where catid=? and name like ?";
                      PreparedStatement mystatement=myConnection2.prepareStatement(q);
                      mystatement.setString(1,cat);
                      mystatement.setString(2,"%"+pname+"%");
                      
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                          int col=1;
                          out.print("<table width='80%' align='center'>");
                          do
                          {
                              if(col==1)
                              {
                                  out.print("<tr>");
                              }
                              out.print("<td><img src='userimages/"+answer.getString("image")+"' width='250px'"
                                      + "heigth='250px'><br>"+answer.getString("name")+"<td>");
                              col++;
                              if(col==4)
                              {
                                  out.print("</tr>");
                                  col=1;
                              }
                          }while(answer.next());
                          out.print("</table>");
                      }
                         else
                         {
                           out.print("Product not found");
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
}
              else if(request.getParameter("min")!=null)
              {
                  String min,max;
                  min=request.getParameter("min");
                  max=request.getParameter("max");
                  Connection myConnection2;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from addproduct where price between ? and ?";
                      PreparedStatement mystatement=myConnection2.prepareStatement(q);
                      mystatement.setString(1,min);
                      mystatement.setString(2,max);
                      
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                          int col=1;
                          out.print("<table width='80%' align='center'>");
                          do
                          {
                              if(col==1)
                              {
                                  out.print("<tr>");
                              }
                              out.print("<td><img src='userimages/"+answer.getString("image")+"' width='250px'"
                                      + "heigth='250px'><br>"+answer.getString("name")+"<td>");
                              col++;
                              if(col==4)
                              {
                                  out.print("</tr>");
                                  col=1;
                              }
                          }while(answer.next());
                          out.print("</table>");
                      }
                         else
                         {
                            response.sendRedirect("index.jsp");
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
              }
			  
			 
              
              
%>