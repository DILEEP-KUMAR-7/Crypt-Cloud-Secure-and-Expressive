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
            String fkey = rs.getString("skey");
            String attri = rs.getString("attri");
            String oid = rs.getString("oid");

            String uid = (String) session.getAttribute("ssid");
            String uname = (String) session.getAttribute("ssname");
            String uemail = (String) session.getAttribute("ssemail");
            String state = (String) session.getAttribute("ssstate");
            String country = (String) session.getAttribute("sscountry");


            System.out.println("Request Detaild : " + fname + fkey + attri + oid + uid + uname + uemail + state + country);

            String Status = "No";


            Connection con = Dbconn1.getConnection();
            Statement st = con.createStatement();


            String sql = "insert into request(fname, skey, attri, oid, uid, uname, email, state, country, status) values ('" + fname + "','" + fkey + "','" + attri + "','" + oid + "','" + uid + "','" + uname + "','" + uemail + "','" + state + "','" + country + "','" + Status + "')";

            int x = st.executeUpdate(sql);
            if (x != 0) {
                response.sendRedirect("file_view1.jsp?msg=Request_send_Successfully");

            } else {
                response.sendRedirect("file_view1.jsp?message=fail");

            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>