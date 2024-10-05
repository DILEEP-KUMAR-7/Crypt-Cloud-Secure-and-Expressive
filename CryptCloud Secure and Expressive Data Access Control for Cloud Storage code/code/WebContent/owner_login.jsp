<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Actionpage.Dbconn1"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String name = request.getParameter("name");
    String pass = request.getParameter("pass");

    System.out.println("Username : " + name);
    System.out.println("Password : " + pass);
    Connection con = Dbconn1.getConnection();
    Statement st = con.createStatement();

    try {
        ResultSet rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "'");
        if (rs.next()) {
            session.setAttribute("sid", rs.getString("id"));
            session.setAttribute("sname", rs.getString("name"));
            session.setAttribute("semail", rs.getString("email"));
            session.setAttribute("sstate", rs.getString("state"));
            session.setAttribute("scountry", rs.getString("country"));
            
            response.sendRedirect("ohome.jsp?msg=success");
        } else {
            response.sendRedirect("owner.jsp?msg=Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>