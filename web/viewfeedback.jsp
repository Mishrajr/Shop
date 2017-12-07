<%-- 
    Document   : index
    Created on : Dec 28, 2015, 3:13:21 PM
    Author     : gtb student
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JSP Page</title>
        <link href="css/mystyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    body {
	background-color: #FFD5F1;
}
    </style>
    </head>
    <body>
    <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0                                                                                     0">
      <tr>
          <td>
              <%@include file="adminheader.jsp"%>
             </td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0                                                                                     0" cellpadding="0">
          <tr>
            <td>List Of Feedback</td>
          </tr>
          <tr>
            <td><%
     
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from feed";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      
                      
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         out.print("<table width='80%' align='center'><tr><td>Name</td><td>Email</td><td>Phone No</td>"
                                 + "<td>Message</td><td>Delete</td></tr>");
                         do
                         {
                             out.print("<tr><td>"+answer.getString("name")+"</td><td>"+answer.getString("email")+
                                     "</td><td>"+answer.getString("phno")+"</td><td>"+answer.getString("msg")+"</td>"
                                     + "<td><a href='deletefeed.jsp?id="+answer.getString("email")+"'>Delete</a></td></tr>");
                         }while(answer.next());
                         out.print("</table>");
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
            
            
            %></td>
          </tr>
        </table></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
