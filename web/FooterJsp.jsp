<%-- 
    Document   : FooterJsp
    Created on : 17-Mar-2022, 18:10:22
    Author     : asiay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>         

        <style>

            html,body {
                margin:0;
                padding:0;
                overflow-x:hidden;
                font-family: 'Trebuchet MS', sans-serif;
            }
            /*
     ===========================================================================
           CSS design for footer container
     ===========================================================================
            */
            /*footer pionts css*/
            .ul-footer{
                list-style-type: none;
                margin: 20px 25px;
                overflow: hidden;
                color: black         
            }       

            .a-footer{
                color: black;
                text-decoration: none;
                margin-bottom: 16px;
            }
            /*social media css*/     
            .fa {
                padding: 13px;
                font-size: 24px;
                width: 20px;
                text-align: center;
                text-decoration: none;
                margin: 5px 2px;
                border-radius: 50%
            }

            /*opacity change on mouse hover*/ 
            .fa:hover {
                opacity: 0.7;
            }


            .fa-facebook {
                color: blue;
                margin-left: -19px
            }


            .fa-linkedin {
                color: blue;
            }

            .fa-youtube {
                color: red;
            }
            .fa-twitter {
                color: lightblue;
            }

            .fa-instagram {
                color: lightcoral;
            }
            .fa-whatsapp {
                color: green;
            }

            /*change of design as the window size changes*/ 
            @media only screen and ( max-width: 700px ) {
                .fa {
                    padding: 4px;
                    font-size: 11px;
                    width: 3px;
                    margin: 3px 1px;

                }
            }

        </style>
    </head>
    <body>

        <!--  tag defines a footer for the website -->
        <footer style="background-color: #e1e1eb; box-sizing: border-box; width: 100%; position: relative; left: 0; bottom: 0; margin-top: 150px; padding: 0px; margin-bottom: -12px">
           
          <!--  upper division of the footer -->   
            <div style="position: relative; box-sizing: border-box; width: 100%; display: flex; "> 
                <div style=" position: relative;  width: 30%; margin-right: 2%; margin-left: 6%"> 

                    <ul class = "ul-footer">
                        <li><a class= "a-footer" href="#contact">
                                <h2>About us</h2>
                            </a></li>
                        <li style="padding-bottom:10px"><a href="#home" class= "a-footer">Careers</a></li>
                        <li style="padding-bottom:10px"><a href="#news" class= "a-footer">About us</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class= "a-footer">Media</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class= "a-footer" >Tender Documents</a></li>
                    </ul>
                </div>	

                <div style=" position: relative;  width: 30%; margin-right: 5%"> 
                    <ul class = "ul-footer">
                        <li><a class= "a-footer" href="#contact">  <h2>Information</h2>  </a></li>
                        <li style="padding-bottom:10px"><a href="#home" class="a-footer">Malaysia Aviation Group</a></li>
                        <li style="padding-bottom:10px"><a href="#news" class="a-footer">Corporate Governance</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class="a-footer">Services at the airport</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class="a-footer">Excess and Special Baggage</a></li>
                        <li style="padding-bottom:10px"><a href="#home" class= "a-footer">Special need Service Request Form</a></li>
                        <li style="padding-bottom:10px"><a href="#news" class= "a-footer">Flight Simulator</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class= "a-footer">Optional Service Charges</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class= "a-footer">Terms and conditions of carriage</a></li>
                    </ul>
                </div>	
                
                <div style=" position: relative;  width: 30%; margin-right: 5%"> 
                    <ul class = "ul-footer">
                        <li><a class="a-footer" href="#contact">
                                <h2>Customer Support</h2>
                            </a></li>
                        <li style="padding-bottom:10px"><a href="#home" class="a-footer">Privacy Policy</a></li>
                        <li style="padding-bottom:10px"><a href="#news" class="a-footer">Website Accessibility</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class="a-footer">Frequently Asked Questions</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class="a-footer">Customer Feedback</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class="a-footer">Call Center Numbers</a></li>
                        <li style="padding-bottom:10px"><a href="#contact" class="a-footer">Help and Contacts</a></li>
                    </ul>
                </div>	                  
            </div>

            <hr><br>

            <!--  lower division that contains social media -->
            <div style="position: relative; box-sizing: border-box; width: 100%; display: flex; "> 
                <div style=" position: relative;  width: 30%; margin-right: 2%; margin-left: 6%"> 
                    <h1 style="margin-bottom: 3px">Subscribe</h1>
                    <label> Subscribe to our email newsletter to receive updates</label>
                    <input type="text" name="email" id="email" placeholder="Email Address" style="height: 24px; margin-top: 5px">
                    <input type="submit" name="submit" value="Subscribe" style="height: 28px">
                </div>	

                <div style=" position: relative;  width: 30%; margin-right: 2%; margin-left: 6%"> 
                    <h1 style="margin-bottom: 3px;">Get Our App</h1>
                    Book and manage your flight easily<br><br>
                    <button style="background-image: url('images\\google play.png'); background-size: 100% 100%; height:7vh; width: 10vw"></button>
                    <button style="background-image: url('images\\Apple-Store.png'); background-size: 100% 100%; height:7vh; width: 10vw"></button>
                </div>

                <div style=" position: relative;  width: 30%; margin-right: 2%; margin-left: 6%"> 
                    <h1 style="margin-bottom: 3px;">Social Media</h1>
                    Connect with us on social media<br>
                    <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
                    <a href="https://twitter.com/" class="fa fa-twitter"></a>
                    <a href="https://www.linkedin.com/" class="fa fa-linkedin"></a>
                    <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
                    <a href="https://www.instagram.com/" class="fa fa-instagram"></a>
                    <a href="https://www.whatsapp.com/" class="fa fa-whatsapp"></a>
                </div>
            </div>	

            <br><br><hr><br>
            <p align='center' style = "color: gray; padding-bottom: 13px"> &copy; Copyright 2022 JWP Airlines. All rights reserved.</p>
        </footer>
    </body>
</html>
