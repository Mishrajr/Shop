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
          <p>
            <%
         Connection myConnection;
         int finalcost=0;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from addtocart where username=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,session.getAttribute("username").toString());
                    
                      
                     ResultSet answer=mystatement.executeQuery();
                     
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         out.print("<table><tr>"
                                 + "<td>product Image</td>"
                                 + "<td>Product name</td>"
                                 + "<td>Price</td>"
                                 + "<td>Quantity</td>"
                                 + "<td>Total Cost</td>"
                                 + "<td>Delete</td>"
                                 + "</tr>");
                         do
                         {
                             out.print("<tr>"
                                     + "<td><img src='userimages/"+answer.getString("image")+"' width='50px'"
                                     + "heigth='50px'></td>"
                                     + "<td>"+answer.getString("pname")+"</td>"
                                     + "<td>"+answer.getString("price")+"</td>"
                                     +"<td>"+answer.getString("qty")+"</td>"
                                     +"<td>"+answer.getString("tcost")+"</td>"
                                     +"<td>Delete</td>"
                                     + "</tr>");
                             finalcost+=Integer.parseInt(answer.getString("tcost"));
                         }while(answer.next());
                         session.setAttribute("final",finalcost);
                         out.print("</table>");
                     }
                     else
                     {
                      out.println("No product are added in cart");
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
          </p>
          <p>Your Final Cost is <%
		  out.print(finalcost);
		  %></p>
          <p>
            <input type="submit" name="con" id="con" value="Continoue Shopping">
            
            <input type="submit" name="check" id="check" value="Checkout">
            <%
			if(request.getParameter("con")!=null)
			{
				response.sendRedirect("product.jsp");
			}
			if(request.getParameter("check")!=null)
			{
				response.sendRedirect("checkout.jsp");
			}
			%>
          </p>
        </form></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
