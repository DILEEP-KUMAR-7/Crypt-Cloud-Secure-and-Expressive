<%@page import="Actionpage.Dbconn1" %>
<%@page import="java.sql.*" %>
<%@page import="Action.MailSender"%>
<%

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    MailSender ms = new MailSender();

    try {
        String id = request.getParameter("id");

        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud", "root", "");

        stmt = conn.createStatement();

        rs = stmt.executeQuery("select * from request where id = '" + id + "'");

        if (rs.next()) {

            String fname = rs.getString("fname");
            String skey = rs.getString("skey");
            String sname = rs.getString("uname");
            String smail = rs.getString("email");

            String Status = "No";

            String message = "File Name : " + fname + "\n\n\tSecret Key : " + skey;

            ms.secretMail(message, sname, smail);


            Connection con = Dbconn1.getConnection();
            Statement st = con.createStatement();


            String sql = ("update request SET status='permission granted' where id='" + id + "'");


            int x = st.executeUpdate(sql);
            if (x != 0) {
                response.sendRedirect("user_req.jsp?msg=Request_send_Successfully");

            } else {
                response.sendRedirect("user_req.jsp?message=fail");

            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>