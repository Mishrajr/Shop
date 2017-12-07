<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

</head>

<body>
<script>
var a=new Date();
var day=a.getDay();
var month=a.getMonth()+1;
var year=a.getFullYear();
var date=a.getDate();
var mm=a.getMinutes();
var hh=a.getHours();
var ss=a.getSeconds();
document.write("Today the date is "+date+"-"+month+"-"+year+"<br> and time is "+mm+":"+hh+":"+ss);
</script>
</body>
</html>