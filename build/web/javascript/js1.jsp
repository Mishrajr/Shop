<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script>
function abc()
{
	alert("Welcome to my site")
}
function abc1()
{
	var a=prompt("Enter color");
	//alert(a);
	document.bgColor=a;
}
function abc2()
{
	var a=confirm("Enter color");
	if(a==true)
	{
		window.print() ;
	}
	
}
function abc3(a)
{
	document.getElementById("msg").innerHTML="You are choose "+a
}
function abc4()
{
	document.getElementById("desc").innerHTML="<font color='red'>This is a colored bags images</font>"
}
function abc5()
{
	document.getElementById("desc").innerHTML=""
}
</script>
</head>

<body>

<p>A book is a set of written, printed, illustrated, or blank sheets, made of ink, paper, parchment, or other materials, fastened together to hinge at one side. A single sheet within a book is a leaf, and each side of a leaf is a page. A set of text-filled or illustrated pages produced in electronic format is known as an electronic book, or e-book.
  
  Books may also refer to works of literature, or a main division of such a work. In library and information science, a book is called a monograph, to distinguish it from serial periodicals such as magazines, journals or newspapers. The body of all written works including books is literature. In novels and sometimes other types of books (for example, biographies), a book may be divided into several large sections, also called books (Book 1, Book 2, Book 3, and so on). An avid reader of books is a bibliophile or colloquially, bookworm.<br />
  <select name="country" onchange="abc3(this.value);">
    <option></option>
    <option>India</option>
    <option>Pakistan</option>
    <option>Canada</option>
  </select>
</p>
<p>&nbsp;</p>
<p><img src="../images/shopping-bags.jpg" onmouseover="abc4();" onmouseout="abc5()"width="331" height="253" /></p>
<div id="desc"></div>
<p>&nbsp;</p>
<div id="msg"></div>
</body>
</html>