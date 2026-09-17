<%-- 
    Document   : CookiesDemo
    Created on : 17 Sep, 2026, 10:13:56 AM
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
            String rollno = "st-1";
            String stname = "abc";
            
            Cookie rollno_cookie = new Cookie("rno", rollno);
            Cookie stname_cookie = new Cookie("name", stname);
            
            rollno_cookie.setMaxAge(60*60*60*60*24);
            stname_cookie.setMaxAge(60*60*60*60*24);
            
            response.addCookie(rollno_cookie);
            response.addCookie(stname_cookie);
            
            response.sendRedirect("retrieve_cookies.jsp");
                    
        %>
    </body>
</html>
