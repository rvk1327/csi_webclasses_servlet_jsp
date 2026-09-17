<%-- 
    Document   : updatedata
    Created on : 16 Sep, 2026, 11:42:32 AM
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
    </head>
    <body>
        <%
            String username = request.getParameter("uname");
            String query = "from Student where username='"+username+"'";
            
            List<Student> lst = CollegeContext.getContext().getData(query);
            Iterator<Student> ite = lst.iterator();
            String password = "" , emailid="";
            if(ite.hasNext()) {
                Student student = ite.next();
                password = student.getPassword();
                emailid = student.getEmailid();
            }
         %>
         
         
         <form name="register_form" method="get" action="updatestudent">
    <table>
        <tr>
            <td>User Name</td>
            <td><input type="text" name="txtusr" value="<%=username%>"/></td>
        </tr>

        <tr>
            <td>Password</td>
            <td><input  type="password" name="txtpass" value="<%=password%>"/></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="radio" name="gender" value="male"/> Male 
            <input type="radio" name="gender" value="female"/> Female</td>
        </tr>
        <tr>
            <td>Technologies</td>
            <td>
                <input type="checkbox" name="tech" value="core_java"/> Core Java
                <input type="checkbox" name="tech" value="spring"/> Spring
                <input type="checkbox" name="tech" value="hibernate"/> Hibernate
                <input type="checkbox" name="tech" value="reactjs"/> React JS
            </td>
        </tr>

        <tr>
            <td>Country</td>
            <td>
                <select name="ctry">
                    <option>Select</option>
                    <option>India</option>
                    <option>Russia</option>
                    <option>Australia</option>
                    <option>America</option>
                    <option>Germany</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>Email  ID</td>
            <td><input type="email" name="txtemail" value="<%=emailid%>"/></td>
        </tr>
        
        <tr>
            <td><input type="submit" value="Update"/></td>
            <td><input type="reset" value="Cancel"/></td>
        </tr>
    </table>
    </form>
    </body>
</html>
