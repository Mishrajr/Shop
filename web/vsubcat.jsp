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
              <td width="51%" valign="top"><p class="headlinedesign">List of Category</p></td>
              <td width="18%" valign="center">Choose Catgeory</td>
              <td width="31%" valign="center"><select name="cat" id="cat">
                <option>Choose Category</option>
                <%
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
              %>
              </select>
              <input type="submit" name="s1" id="s1" value="Search"></td>
            </tr>
            <tr>
              <td colspan="3" valign="top"><%
                 if(request.getParameter("s1")!=null)
                 {
              Connection myConnection;
              try
              {
                  String cat=request.getParameter("cat");
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from subcategory where catid=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
				mystatement.setString(1,cat);
                         ResultSet answer=mystatement.executeQuery();
						 if(answer.next())
						 {
							 out.print("<table width='80%' align='center'><tr>"
                                                                 + "<th>Name</th><th>Description</th><th>Delete</th><th>Update</th></tr>");
							 do
							 {
								out.print( "<tr><td>"+answer.getString("name")+"</td><td>"+answer.getString("description")+"</td>"
                                                                        + "<td><a href='deletesubcat.jsp?id="+answer.getString("subcatid")+"'>Delete</a></td>"
                                                                        + "</td><td><a href='updatesubcat.jsp?id="+answer.getString("subcatid")+"'>Update</a></td></tr>"); 
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
