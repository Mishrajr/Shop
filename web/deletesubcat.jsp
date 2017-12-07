<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
String subcatid=request.getParameter("id");
 
              
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="delete from subcategory where subcatid=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,subcatid);
                   
                      int num=mystatement.executeUpdate();
                      if(num==1)
                      {
                        response.sendRedirect("vsubcat.jsp");
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
                  




%>