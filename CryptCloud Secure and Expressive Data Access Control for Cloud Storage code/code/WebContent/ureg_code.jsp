<%@page import="Actionpage.Dbconn1" %>
<%@page import="java.sql.*" %>
<%


    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String psw = request.getParameter("pass");
    String gender = request.getParameter("gender");
    String state = request.getParameter("state");
    String access = request.getParameter("access");
    String country = request.getParameter("country");

    System.out.println("username : " + name);
    System.out.println("email : " + email);
    System.out.println("psw : " + psw);
    System.out.println("gender : " + gender);
    System.out.println("state : " + state);
    System.out.println("Role : " + access);
    System.out.println("country : " + country);


    Connection conn = Dbconn1.getConnection();
    Statement st = conn.createStatement();

    try {
        int in = st.executeUpdate("insert into ureg (name, email, pass, gender, state, access, country, status) values ('" + name + "', '" + email + "','" + psw + "','" + gender + "','" + state + "','" + access + "','" + country + "', 'No')");
        if (in != 0) {

            response.sendRedirect("user.jsp?msg=succes");
        } else {
            response.sendRedirect("register.jsp?msgg=failed");
        }


    } catch (Exception ex) {
        ex.printStackTrace();
    }



%>