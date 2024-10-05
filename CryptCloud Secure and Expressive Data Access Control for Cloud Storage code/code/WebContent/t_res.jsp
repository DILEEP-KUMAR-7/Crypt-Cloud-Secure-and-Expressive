<%@page import="Actionpage.Dbconn1" %>
<%@page import="java.sql.*" %>
<%@page import="Algorithms.Encryption" %>
<%@page import="javax.crypto.KeyGenerator" %>
<%@page import="javax.crypto.SecretKey" %>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64" %>
<%

    String id = request.getParameter("id");



    Connection conn = Dbconn1.getConnection();
    Statement st = conn.createStatement();

    try {
        int in = st.executeUpdate("update t_request set status='Permission Granted ' where id='" + id + "'");
        if (in != 0) {

            response.sendRedirect("ftrace.jsp?msg=succes");
        } else {
            response.sendRedirect("ftrace.jsp?msgg=failed");
        }


    } catch (Exception ex) {
        ex.printStackTrace();
    }



%>