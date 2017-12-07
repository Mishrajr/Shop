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
    <script src="jquery/jquery.js"></script>
    <script>
    	$(document).ready(function(e) {
           $("#que").hide();
		   $("#change").hide();
		   $("#s1").click(function(){
			   var email=$("#email").val();
			   $.ajax({
				   url:"forgot.jsp",
				   data:{"email":email},
				     dataType:"json",
				   type:"POST",
				   beforeSend: function()
				   {
					  $("#pre").html("<images/pre.gif>"); 
					},
				   success: function(result)
				   {
					   if($.trim(result.msg)==1)
					   {
						  $("#emaildiv").hide(2000);
						  $("#que") .show(2000);
						  $("#vque").html(result.question);
					   }
					   else if($.trim(result)==0)
					   {
						   $("#pre").html("Wrong username")
					   }
					   else
					   {
						   $("#pre").html(result)
					   }
				   },
				   error: function()
				   {
					   $("#pre").html("error in ajax")
				   }
				   })
				   
			   })
			   $("#s2").click(function(){
				   var email=$("#email").val();
				   var answer=$("#ans").val();
				  $.ajax({
					  url:"forgot.jsp",
					  data:{"uname":email,"answer":answer},
					  type:"POST",
					  beforeSend: function()
					  {
						   $("#pre2").html("<images/pre.gif>"); 
					  },
					  success: function(result)
					  {
						  if($.trim(result)==1)
						  {
							  $("#que").hide(2000)
							  $("#change").show(2000)
						  }
						  else if($.trim(result)==0)
						  {
							  $("#pre2").html("wrong answer");
						  }
						  else 
						  {
							  $("#pre2").html(result);
						  }
						  
						  },
						  error: function()
						  {
							  
							  $("#pre2").html("error in ajax")
							  
							  }
					  
					  })
					  
				   
				   
				   })
				   
				   $("#s3").click(function(){
					   var pass=$("#pass").val();
					   var cpass=$("#cpass").val();
					   var uname2=$("#email").val();
					   if(pass==cpass)
					   {
						   $.ajax({
							   url:"forgot.jsp",
							   data:{"uname3":uname2,"pass":pass},
							   type:"POST",
							   beforeSend: function()
							   {
								  $("#pre3").html("<images/pre.gif>");   
								},
								success:function(result)
								{
									 $("#pre3").html(result)  
								},
								error: function()
						  {
							  
							  $("#pre2").html("error in ajax")
							  
							  }
							   })
					   }
					   else
					   {
						 $("#pre3").html("password mismatch")  
					   }
					   })
			   
        });
    
    </script>
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
                <table width="585" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div id="emaildiv">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><h2>Forgot Password</h2></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>Enter Your Email</td>
                          <td><label>
                            <input type="text" name="email" id="email">
                          </label></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><input type="button" name="s1" id="s1" value="Submit">
                          <div id="pre"></div></td>
                        </tr>
                      </table>
                    </div></td>
                  </tr>
                  <tr>
                    <td><div id="que">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><h2>Security Question</h2></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>Question</td>
                          <td><div id="vque"></div></td>
                        </tr>
                        <tr>
                          <td>Answer</td>
                          <td><label>
                            <input type="text" name="ans" id="ans">
                          </label></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><input type="button" name="s2" id="s2" value="Submit">
                          <div id="pre2"></div></td>
                        </tr>
                      </table>
                    </div></td>
                  </tr>
                  <tr>
                    <td><div id="change">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><h2>Change Password</h2></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>New Password</td>
                          <td><label>
                            <input type="password" name="pass" id="pass">
                          </label></td>
                        </tr>
                        <tr>
                          <td>Confirm Password</td>
                          <td><label>
                            <input type="password" name="cpass" id="cpass">
                          </label></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><input type="button" name="s3" id="s3" value="Submit">
                          <div id="pre3"></div></td>
                        </tr>
                      </table>
                    </div></td>
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
