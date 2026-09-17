<%-- 
    Document   : StudentData
    Created on : 16 Sep, 2026, 10:25:46 AM
    Author     : DELL
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Student"%>
<%@page import="dbutil.CollegeContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </head>
    <body>
    <center><h1>Student Information</h1></center>
    
    <div class="container">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Username</th>
                <th>Gender</th>
                <th>Technologies</th>
                <th>Country</th>
                <th>Email ID</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Student> lst = CollegeContext.getContext().getData("from Student");
                Iterator<Student> ite = lst.iterator();
                while(ite.hasNext()) {
                    Student student = ite.next(); %>
                    <tr>
                        <td><%=student.getUsername()%></td>
                        <td><%=student.getGender()%></td>
                        <td><%=student.getTech()%></td>
                        <td><%=student.getCtry()%></td>
                        <td><%=student.getEmailid()%></td>
                        <td><a href="deletedata?uname=<%=student.getUsername()%>"><img src="imgs/delete.jpg" height="20" width="20"/></a></td>
                        <td><a href="updatedata.jsp?uname=<%=student.getUsername()%>"><img src="imgs/update.png" height="20" width="20"/></a></td>
                    </tr>
                <% 
                }
            %>
        </tbody>
    </table>
    
    </div>
    </body>
</html>
