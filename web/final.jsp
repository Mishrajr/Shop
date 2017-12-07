<%-- 
    Document   : index
    Created on : Dec 28, 2015, 3:13:21 PM
    Author     : gtb student
--%>

<%@page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String cat="",subcat="",brand="",addproduct="",desc="",img="";
int stock=0,price=0,discount=0,rem=0;
Connection myConnection;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select category.name,subcategory.name,brand.name,addproduct.name,"
                              + "price,discount,stock,addproduct.description,image from category,"
                              + "subcategory,brand,addproduct where addproduct.catid=category.catid"
                              + " and addproduct.subcatid=subcategory.subcatid and "
                              + "addproduct.brid=brand.brid and addproduct.productid=?";
                      PreparedStatement mystatement=myConnection.prepareStatement(q);
                      mystatement.setString(1,request.getParameter("id"));
                    
                      
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                     cat=answer.getString("category.name");
                      //  out.print(cat);
                       subcat=answer.getString("subcategory.name");
                      brand=answer.getString("brand.name");
                      addproduct=answer.getString("addproduct.name");
                       price=Integer.parseInt(answer.getString("price"));
                      discount=Integer.parseInt(answer.getString("discount"));
                      rem=price-((price*discount)/100);
                       stock=Integer.parseInt(answer.getString("stock"));
                     desc=answer.getString("addproduct.description");
                 img=answer.getString("image");
                           
                     }
                     else
                     {
                      out.println("wrong username and password");
                     }
                  }
                  catch(Exception e)
                  {
                      out.println("Error in query deu to "+e.getMessage());
                  }
              }
              catch(Exception e)
              {
                  out.print("Error in connection due to "+e.getMessage());
              }

%>
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
                <table width="80%" border="0" align="center" cellpadding="0" cellspacing="10">
                  <tr>
                    <td colspan="3" align="center"><h2>Product Detailas</h2></td>
                  </tr>
                  <tr>
                    <td width="47%" rowspan="10"><%
                    out.print("<img src='userimages/"+img+"' width='250px' height='250px'>");
                    %></td>
                    <td width="47%">Choose Category</td>
                    <td width="53%"><div id="catdiv"><%
                    out.print(cat);
                    %></div></td>
                  </tr>
                  <tr>
                    <td>Choose Subcategory</td>
                     <td width="53%"><div id="subcatdiv"><%
                    out.print(subcat);
                    %></div></td>
                  </tr>
                  <tr>
                    <td>Choose Brand</td>
                    <td width="53%"><div id="branddiv"><%
                    out.print(brand);
                    %></div></td>
                  </tr>
                  <tr>
                    <td>Product Name</td>
                    <td width="53%"><div id="prodiv"><%
                    out.print( addproduct );
                    %></div></td>
                  </tr>
                  <tr>
                    <td>Price</td>
                    <td width="53%"><div id="pricediv"><%
                    out.print(price);
                    %></div></td>
                  </tr>
                  <tr>
                    <td>Discount</td>
                     <td width="53%"><div id="desdiv"><%
                    out.print(discount);
                    %></div></td>
                  </tr>
                  
                  <tr>
                    <td>Description</td>
                     <td width="53%"><div id="descdiv"><%
                    out.print( desc );
                    %></div></td>
                  </tr>
                  <tr>
                    <td>Quantity</td>
                    <td><input type="text" name="qty" id="qty"></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>
                    <%
                    if(stock>0)
                    {
			out.print("<input type='submit' name='s2' id='s2' value='buy'>");
                    }
                    else
                    {
                        out.print("Out of stock");
                    }
					%>
                    <%
					if(request.getParameter("s2")!=null)
                                        {
                                            if(session.getAttribute("username")==null)
                                                    {
                                                        response.sendRedirect("signin.jsp?id="+request.getParameter("id"));
                                                    }
                                            else
                                            {
                                               Connection myConnection1;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection1=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q1="select * from addtocart where username=? and pid=?";
                      PreparedStatement mystatement1=myConnection1.prepareStatement(q1);
                      mystatement1.setString(1,session.getAttribute("username").toString());
                       mystatement1.setString(2,request.getParameter("id"));
                       ResultSet res=mystatement1.executeQuery();
                       if(res.next())
                       {
                           String q="update addtocart set qty=qty+?, tcost=tcost+? where username=? and pid=?";
                           PreparedStatement mystatement=myConnection1.prepareStatement(q);
                            mystatement.setString(1,request.getParameter("qty"));
                             int qty=Integer.parseInt(request.getParameter("qty"));
                             int tcost=rem*qty;
                            mystatement.setInt(2,tcost);
                            mystatement.setString(3, session.getAttribute("username").toString());
                     mystatement.setString(4, request.getParameter("id"));
                     mystatement.executeUpdate();
                       }
                       else
                       {
                      String q="insert into addtocart(pname,price,qty,tcost,image,username,pid) "
                              + "values(?,?,?,?,?,?,?)";
                      PreparedStatement mystatement=myConnection1.prepareStatement(q);
                     mystatement.setString(1, addproduct);
                     mystatement.setInt(2, rem);
                     mystatement.setString(3, request.getParameter("qty"));
                     int qty=Integer.parseInt(request.getParameter("qty"));
                     int tcost=rem*qty;
                     mystatement.setInt(4,tcost );
                     mystatement.setString(5, img);
                     mystatement.setString(6, session.getAttribute("username").toString());
                     mystatement.setString(7, request.getParameter("id"));
                     mystatement.executeUpdate();
                       }
                     response.sendRedirect("addtocart.jsp");
                    
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
                                        }
                                         Connection myConnection1;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection1=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q1="select * from addtocart where username=? and pid=?";
                      PreparedStatement mystatement1=myConnection1.prepareStatement(q1);
                      mystatement1.setString(1,session.getAttribute("username").toString());
                       mystatement1.setString(2,request.getParameter("id"));
                       ResultSet res=mystatement1.executeQuery();
                       if(res.next())
                       {
                           do
                           {
                           String q="update addproduct set stock=stock-? where pid=?";
                           PreparedStatement mystatement=myConnection1.prepareStatement(q);
                           int a=res.getInt("qty");
                            mystatement.setInt(1, a);
                            mystatement.executeUpdate();
                            String q2="insert into orderhistory value(orderno,pname,pid,image,qty,price,tcost)";
                           PreparedStatement mystatement2=myConnection1.prepareStatement(q2);
                            mystatement2.setString(2,request.getParameter("pname"));
                           mystatement2.setString(3,request.getParameter("pid"));
                           mystatement2.setString(4,request.getParameter("image"));
                           mystatement2.setString(5,request.getParameter("qty"));
                           mystatement2.setString(6,request.getParameter("price"));
                           mystatement2.setString(7,request.getParameter("tcost"));
                           mystatement2.executeUpdate(); 
                           
                          
                            
                            String q3="delete from addtocart where username=?";
                             
                        PreparedStatement mystatement3=myConnection1.prepareStatement(q3);
                        mystatement3.setString(1,session.getAttribute("username").toString());
                        mystatement3.executeUpdate();
                           }while(res.next());
                            
                       }
                       
                     response.sendRedirect("index.jsp");
                    
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
          <p>&nbsp;</p>
        </form></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
