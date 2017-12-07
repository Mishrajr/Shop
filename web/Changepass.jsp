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
              <td colspan="2" align="center" bgcolor="#FFA4E1" class="heaslinestyle"><strong>Change Password Form</strong></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">Current Password</td>
              <td bgcolor="#FFA4E1"><input type="text" name="cpass" id="cpass"></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">New Password</td>
              <td bgcolor="#FFA4E1"><input type="text" name="npass" id="npass"></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">Confirm New Password</td>
              <td bgcolor="#FFA4E1"><input type="text" name="cnpass" id="cnpass"></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">&nbsp;</td>
              <td bgcolor="#FFA4E1">
                  <input type="submit" name="s1" id="s1" value="Submit">
                  <%    
          if(request.getParameter("s1")!=null)
          {
              String email,cpass,npass,cnpass;
			  email=session.getAttribute("email").toString();
             
              cpass=request.getParameter("cpass");
               npass=request.getParameter("npass");   
                   cnpass=request.getParameter("cnpass");
                   if(npass.equals(cnpass))
                   {
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="update signup set pass=? where email=? and pass=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,npass);
                      mystatement.setString(2,email);
                       mystatement.setString(3,cpass);
                     int num=mystatement.executeUpdate();
                        if(num==1)
                        {
                            out.print("Password Changed");
                        }
                        else
                        {
                            out.print("Incorrect Password");
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
                   else
                  {
                       out.print("Password mismatch");
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
