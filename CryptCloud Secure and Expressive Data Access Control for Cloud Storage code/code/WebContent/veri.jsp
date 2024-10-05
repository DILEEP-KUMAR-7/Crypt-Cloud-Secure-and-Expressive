<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Actionpage.Dbconn1"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%


    String skey = request.getParameter("secretkey");
    System.out.println("Secret Key : " + skey);

    Connection con = Dbconn1.getConnection();
    Statement st = con.createStatement();

    try {
        
        ResultSet rs = st.executeQuery("select * from upload where skey='" + skey + "'");
        if (rs.next()) {
            session.setAttribute("ssid", rs.getString("id"));


            response.sendRedirect("verified.jsp?msg=Verification_Successfully");
        } else {
            response.sendRedirect("verify.jsp?msg=Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>