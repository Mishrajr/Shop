<%-- 
    Document   : index
    Created on : Dec 28, 2015, 3:13:21 PM
    Author     : gtb student
--%>

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
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="28%" valign="top"><img src="img/shopping-bags.jpg" width="364" height="303" alt="bags"></td>
            <td width="72%" valign="top"><p class="headlinedesign"><strong>Welcome <%
                if(session.getAttribute("username")==null)
                    out.print("guest");
                else
                    out.print(session.getAttribute("username"));
            
            %></strong></p>
            <p>Types and typical use of shopping bags vary by country:

In many European Union countries, plastic shopping bags are free and common into the 21st century, but their use is becoming less widespread, partly due to environmental legislation, which has led retailers to charge for single-use plastic shopping bags[citation needed]. Ireland, for example, imposed a dedicated plastic bag tax, thus forcing retailers offering plastic bags to charge for them.[1]
Reusable shopping bags are increasingly used, e.g. in E.U. countries where use of single-use plastic shopping bags is in decline. Reusable bags are often made from jute cloth, also known as burlap in the U.S., but sometimes they are also made from plastic; however these reusable plastic bags are sturdier than single-use plastic shopping bags. In the U.S., reusable bags are used as a fashion statement or for advertising.[2]</p></td>
          </tr>
        </table></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
