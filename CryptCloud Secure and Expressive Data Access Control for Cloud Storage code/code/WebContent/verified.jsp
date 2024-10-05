<%-- 
    Document   : index
    Created on : Oct 29, 2018, 4:28:08 PM
    Author     : Java
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Actionpage.Dbconn1"%>
<%@page import="java.sql.Connection"%>
<%@page import="Actionpage.Downloads"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang=""> <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>CryptCloud+: Secure and Expressive Data
            Access Control for Cloud Storage</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/flexslider.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    </head>

    <body>

        <!-- Header Section -->
        <section class="tophead" role="tophead"> 
            <!-- Navigation Section -->
            <header id="header">
                <div class="header-content clearfix"> <a class="logo" href="#">User Home</a>
                    <nav class="navigation" role="navigation">
                        <ul class="primary-nav">
                            <li><a htef=""></a></li>
                            <li><a href="uhome.jsp">User Home</a></li>
                            <li><a href="file_view1.jsp">File View</a></li>
                            <li><a href="verify.jsp">Verify</a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                    </nav>
                    <a href="#" class="nav-toggle">Menu<span></span></a> </div>
            </header>
            <!-- Navigation Section --> 
        </section>
        <!-- Header Section --> 
        <!-- Slider Section -->
        <section id="header-slider" class="section">
            <!--            <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
                             Indicators 
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                            </ol>
                             Wrapper for slides 
                            <div class="carousel-inner" role="listbox">
                                <div class="item active"> <img src="images/slied 1.jpg" alt="Chania">
                                    <div class="carousel-caption">
                                        <h3></h3>
                                        <p style="font-size: 26px; color: #000">CryptCloud+: Secure and Expressive Data
                                            Access Control for Cloud Storage</p>
                                    </div>
                                </div>
                                <div class="item"> <img src="images/slied 2.jpg" alt="Chania">
                                    <div class="carousel-caption">
                                        <h3></h3>
                                        <p style="font-size: 26px; color: white">CryptCloud+: Secure and Expressive Data
                                            Access Control for Cloud Storage</p>
                                    </div>
                                </div>
                            </div>-->
            <!-- Controls --> 
            <!--<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span></a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span></a></div>-->
    </section>
    <!-- Slider Section --> 
    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #31b0d5;
            color: white;
        }
    </style>
    <!-- Service Section -->
    <section id="services" class="section services">
        <h3 style="font-family: fantasy"><center>File Details</center></h3>

        <div><table id="customers">
                <tr>
                    <th>File ID</th>
                    <th>Owner Name</th>
                    <th>File Name</th>
                    <th>File Key</th>
                    <th>Update</th>
                    <th>Download</th>
                </tr>
                <tr>
                    <%
                        String id = (String) session.getAttribute("ssid");
                        System.out.println("------------ " + id);
                        Connection con = Dbconn1.getConnection();
                        Statement st = con.createStatement();
                        try {
                            ResultSet rs = st.executeQuery("select * from upload where id='" + id + "'");
                            while (rs.next()) {

                    %>                  
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("owner")%></td>
                    <td><%=rs.getString("fname")%></td>
                    <td><%=rs.getString("fkey")%></td>
                    <td style="color: #080808"><a style="color:#31b0d5" href="update.jsp?id=<%=rs.getString("id")%>">Update</a></td>
                    <td style="color: #080808"><a style="color: #db3615" href="Download?id=<%=rs.getString("id")%>">Download</a></td>
                    <%                                }
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }

                    %>

                </tr>



            </table>
        </div>


    </div>
</div>
</section>
<!-- Service Section --> 

<!-- portfolio grid section -->


<!-- Testimonials section -->

<!-- footer section -->
<footer id="contact" class="footer">

</footer>
<!-- footer section --> 

<!-- JS FILES --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flexslider-min.js"></script> 
<script src="js/retina.min.js"></script> 
<script src="js/modernizr.js"></script> 
<script src="js/main.js"></script>
</body>
</html>
