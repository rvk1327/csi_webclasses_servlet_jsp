<%-- 
    Document   : CoreJSTL
    Created on : 17 Sep, 2026, 9:49:31 AM
    Author     : DELL
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1><% 
                String college_name = "CSI Engineering";
                Date d = new Date();
                out.println("welcome " + college_name);
                out.println(d.getDay());
        %></h1>
        
        
        <c:set var="clg_name" value="CSI Engineering"/>
        
        <h1><c:out value="${clg_name}"/></h1>
        
        
    </body>
</html>
