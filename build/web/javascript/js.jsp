  <%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript">
/*function abc()
{
	document.write("The window is loaded");
}*/
function abc1()
{
	var a,b,c;
	a=document.form1.name.value;
	b=document.form1.email.value;
	c=document.form1.phno.value;
	document.getElementById("msgdiv").innerHTML="Name is "+a+"<br>email is "+b+"<br>Phone no is "+c;
}
function abc2(a)
{
	document.getElementById("msgdiv").innerHTML="Enter your "+a
}
function abc3()
{
	document.getElementById("msgdiv").innerHTML=""
}
function hello(a)
{
	document.getElementById(a).style.background="pink";
}
function hello1(a)
{
	document.getElementById(a).style.background="white";
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body onload="abc()">
<form id="form1" name="form1" method="post" action="">
  <table width="500" border="0" cellspacing="0                                                                                     0" cellpadding="0">
    <tr>
      <td width="173">&nbsp;</td>
      <td width="327">&nbsp;</td>
    </tr>
    <tr>
      <td>Enter name</td>
      <td><input type="text" name="name" id="name"onfocus="hello(this.id)" onblur="hello1(this.id)"/></td>
    </tr>
    <tr>
      <td>enter email</td>
      <td><input type="text" name="email" id="email" onfocus="hello(this.id)"/></td>
    </tr>
    <tr>
      <td>enter phno</td>
      <td><input type="text" name="phno" id="phno" onfocus="hello(this.id)"/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="button" name="s1" id="s1" value="Submit" onclick="abc1();"/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><div id="msgdiv"></div></td>
    </tr>
  </table>
</form>
</body>
</html>