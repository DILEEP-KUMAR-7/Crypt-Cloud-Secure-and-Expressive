<%-- 
    Document   : index
    Created on : Oct 29, 2018, 4:28:08 PM
    Author     : Java
--%>

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
                <div class="header-content clearfix"> <a class="logo" href="#">Auditor</a>
                    <nav class="navigation" role="navigation">
                        <ul class="primary-nav">
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="auditor.jsp">Auditor</a></li>
                            <li><a href="owner.jsp">Data Owner</a></li>
                            <li><a href="user.jsp">Data User</a></li>
                            <li><a href="cloud.jsp">Cloud</a></li>
                            <li><a href="sta.jsp">STA</a></li>
                        </ul>
                    </nav>
                    <a href="#" class="nav-toggle">Menu<span></span></a> </div>
            </header>
            <!-- Navigation Section --> 
        </section>
        <!-- Header Section --> 
        <!-- Slider Section -->
        <section id="header-slider" class="section">
            <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>
                <!-- Wrapper for slides -->
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
                </div>
                <!-- Controls --> 
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span></a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span></a></div>
        </section>
        <!-- Slider Section --> 
        <style>
            .container {
                padding: 16px;
                background-color: white;
            }

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Overwrite default styles of hr */
            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Set a style for the submit button */
            .registerbtn {
                background-color: #4CAF50;
                color: white;
                padding: 16px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .registerbtn:hover {
                opacity: 1;
            }

            /* Add a blue text color to links */
            a {
                color: dodgerblue;
            }

            /* Set a grey background color and center the text of the "sign in" section */
            .signin {
                background-color: #f1f1f1;
                text-align: center;
            }
        </style>
        <!-- Service Section -->
        <section id="services" class="section services">
            <div class="container-fluid">
                <div class="row">
                    <div>
                        <div style="width: 50%; float:left">
                            <center><br><img style="width: 400px; height: 300px" src="images/cloud.jpg"> </center>
                        </div>

                        <div style="width: 50%; float:right">
                            <left><h3 style="font-family: fantasy">AUDITOR lOGIN PAGE</h3></left>
                            <!--<p>Please fill in this form to create an account.</p>-->
                            <hr>
                            <form action="auditor_login.jsp" method="get">
                            <table style="width:100%">
                                <tr>
                                    <td><label for="name"><b>User Name</b></label></td>
                                    <td><input style="width:250px; height:50px" type="text" placeholder="Enter Name" name="name" required></td> 
                                </tr>
                                <tr>
                                    <td><label for="psw-repeat"><b>Password</b></label></td>
                                    <td><input style="width:250px; height:50px" type="password" placeholder="Password" name="pass" required><br></td> 
                                </tr>
                                <tr>
                                    <td></td>
                               <td><button style="width:150px; height:50px" type="submit" class="registerbtn">Login</button></td> 
                                </tr>
                               
                            </table>
                                </form>
                            
                            <br>
                            
                            

                            
                        </div>
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
