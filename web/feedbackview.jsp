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
        <td><form name="form1" method="post" action="">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="51%" valign="top"><p class="headlinedesign">List of feedback</p></td>
              <td width="18%" valign="center"><input type="text" name="search" id="search"></td>
              <td width="31%" valign="center"><input type="submit" name="Find" id="Find" value="Find"></td>
            </tr>
            <tr>
              <td colspan="3" valign="top"><%
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
                      String q="select * from feed where name like ?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
					    mystatement.setString(1,"%"+name+"%");
                         ResultSet answer=mystatement.executeQuery();
						 if(answer.next())
						 {
							 out.print("<table width='80%' align='center'><tr><th>Name</th>"
                                                                 + "<th>Email</th><th>Phone No</th><th>message</th><th>Delete</th></tr>");
							 do
							 {
								out.print( "<tr align='center'><td>"+answer.getString("name")+"</td><td>"+
                                                                        answer.getString("email")+"</td><td>"+answer.getString("phno")+"</td><td>"+answer.getString("message")
                                                                        + "</td><td><a href='deleteMamber.jsp?id="+answer.getString("email")+"'>Delete</a></td></tr>"); 
							 }while(answer.next());
                                                         out.print("</table>");
						 }
						 else
						 {
							 out.print("no feedback available");
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
			
			
			%></td>
            </tr>
          </table>
        </form></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
