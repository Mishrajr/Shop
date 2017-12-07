<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
 if(request.getParameter("mytom")!=null)
              {
                  String cat,subcat;
                  cat=request.getParameter("mytom");
                  subcat=request.getParameter("myjerry");
				  
                  Connection myConnection2;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from addproduct where catid=? and subcatid=?";
                      PreparedStatement mystatement=myConnection2.prepareStatement(q);
                      mystatement.setString(1,cat);
                      mystatement.setString(2,subcat);
                      
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
                            out.print("product not found");
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