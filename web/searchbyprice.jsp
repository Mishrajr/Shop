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
		  $(document).ready(function(e) {
		  $("#s1").click(function(){
			 var mini=$("#min").val()
			 var maxx=$("#max").val()
			 $.ajax({
				 url:"ajax1.jsp",
				 data:{"min":mini,"max":maxx},
				 type:"POST",
				 success: function(result)
				 {
					 $("#grid").html(result)
				 },
				 error:function()
				 {
					 $("#grid").html("error in ajax")
				 }
				 
				 })
			  })
		  })
		  
		  
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
          <table width="500" border="0" align="center" cellpadding="0" cellspacing="0                                                                                     0">
            <tr>
              <td width="248">Minimum Price</td>
              <td width="252"><input type="text" name="min" id="min"></td>
            </tr>
            <tr>
              <td>Maximum Price</td>
              <td><input type="text" name="max" id="max"></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="button" name="s1" id="s1" value="Submit"></td>
            </tr>
          </table>
          <div id="grid"></div>
        </form></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
