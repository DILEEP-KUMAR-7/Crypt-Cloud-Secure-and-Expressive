<%@page import="Actionpage.Dbconn1" %>
<%@page import="java.sql.*" %>
<%@page import="Algorithms.Encryption" %>
<%@page import="javax.crypto.KeyGenerator" %>
<%@page import="javax.crypto.SecretKey" %>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64" %>
<%

    Encryption enc = new Encryption();
    String id = (String) session.getAttribute("ssid");
    String str = request.getParameter("str");
    KeyGenerator keyGen = KeyGenerator.getInstance("AES");
    keyGen.init(128);
    SecretKey secretKey = keyGen.generateKey();
    System.out.println("secret key:" + secretKey);
    byte[] b = secretKey.getEncoded();//encoding secretkey
    String skey = Base64.encode(b);
    System.out.println("Converted secretkey to string:" + skey);
    str = enc.encrypt(str, secretKey);
    System.out.println("id : " + id);
    System.out.println("str : " + str);


    Connection conn = Dbconn1.getConnection();
    Statement st = conn.createStatement();

    try {
        int in = st.executeUpdate("update upload set filedata='" + str + "', skey='" + skey + "' where id='" + id + "'");
        if (in != 0) {

            response.sendRedirect("update.jsp?msg=succes");
        } else {
            response.sendRedirect("update.jsp?msgg=failed");
        }


    } catch (Exception ex) {
        ex.printStackTrace();
    }



%>