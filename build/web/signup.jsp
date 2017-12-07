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
			$(document).ready(function(e) {
                $("#name").blur(function(){
					var name=$("#name").val()
					$.ajax({
						url:"ajax1.jsp",
						data:{"n":name},
						type:"post",
						beforeSend: function()
						{
							$("#namemsg").html("<img src='images/pre.gif' width='30px' heigth='30px'>")
						},
						success: function(res)
						{
							$("#namemsg").html(res)
						},
						error:function()
						{
							$("#namemsg").html("error in ajax");
						}
						
						})
					})
					$("#email").blur(function(){
					var name=$("#email").val()
					$.ajax({
						url:"ajax1.jsp",
						data:{"email":name},
						type:"post",
						beforeSend: function()
						{
							$("#emaildiv").html("<img src='images/pre.gif' width='30px' heigth='30px'>")
						},
						success: function(res)
						{
							$("#emaildiv").html(res)
						},
						error:function()
						{
							$("#emaildiv").html("error in ajax");
						}
						
						})
					})
            });
		</script>
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
              <td colspan="3" align="center" bgcolor="#FFFFFF" class="heaslinestyle"><strong>Sign up Form</strong></td>
            </tr>
            <tr>
              <td width="24%" bgcolor="#FFFFFF">Enter name</td>
              <td width="38%" bgcolor="#FFFFFF"><input type="text" name="name" id="name"></td>
              <td width="38%" bgcolor="#FFFFFF"><div id="namemsg"></div></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">Enter Email</td>
              <td bgcolor="#FFFFFF"><input type="text" name="email" id="email"></td>
              <td bgcolor="#FFFFFF"><div id="emaildiv"></div></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">Password</td>
              <td bgcolor="#FFFFFF"><input type="text" name="pass" id="pass"></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">Confirm Password</td>
              <td bgcolor="#FFFFFF"><input type="text" name="cpass" id="cpass"></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">Phone no</td>
              <td bgcolor="#FFFFFF"><input type="text" name="phno" id="phno"></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">Choose Gender</td>
              <td bgcolor="#FFFFFF"><table width="246">
                <tr>
                  <td width="88"><label>
                    <input type="radio" name="gender" value="male" id="gender_0">
                    Male</label></td>
                  <td width="146"><input type="radio" name="gender" value="female" id="gender_1">
Female</td>
                </tr>
              </table></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">Choose City</td>
              <td bgcolor="#FFFFFF"><select name="city" id="city">
              <option>Choose City</option>
                <option value="jalandhar">Jalandhar</option>
                <option value="Mumbai">Mumbai</option>
                <option value="Ludhiana">Ludhiana</option>
                <option value="Delhi">Delhi</option>
              </select></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">DOB</td>
              <td bgcolor="#FFFFFF"><input type="text" name="datepicker" id="datepicker"></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">User Type</td>
              <td bgcolor="#FFFFFF"><select name="utype" id="utype">
                <option value="Admin">admin</option>
                <option value="User">User</option>
              </select></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">Security Question</td>
              <td bgcolor="#FFFFFF"><label>
                <select name="que" id="que">
                  <option>Choose Question</option>
                  <option>Your Favourite Place</option>
                  <option>Your Favourite Food</option>
                  <option>Best Teacher</option>
                </select>
              </label></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">Answer</td>
              <td bgcolor="#FFFFFF"><label>
                <input type="text" name="ans" id="ans">
              </label></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">&nbsp;</td>
              <td bgcolor="#FFFFFF"><input type="submit" name="s1" id="s1" value="Submit" onclick="return abc()"></td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">&nbsp;</td>
              <td bgcolor="#FFFFFF">
                  <%    
          if(request.getParameter("s1")!=null)
          {
              String name,email,pass,cpass,phno,gender,city,dob,utype,que,ans;
              name=request.getParameter("name");
               email=request.getParameter("email");
                pass=request.getParameter("pass");
                 cpass=request.getParameter("cpass");
                  phno=request.getParameter("phno");
				  
                  if(request.getParameter("gender")!=null)
                  {
                      gender=request.getParameter("gender");
                  }
                  else
                  {
                      gender="";
                  }
                  city=request.getParameter("city");
                  dob=request.getParameter("datepicker");
				  utype=request.getParameter("utype");
				  que=request.getParameter("que");
				  ans=request.getParameter("ans");
                  if(pass.equals(cpass))
                  {
              Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="insert into signup values(?,?,MD5(?),?,?,?,?,?,?,?,?)";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,name);
                      mystatement.setString(2,email);
                      mystatement.setString(3,pass + "@#$%#$%^&!*%$#$%");
                      mystatement.setString(4,phno);
                       mystatement.setString(5,gender);
                        mystatement.setString(6,city);
                         mystatement.setString(7,dob);
			mystatement.setString(8,"user");
			mystatement.setString(9,que);
			mystatement.setString(10,ans);
                        mystatement.setString(11,"false");
                      mystatement.executeUpdate();
                      
                      
                      
                      
                      out.println("signup successfully");
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
                  }
                  else
                  {
                      out.print("password mismatch");
                  }
              
              
          }
          
          
      %>
              </td>
              <td bgcolor="#FFFFFF">&nbsp;</td>
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
