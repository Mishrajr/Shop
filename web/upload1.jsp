<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form action="" method="post" enctype="multipart/form-data"  name="form1" id="form1">
  <table width="500" border="0" cellspacing="0                                                                                     0" cellpadding="0">
    <tr>
      <td>name</td>
      <td><input type="text" name="name" id="name" /></td>
    </tr>
    <tr>
      <td>email</td>
      <td><input type="text" name="email" id="email" /></td>
    </tr>
    <tr>
      <td>File Upload</td>
      <td><input type="file" name="image" id="image" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="s1" id="s1" value="Submit" />
          <%
		  String email="";
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
            String name;
            if(itemName1.equals("name")) //control's name - textbox name
           {
                name=value;//variable name
                out.println(name);
           }
		    else if(itemName1.equals("email")) //control's name - textbox name
           {
                email=value;//variable name
                out.println(email);
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
                String userid=email;
                String filename=newdate+userid+item.getName();
                String path=config.getServletContext().getRealPath("/") + "userimages\\" + filename;
                File savefile=new File(path);
                item.write(savefile);
                out.println("<img src='userimages/" + filename + "' width=500px height=300px>");
                }
                else
                    {
                        out.println("Sorry only pictures are allowed to upload");
                    }
        }
   }

   }
	  %></td>
    </tr>
  </table>
</form>
</body>
</html>