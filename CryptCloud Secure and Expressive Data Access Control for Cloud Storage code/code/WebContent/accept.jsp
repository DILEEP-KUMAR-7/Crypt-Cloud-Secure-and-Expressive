<%@page import="Actionpage.Dbconn1" %>
<%@page import="java.sql.*" %>
<%


    String id = request.getParameter("id");


    System.out.println("id : " + id);


    Connection conn = Dbconn1.getConnection();
    Statement st = conn.createStatement();

    try {
        int in = st.executeUpdate("update ureg set status='Yes' where id='" + id + "'");
        if (in != 0) {

            response.sendRedirect("user_de.jsp?msg=succes");
        } else {
            response.sendRedirect("user_de.jsp?msgg=failed");
        }


    } catch (Exception ex) {
        ex.printStackTrace();
    }



%>