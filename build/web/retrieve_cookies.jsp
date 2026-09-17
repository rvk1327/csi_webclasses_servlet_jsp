<%-- 
    Document   : retrieve_cookies
    Created on : 17 Sep, 2026, 10:20:41 AM
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
        <%
            Cookie[] ch = request.getCookies();
            for(int i=0; i<ch.length; i++) {
                out.println("Key : " + ch[i].getName() + "<br>");
                out.println("Value: " + ch[i].getValue() + "<br>");
                out.println("-----------------------------------------<br>");
            }
        %>
    </body>
</html>
