<%-- 
    Document   : index
    Created on : Dec 28, 2015, 3:13:21 PM
    Author     : gtb student
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
        String name="",desc="";
        Connection myConnection2;
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from category where catid=?";
                      PreparedStatement mystatement=myConnection2.prepareStatement(q);
                      mystatement.setString(1, id);
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                          name=answer.getString("name");
                          desc=answer.getString("description");
                      }
                         else
                         {
                            out.print("No subcategory are available");
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
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="28%" valign="top"><img src="img/shopping-bags.jpg" width="362" height="303" alt="bags"></td>
            <td width="72%" align="center" valign="middle"><form name="form1" method="post" action="">
              <table width="80%" border="0" cellspacing="10" cellpadding="0">
                <tr>
                  <td colspan="2" align="center">Update  Category</td>
                </tr>
                <tr>
                  <td width="47%">Category</td>
                  <td width="53%"><input type="text" name="cat" id="cat" value="<%
                  out.print(name);
                  %>"></td>
                </tr>
                <tr>
                  <td>Decription</td>
                  <td><textarea name="desc" id="desc"><%
                  out.print(desc);
                  %></textarea></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input type="submit" name="s1" id="s1" value="Submit">
                  <%
                      
          if(request.getParameter("s1")!=null)
          {
              String catname,desc1;
              catname=request.getParameter("cat");
               desc1=request.getParameter("desc");
                
                
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="update category set name=?, description=? where catid=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,catname);
                      mystatement.setString(2,desc1);
                        mystatement.setString(3,request.getParameter("id"));
                      mystatement.executeUpdate();
                      out.println("category updated successfully");
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
                
              
          
          
          
      %>
               
                 
                  </td>
                </tr>
              </table>
            </form>              <p class="headlinedesign">&nbsp;</p></td>
          </tr>
        </table></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
