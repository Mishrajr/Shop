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
        <script>
		function abc()
		{
			document.getElementById("namemsg").innerHTML=""
			document.getElementById("emaildiv").innerHTML=""
			if(document.form1.name.value.length<4)
			{
				document.getElementById("namemsg").innerHTML="name is too short"
				return false;
			}
			if((document.form1.email.value.length<1)||document.form1.email.value.indexOf("@")<3||document.form1.email.value.lastIndexOf(".")<=3)
			{
					document.getElementById("emaildiv").innerHTML="email is not in correct format"
				return false;
			}
			
			
			
		}
     </script>
        <link href="css/mystyle.css" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="js/blitzer/jquery-ui.css">
  		<script src="js/jquery.js"></script>
  		<script src="js/jquery-ui.js"></script>
          <script>
		  $(function() {
			$( "#datepicker" ).datepicker({
				      changeMonth: true,
      					changeYear: true,
						dateFormat: "yy-mm-dd"
				}
			
			);
		  });
		  
  </script>
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
                String catid=request.getParameter("id");
                 
                  Connection myConnection2;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from subcategory where catid=?";
                      PreparedStatement mystatement=myConnection2.prepareStatement(q);
                      mystatement.setString(1, catid);
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
                              out.print("<td><a href='viewproduct.jsp?id="+answer.getString("subcatid")+"'><img src='userimages/03022016113858leather.jpg' width='250px'"
                                      + "heigth='250px'><br>"+answer.getString("name")+"</a><td>");
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
             
              %></p>
         
        </form></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
