/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Actionpage;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Actionpage.Dbconn1;
import Algorithms.Decryption;

/**
 *
 * @author java4
 */
public class Downloads extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String fileid = request.getParameter("id");


            String fname = null, fkey = null;
            String is = null;

            Connection con = Dbconn1.getConnection();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();



//            HttpSession session = request.getSession(true);
//            String uname = (String) session.getAttribute("ssname");




            ResultSet rt = st.executeQuery("select * from upload where id='" + fileid + "'");

            if (rt.next()) {
                fname = rt.getString("filename");
                is = rt.getString("filedata");
                fkey = rt.getString("skey");
            } else {
                out.println("error while retreiving data");

            }
            Decryption abe = new Decryption();


            String content = abe.decrypt(is.toString(), fkey);
            response.setHeader("Content-Disposition", "attachment;filename=\"" + fname + "\"'.txt'");
            out.write(content);



//            Calendar cal = Calendar.getInstance();
//            DateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//            String time = dateformat.format(cal.getTime());
//            System.out.println("download time:" + time);

//            st1.executeUpdate("insert into downloads (filename,username,time)values('" + fname + "','" + uname + "','" + time + "')");


        } catch (Exception e) {
            out.println(e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
