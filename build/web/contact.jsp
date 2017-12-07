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
			if(document.form1.pass.value.length<6)
			{
				alert("Password is too small");
				return false;
			}
			var p1,p2;
			p1=document.form1.pass.value;
			p2=document.form1.cpass.value;
			if(p1!=p2)
			{
				alert("password mismatch");
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
          <p>&nbsp;</p>
          <table width="70%" border="0" align="center" cellpadding="10" cellspacing="0                                                                                     0">
            <tr>
              <td colspan="3" align="center" bgcolor="#FFA4E1" class="heaslinestyle"><strong>Contact us Form</strong></td>
            </tr>
            <tr>
              <td width="24%" bgcolor="#FFA4E1">Enter name</td>
              <td width="38%" bgcolor="#FFA4E1"><input type="text" name="name" id="name"></td>
              <td width="38%" bgcolor="#FFA4E1"><div id="namemsg"></div></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">Enter Email</td>
              <td bgcolor="#FFA4E1"><input type="text" name="email" id="email"></td>
              <td bgcolor="#FFA4E1"><div id="emaildiv"></div></td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">Phone no</td>
              <td bgcolor="#FFA4E1"><input type="text" name="phno" id="phno"></td>
              <td bgcolor="#FFA4E1">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">Query</td>
              <td bgcolor="#FFA4E1"><textarea name="query" id="query"></textarea></td>
              <td bgcolor="#FFA4E1">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">&nbsp;</td>
              <td bgcolor="#FFA4E1">&nbsp; </td>
              <td bgcolor="#FFA4E1">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFA4E1">&nbsp;</td>
              <td bgcolor="#FFA4E1">
                  <%    
          if(request.getParameter("s1")!=null)
          {
              String name,email,phno,query;
              name=request.getParameter("name");
               email=request.getParameter("email");
               phno=request.getParameter("phno");
               query=request.getParameter("query");
               
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="insert into contactus(name,email,phno,query) values(?,?,?,?)";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,name);
                      mystatement.setString(2,email);
                       mystatement.setString(3,phno);
                       mystatement.setString(4,query);
                      mystatement.executeUpdate();
                      out.println("contactus  successfully");
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
              <td bgcolor="#FFA4E1">&nbsp;</td>
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
