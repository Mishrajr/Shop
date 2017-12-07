<%-- 
    Document   : index
    Created on : Dec 28, 2015, 3:13:21 PM
    Author     : gtb student
--%>

<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
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
    
    </head>
    <body>
    <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0                                                                                     0">
      <tr>
          <td>
              <%@include file="adminheader.jsp"%>
             </td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="28%" valign="top"><img src="img/shopping-bags.jpg" width="362" height="303" alt="bags"></td>
            <td width="72%" align="center" valign="middle">
            <form action="" method="post" enctype="multipart/form-data"  name="form1">
              <table width="80%" border="0" cellspacing="10" cellpadding="0">
                <tr>
                  <td colspan="2" align="center">Add Product</td>
                </tr>
                <tr>
                  <td width="47%">Choose Category</td>
                  <td width="53%"><select name="cat" id="cat">
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
                  <td>Choose Brand</td>
                  <td><select name="brand" id="brand">
                  <%
              Connection myConnection2;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection2=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                      String q="select * from brand";
                      PreparedStatement mystatement=myConnection2.prepareStatement(q);
                     ResultSet answer=mystatement.executeQuery();
                     //out.print(answer.getString("email"));
                     if(answer.next())
                     {
                         do
                         {
                         out.print("<option value="+answer.getString("brid")+">"+answer.getString("name")+"</option>");
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
                  <div id="branddiv"></div>
                  </td>
                </tr>
                <tr>
                  <td>Product Name</td>
                  <td><input type="text" name="name" id="name"></td>
                </tr>
                <tr>
                  <td>Price</td>
                  <td><input type="text" name="price" id="price"></td>
                </tr>
                <tr>
                  <td>Discount</td>
                  <td><input type="text" name="dis" id="dis"></td>
                </tr>
                <tr>
                  <td>Available Stock</td>
                  <td><input type="text" name="st" id="st"></td>
                </tr>
                <tr>
                  <td>Description</td>
                  <td><input type="text" name="desc" id="desc"></td>
                </tr>
                <tr>
                  <td>Image</td>
                  <td><input type="file" name="img" id="img"></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input type="submit" name="s2" id="s2" value="Submit">
                  <%
               Connection myConnection5;
              try
              {
                  
                  Class.forName("com.mysql.jdbc.Driver");
                  myConnection5=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                  try
                  {
                    String email="";
                    String category="",subcat="",brand="",price="",discount="",pname="",avst="",description="",filename="";
                    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
                    if(isMultipart)
                    {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    List items = null;
                    try
                    {
                    items = upload.parseRequest(request);
                    }
                    catch (FileUploadException e)
                    {
                        e.printStackTrace();
                    }
                    Iterator itr = items.iterator();
                    while (itr.hasNext())
                    {
                    FileItem item = (FileItem) itr.next();
                    if (item.isFormField())
                     {
                        String itemName1 = item.getFieldName();
                         String value=item.getString();
            
                        if(itemName1.equals("cat")) //control's name - textbox name
                       {
                            category=value;//variable name
                            //out.println(category);
                       }
		    else if(itemName1.equals("subcat")) //control's name - textbox name
                    {
                    subcat=value;//variable name
                    //out.println(subcat);
                     }
		   else if(itemName1.equals("brand")) //control's name - textbox name
                       {
                        brand=value;//variable name
                        //out.println(brand);
                        }
		   else if(itemName1.equals("name")) //control's name - textbox name
                    {
                pname=value;//variable name
                //out.println(pname);
                 }
		   else if(itemName1.equals("price")) //control's name - textbox name
           {
                price=value;//variable name
                //out.println(price);
           }
		   else if(itemName1.equals("dis")) //control's name - textbox name
           {
                discount=value;//variable name
               // out.println(discount);
           }
		   else if(itemName1.equals("st")) //control's name - textbox name
           {
                avst=value;//variable name
                //out.println(avst);
           }
		   else if(itemName1.equals("desc")) //control's name - textbox name
           {
                description=value;//variable name
                //out.println(description);
           }

        }
        else
        {
			
                String type=item.getContentType();
                //long size=item.getSize(); //bytes
                //out.println(size);
                if(type.equals("image/pjpeg") || type.equals("image/jpeg")
                        || type.equals("image/png") || type.equals("image/x-png")
                        || type.equals("image/gif"))
                    {
                java.util.Date obj=new java.util.Date();
                SimpleDateFormat myformat=new SimpleDateFormat("ddMMyyyyhhmmss");
                String newdate=myformat.format(obj);
                String name = new File(item.getName()).getName();
                String userid=email;
                filename=newdate+userid+name;
                String path=config.getServletContext().getRealPath("/") + "userimages\\" + filename;
                File savefile=new File(path);
                item.write(savefile);
                //out.println("<img src='userimages/" + filename + "' width=500px height=300px>");
                }
                else
                    {
                        out.println("Sorry only pictures are allowed to upload");
                    }
                String q="insert into addproduct(catid,subcatid,brid,name,price,discount,stock,description,image)"
                        + " values(?,?,?,?,?,?,?,?,?)";
                      PreparedStatement mystatement=myConnection5.prepareStatement(q);
                      mystatement.setString(1,category);
                      mystatement.setString(2,subcat);
                       mystatement.setString(3,brand);
                        mystatement.setString(4,pname);
                         mystatement.setString(5,price);
                          mystatement.setString(6,discount);
                           mystatement.setString(7,avst);
                            mystatement.setString(8,description);
                             mystatement.setString(9,filename);
                             
                      
                      mystatement.executeUpdate();
                      out.println("product added successfully");
        }
   }

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
            
			  
              
          
          
          
      %></td>
                </tr>
              </table>
            </form>              <p class="headlinedesign">&nbsp;</p></td>
          </tr>
        </table></td>
      </tr>
      <tr>
          <td><%@include file="footer.jsp"%></td>
      </tr>
    </table>
       
    </body>
</html>
