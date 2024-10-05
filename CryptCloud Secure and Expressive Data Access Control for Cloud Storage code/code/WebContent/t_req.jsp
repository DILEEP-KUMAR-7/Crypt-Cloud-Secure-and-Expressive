<%@page import="Actionpage.Dbconn1" %>
<%@page import="java.sql.*" %>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        String id = request.getParameter("id");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud", "root", "");
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select * from upload where id = '" + id + "'");
        if (rs.next()) {

            String fname = rs.getString("fname");
            String fkey = rs.getString("id");
            String attri = rs.getString("attri");
            String oid = rs.getString("oid");
            String name = rs.getString("owner");


            System.out.println("Request Detaild : " + fname + fkey + attri + oid + name);

            String Status = "Waiting";


            Connection con = Dbconn1.getConnection();
            Statement st = con.createStatement();


            String sql = "insert into t_request(fname, skey, attri, oid, oname, status) values ('" + fname + "','" + fkey + "','" + attri + "','" + oid + "','" + name + "','" + Status + "')";

            int x = st.executeUpdate(sql);
            if (x != 0) {
                response.sendRedirect("trace_req.jsp?msg=Request_send_Successfully");

            } else {
                response.sendRedirect("trace_req.jsp?message=fail");

            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>