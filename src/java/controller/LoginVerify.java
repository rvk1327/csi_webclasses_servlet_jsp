package controller;

import dbutil.CollegeContext;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import model.Student;

public class LoginVerify implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse res = (HttpServletResponse)response;
        
        String uname = req.getParameter("txtusr");
        String password = req.getParameter("txtpass");
        
        List<Student> lst = CollegeContext.getContext().getData("from Student where username='"+uname+"'");
        Iterator<Student> ite = lst.iterator();
        if(ite.hasNext()) {
            Student student = ite.next();
            String pass_db = student.getPassword();
            
            if(password.equals(pass_db)) {
                chain.doFilter(request, response);            
            }else {
                res.sendRedirect("studentlogin.html");
            }
        
        }else {
            res.sendRedirect("studentlogin.html");
        }
    }

    @Override
    public void destroy() {
        
    }
    
    
}
