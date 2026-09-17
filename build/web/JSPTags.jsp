<%-- 
    Document   : JSPTags
    Created on : 16 Sep, 2026, 9:54:06 AM
    Author     : DELL
    Version    : 1.0 
--%>

<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>

<%!  
    Scanner sc = new Scanner(System.in);
    String st = "ABC";
    Date d = new Date();
    String file_location = "imgs/img1.jpg";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- <title><%-- <% out.println(d.toLocaleString()); %> --%> </title> -->
        <title><%= d.toLocaleString() %></title>
    </head>
    <body>
        <%-- This is for JSP Tags --%>
        <h1>Hello World!</h1>
        
        <img src="<%= file_location %>" height="250" width="250"/>
    </body>
</html>
