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
              <%@include file="header.jsp"%>
             </td>
      </tr>
      <tr>
        <td><form name="form1" method="post" action="">
                <p><%
                if(request.getParameter("id")!=null)
                {
                    out.println("If u want to visit that page then login first");
                }
                %></p>
          <table width="70%" border="0" align="center" cellpadding="10" cellspacing="0                                                                                     0">
            <tr>
              <td colspan="2" align="center" bgcolor="#FFA4E1" class="heaslinestyle"><strong>Sign up Form</strong></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">Enter Username</td>
              <td bgcolor="#FFA4E1"><input type="text" name="uname" id="uname"></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">Enter Password</td>
              <td bgcolor="#FFA4E1"><input type="text" name="pass" id="pass"></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">&nbsp;</td>
              <td bgcolor="#FFA4E1"><a href="forget.jsp">Forget Password..........</a></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">&nbsp;</td>
              <td bgcolor="#FFA4E1"><input type="submit" name="s1" id="s1" value="Submit"></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">&nbsp;</td>
              <td bgcolor="#FFA4E1">
                  <%    
          if(request.getParameter("s1")!=null)
          {
              String uname,pass;
              uname=request.getParameter("uname");
              
              pass=request.getParameter("pass");
                 
                  
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from signup where email=? and pass=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,uname);
                      mystatement.setString(2,pass);
                      
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         
                         
                         
                         session.setAttribute("username", answer.getString("name"));
						 session.setAttribute("email", answer.getString("email"));
                         if(answer.getString("utype").equals("Admin"))
                         {
			session.setAttribute("admin",answer.getString("email"));			
                             response.sendRedirect("admin.jsp"); 
                         }
                         else
                         {
                             if(request.getParameter("id")!=null)
                             {
                                 response.sendRedirect("moredetails.jsp?id="+request.getParameter("id"));
                             }
                             else
                             {
                                  response.sendRedirect("index.jsp");
                             }
                           
                         }
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
                  }
                 
              
          
          
          
      %>
              </td>
            </tr>
          </table>
          <p>&nbsp;</p>
        </form></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
