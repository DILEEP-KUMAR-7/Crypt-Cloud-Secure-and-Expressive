<%-- 
    Document   : userlogin
    Created on : Nov 8, 2018, 11:40:00 AM
    Author     : Java
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String name = request.getParameter("name");
    String pass = request.getParameter("pass");

    System.out.println("Username : " + name);
    System.out.println("Password : " + pass);


    try {

        if (name.equalsIgnoreCase("auditor") & pass.equalsIgnoreCase("auditor")) {
            response.sendRedirect("auditor_home.jsp?msg=success");
        } else {
            response.sendRedirect("auditor.jsp?msg=Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>