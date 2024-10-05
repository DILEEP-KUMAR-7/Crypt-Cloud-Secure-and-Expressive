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
        ResultSet rs = st.executeQuery("select * from ureg where name='" + name + "' AND pass='" + pass + "' AND status='Yes'");
        if (rs.next()) {
            session.setAttribute("ssid", rs.getString("id"));
            session.setAttribute("ssname", rs.getString("name"));
            session.setAttribute("ssemail", rs.getString("email"));
            session.setAttribute("ssacces", rs.getString("access"));
            session.setAttribute("ssstate", rs.getString("state"));
            session.setAttribute("sscountry", rs.getString("country"));

            response.sendRedirect("uhome.jsp?msg=success");
        } else {
            response.sendRedirect("user.jsp?msg=Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>