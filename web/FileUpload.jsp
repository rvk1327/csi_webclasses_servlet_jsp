<%-- 
    Document   : FileUpload
    Created on : 16 Sep, 2026, 12:08:59 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="file_upload" method="post" action="fileuploaddata" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>File ID</td>
                    <td><input type="text" name="txtid"/></td>
                </tr>
                
                <tr>
                    <td>Upload File</td>
                    <td><input type="file" name="fileup"/></td>
                </tr>
                
                <tr>
                    <td><input type="submit" value="Upload"/></td>
                    <td><input type="reset" value="Cancel"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
