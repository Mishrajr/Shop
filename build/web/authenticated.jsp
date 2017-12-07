<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
try
        {
            Class.forName("com.mysql.jdbc.Driver"); //driver communication

            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
            try
            {
                    String b="update signup set authenticated=? where email=?";

                    PreparedStatement mystatement=con.prepareStatement(b);

                    mystatement.setString(1, "true");
                    mystatement.setString(2, request.getParameter("email"));
                  
                    int x=mystatement.executeUpdate();
                    if(x==1)
                        {
                                session.setAttribute("username", request.getParameter("name"));
                                response.sendRedirect("index.jsp");
                        }

            }
            catch(Exception e)
            {
                out.println("Query error" + e.getMessage());
                e.printStackTrace();
            }
               con.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
            out.println("Connection error" + e.getMessage());
        }
%>