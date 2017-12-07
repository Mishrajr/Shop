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
          <table width="80%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="43%">&nbsp;</td>
              <td width="57%">&nbsp;</td>
            </tr>
            <tr>
              <td>Mode of Payment</td>
              <td><p>
                <label>
                  <input type="radio" name="mode" value="radio" id="mode_0">
                  Cash</label>
                <br>
                <label>
                  <input type="radio" name="mode" value="radio" id="mode_1">
                  Credit cart</label>
                <br>
              </p></td>
            </tr>
            <tr>
              <td>Holder name</td>
              <td><label>
                <input type="text" name="hname" id="hname">
              </label></td>
            </tr>
            <tr>
              <td>Phone no</td>
              <td><label>
                <input type="text" name="phno" id="phno">
              </label></td>
            </tr>
            <tr>
              <td>Address</td>
              <td><label>
                <textarea name="add" id="add"></textarea>
              </label></td>
            </tr>
            <tr>
              <td>Totalcost</td>
              <td width="53%"><div id="catdiv"><%
                    out.print(session.getAttribute("final").toString()); %>
                  </div> 
              </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="s1" id="s1" value="Submit">
                  <%
                  
                  if(request.getParameter("s1")!=null)
                  {
                      try
                      {
                      Class.forName("com.mysql.jdbc.Driver");
                  Connection myConnection1=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String hname,phno,address;
              hname=request.getParameter("hname");
               phno=request.getParameter("phno");
               address=request.getParameter("add");
               
                      
                      String q="insert into ordertable(hname,phno,address,tcost) "
                              + "values(?,?,?,?)";
                      PreparedStatement mystatement=myConnection1.prepareStatement(q);
                     mystatement.setString(1, hname);
                     mystatement.setString(2, phno);
                     mystatement.setString(3,address);
                     mystatement.setString(4,session.getAttribute("final").toString());
                     mystatement.executeUpdate();
                      out.print("your order is successfully published");
                    
                  }
                  catch(Exception e)
                  {
                      out.println("Error in query due to "+ e.getMessage());
                  }
              }
              catch(Exception e)
              {
                  out.print("Error in connection due to "+ e.getMessage());
              } 
                  }
				  Connection myConnection2;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q1="select * from addtocart where username=? and pid=?";
                      PreparedStatement mystatement1=myConnection2.prepareStatement(q1);
                      mystatement1.setString(1,session.getAttribute("username").toString());
                       mystatement1.setString(2,request.getParameter("id"));
                       ResultSet res=mystatement1.executeQuery();
                       if(res.next())
                       {
                           do
                           {
                           String q="update addproduct set stock=stock-? where pid=?";
                           PreparedStatement mystatement=myConnection2.prepareStatement(q);
                           int a=res.getInt("qty");
                            mystatement.setInt(1, a);
                            mystatement.executeUpdate();
                            String q2="insert into orderhistory value(orderno,pname,pid,image,qty,price,tcost)";
                           PreparedStatement mystatement2=myConnection2.prepareStatement(q2);
                            mystatement2.setString(2,request.getParameter("pname"));
                           mystatement2.setString(3,request.getParameter("pid"));
                           mystatement2.setString(4,request.getParameter("image"));
                           mystatement2.setString(5,request.getParameter("qty"));
                           mystatement2.setString(6,request.getParameter("price"));
                           mystatement2.setString(7,request.getParameter("tcost"));
                           mystatement2.executeUpdate(); 
                           
                          
                            
                            String q3="delete from addtocart where username=?";
                             
                        PreparedStatement mystatement3=myConnection2.prepareStatement(q3);
                        mystatement3.setString(1,session.getAttribute("username").toString());
                        mystatement3.executeUpdate();
                           }while(res.next());
                            
                       }
                       
                     //response.sendRedirect("");
                    
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
              </td>
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
