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
    <script>
    $(document).ready(function(e) {
        $("#cat").change(function(){
			var cat=$(this).val();
			$.ajax({
						url:"ajax1.jsp",
						data:{"cat":cat},
						type:"post",
						beforeSend: function()
						{
							$("#catdiv").html("<img src='images/pre.gif' width='30px' heigth='30px'>")
						},
						success: function(res)
						{
							$("#catdiv").html("")
							$("#subcat").html(res)
						},
						error:function()
						{
							$("#catdiv").html("error in ajax");
						}
						
						})
			})
			
			
    });
	</script>
    <script>
	$(document).ready(function(e) {
			$("#s1").click(function(){
			 var tom=$("#cat").val()
			 var jerry=$("#subcat").val()
			 $.ajax({
				 url:"ajax2.jsp",
				 data:{"mytom":tom,"myjerry":jerry},
				 type:"POST",
				 success: function(result)
				 {
					 $("#grid1").html(result)
				 },
				 error:function()
				 {
					 $("#grid1").html("error in ajax")
				 }
				 
				 })
			  })
			
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
          <table width="500" border="0" align="center" cellpadding="0" cellspacing="0                                                                                     0">
            <tr>
              <td width="248">Choose Category</td>
              <td width="252"><select name="cat" id="cat">
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
              <div id="catdiv"></div></td>
            </tr>
            <tr>
              <td>Choose Subcategory</td>
              <td><select name="subcat" id="subcat">
                <option>Choose SubCategory</option>
              </select></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="button" name="s1" id="s1" value="Submit"></td>
            </tr>
          </table>
          <div id="grid1"></div>
        </form></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
