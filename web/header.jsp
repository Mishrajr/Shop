<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="right"><table width="500" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" align="center" bgcolor="#FFC4EC" class="heaslinestyle">Welcome Guest</td>
        <td width="20%" align="center" bgcolor="#FFC4EC">
        <%
		  if(session.getAttribute("username")==null)
		  out.print("<a href='signup.jsp' class='linkdesign'>Sign up</a>");
                  else
                  out.print ("<a href='Changepass.jsp' class='linkdesign'>Change Password</a>");  
		%>
        </td>
        <td width="20%" align="center" bgcolor="#FFC4EC">
          <%
                if(session.getAttribute("username")==null)
		  out.print("<a href='signin.jsp' class='linkdesign'>Sign In</a>");
                  else
                  out.print ("<a href='signout.jsp' class='linkdesign'>Sign Out</a>");  
		%>
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="img/banner.png" width="1037" height="300" alt="banner"></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" align="center" bgcolor="#FFA4E1"><a href="index.jsp" class="linkdesign">Home</a></td>
        <td width="20%" align="center" bgcolor="#FFA4E1"><a href="product.jsp" class="linkdesign">Products</a></td>
        <td width="20%" align="center" bgcolor="#FFA4E1"><a href="search.jsp" class="linkdesign">Search</a></td>
        <td width="20%" align="center" bgcolor="#FFA4E1"><a href="contact.jsp" class="linkdesign">Contact Us</a></td>
        <td width="20%" align="center" bgcolor="#FFA4E1"><a href="feed.jsp" class="linkdesign">Feedback</a></td>
      </tr>
    </table></td>
  </tr>
</table>
