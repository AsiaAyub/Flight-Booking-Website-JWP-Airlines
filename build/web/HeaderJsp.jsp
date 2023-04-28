<%-- 
    Document   : HeaderJsp
    Created on : 17-Mar-2022, 18:09:48
    Author     : asiay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>

        <style>
                   

            /*
            ===========================================================================
                  CSS design for Menu Bar, slideshow container and booking form
            ===========================================================================
            */

            /* individual Slide container */
            .mySlides {
                display: none;
                background-size:  100% 100%;
               -webkit-box-shadow: inset 0px 680px 680px -550px white;  
               -moz-box-shadow: inset 0px 680px 680px -550px white; 
               -o-box-shadow:inset 0px 680px 680px -550px white;
                box-shadow:inset 0px 680px 680px -550px white;
                height: 520px;
            }

            /* Slideshow container */
            .slideshow-container {
                max-width: 100%;
                position: relative;


            }

            /* menu container */
            .div1{
                position:relative;
                width:100%;
                margin-top: 18px;

                
            }
             /* lower menu division container */
            .lower-menu {
                width: 100%;
                box-sizing: border-box; /* includes padding and border to overall width and height*/
         
            }
            
            .lower-menu ul{
                 list-style-type: none; 
                 margin-left: -170px;  
                 padding: 0; 
                 overflow: hidden;   
            }

            /* upper menu division container */
            .upper-menu {
                height: 30px;
                width: 100%;
                text-align: center;
                box-sizing: border-box; 
                display: block;
                text-decoration: none;
                padding: 0px 46px;
            }
            
            /* image for menu */
            .menu-image{
                border-width:0px;
                float:right; 
                width:18px;
                height: 18px
            }
         /* text within a tag */
            .span-menu{
                float:right;
                margin-right: 40px; 
                margin-left: 10px;
                color: black;
            }

  
            .li-menu a {
                display: block;
                color: black;
                text-align: center;
                padding: 1px 36px;
                text-decoration: none;
                height: 40px
                
            }

            .li-menu a:hover {
                background-color: darkblue;
                color: white
            }

           
            /* menu dropdown container */
            nav{
                position: absolute;
                margin-left: 87.5%;
                margin-top: -20px;
            }
            
         /* design for first li inside nav */
           .hov{
                position:relative;
                height: 40px;
                width:112px;
                background: transparent;
                color: black;
                font-size: 18px;
                font-weight:bold;
                text-align: center;
                list-style:none;
                z-index:2; /*shows the order of elemts in terms of appearance*/
               

            }
            .nav-image {
                border-width:0px;
                position: absolute;
                width: 15%;
                height: 15px;
                margin: 4% 2%;
            }
            
            ul,li{
                margin: 0;
                padding: 0;
            }
            
              /* design for first list inside list element inside nav */
            .main{
                position:absolute;
                z-index:1;

            }
            .main li{
                list-style:none;
                background: black;
                opacity: 0.6;
                color:white;
                width:150px;
                padding: 0 5px;
                height: 30px;
                line-height: 30px;
                -webkit-transition: all 0.5s ease-in-out; /* slow transition motion*/
                -moz-transition: all 0.5s ease-in-out;
                -o-transition: all 0.5s ease-in-out;
                transition: all 0.5s ease-in-out;
            }
            
             .main li a{
                text-decoration:none;
                color:white;
                font-size: small;
                width:100px;
                padding: 0 5px;
            }

            .main li:nth-child(odd){
                -webkit-transform-origin: top;
                -webkit-transform: perspective(350px) rotateX(-90deg);/* -90deg makes li disappear*/
            }

            .main li:nth-child(even){
                margin-top:-65px;
                -webkit-transform-origin: bottom;
                -webkit-transform: perspective(350px) rotateX(90deg); /* 90deg makes li disappear*/
            }


       /* design for rotation degree when hover over it*/
            .hov:hover li:nth-child(odd){
                -webkit-transform-origin: top;
                -webkit-transform: perspective(350px) rotateX(0deg);
                margin-top:0;
            }

            .hov:hover li:nth-child(even){
                -webkit-transform-origin: bottom;
                -webkit-transform: perspective(350px) rotateX(0deg);
                margin-top:0;
            }

            .main li:first-child{
                margin-top:0;
            }

       
               /* design for window size change */
              @media only screen and (max-width: 700px) {
                 .upper-menu {
                     padding: 0px 16px;
                      }
                      .li-menu a{
                          padding: 0px 16px;
                      }
                      .lower-menu ul{
                          margin-left: -80px;
                      }
                      
                      nav{
                           margin-left: 77.5%;
                           margin-top: 12%;
                      }
                     }

            /* booking form container */
            .booking-box {
                position: absolute;
                width: 400px;
                padding: 40px;
                transform: translate(30%, 27%); /*changes the position of object from its original position*/
                background: black;
                box-sizing: border-box;
                -webkit-box-shadow: 0 15px 25px rgba(0,0,0,.6);
                -moz-box-shadow:  0 15px 25px rgba(0,0,0,.6);
                -o-box-shadow: 0 15px 25px rgba(0,0,0,.6);
                box-shadow:  0 15px 25px rgba(0,0,0,.6);
                border-radius: 10px;
                opacity:0.77;
                
            }

            .booking-box h2 {
                margin: 0 0 30px;
                padding: 0;
                color: white;
                text-align: center;
            }

               /* design for div inside form in booking box */
             .user-box {
                position: relative;
            }

            .booking-box .user-box input {
                width: 100%;
                padding: 10px 0;
                font-size: 13px;
                color: white;
                margin-bottom: 30px;
                border: none;
                border-bottom: 1px solid white;
                outline: none;
                background: transparent;
            }
            .booking-box .user-box label {
                position: absolute;
                top:-20px;
                left: 0;
                padding: 10px 0px;
                font-size: 14px;
                color: #03e9f4;
                pointer-events: none; /*if the element reacts to the mause*/
            }
            

            .booking-box form a {
                position: relative;
                display: inline-block;
                padding: 10px 20px;
                color: #03e9f4;
                font-size: 16px;
                text-decoration: none;
                text-transform: uppercase;
                overflow: hidden;
                transition: .5s;
                margin-top: 22px;
                letter-spacing: 4px
            }

            .booking-box a:hover {
                background: #03e9f4;
                color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4, 0 0 100px #03e9f4; /*number of different shadows*/
            }

           /* design for span inside a tag */
            .booking-box a span {
                position: absolute;
                display: block;
            }

             /* design for upper span inside a tag */
            .booking-box a span:nth-child(1) {
                top: 0;
                left: -100%;
                width: 100%;
                height: 2px;
                background: linear-gradient(90deg, transparent, #03e9f4);
                animation: btn-anim1 1s linear infinite;
            }

             /* how the animation takes affect */
            @keyframes btn-anim1 {
                0% {
                    left: -100%;
                }
                50%,100% {
                    left: 100%;
                }
            }

                /* design for right span inside a tag */
            .booking-box a span:nth-child(2) {
                top: -100%;
                right: 0;
                width: 2px;
                height: 100%;
                background: linear-gradient(180deg, transparent, #03e9f4);
                animation: btn-anim2 1s linear infinite;
                animation-delay: .25s
            }

            @keyframes btn-anim2 {
                0% {
                    top: -100%;
                }
                50%,100% {
                    top: 100%;
                }
            }

              /* design for left span inside a tag */
            .booking-box a span:nth-child(3) {
                bottom: 0;
                right: -100%;
                width: 100%;
                height: 2px;
                background: linear-gradient(270deg, transparent, #03e9f4); 
                animation: btn-anim3 1s linear infinite; /*animation name, duration, timing funtion, count*/
                animation-delay: .5s
            }

            @keyframes btn-anim3 {
                0% { /* 0% is the beginning of the animation*/
                    right: -100%; /*start from -100% right*/
                }
                50%,100% {
                    right: 100%;
                }
            }

                /* design for bottom span inside a tag */
            .booking-box a span:nth-child(4) {
                bottom: -100%;
                left: 0;
                width: 2px;
                height: 100%;
                background: linear-gradient(360deg, transparent, #03e9f4);
                animation: btn-anim4 1s linear infinite;
                animation-delay: .75s
            }

            @keyframes btn-anim4 {
                0% {
                    bottom: -100%;
                }
                50%,100% {
                    bottom: 100%;
                }
            }
               
            /* design for second and third slider text */
            .slide2-text{
                position: absolute;
                margin-top: 10%;
                margin-left: 2%;
                width: 100%;
                padding: 40px;
                box-sizing: border-box;
            }
            
              .slide2-text h1 {
                margin: 0 0 25px;
                padding: 0;
                text-align: center;
            }

            /* The dots/bullets below the */
            .dot {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: grey;
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;
            }

            .active {
                background-color: blue;
            }

            /* Fading animation */
            .fade {
                -webkit-animation-name: fade; /*-webkit is a term for rendering engine of some browsers to show the effect to users*/
                -webkit-animation-duration: 1.5s;
                animation-name: fade;
                animation-duration: 1.5s;
            }

            @-webkit-keyframes fade { /*The @keyframes rule specifies the animation code.*/
                from {opacity: .4} 
                to {opacity: 1}
            }

            @keyframes fade { /*The @keyframes rule specifies the animation code.*/
                from {opacity: .4} 
                to {opacity: 1}
            }
        </style>


    </head>
    <body>
        <!-- Menu Bar-->
        <div class="div1"> 

            <!-- upper Menu. each a tag has an image and span for text-->
            <div class ="upper-menu">
                <a href="WebsiteFunctions//searchingFlights.jsp" target="_blank">
                    <span class='span-menu'>Search</span>
                    <img  src="images//search.png" class="menu-image" />
                </a>   
                <a href="#" target="_blank">
                    <span class='span-menu'>Notification</span>
                    <img  src="images//notification.png" class="menu-image" />
                </a>  
                <a href="UserLogin.jsp" target="_blank">
                    <span class='span-menu'> 
                        <%  // to change the text of the span, either for user name or login/sign up
                            
                            if (request.getParameter("name") != null) {
                                out.print(request.getParameter("name"));
                            } else {
                                out.print("login / sign-up");
                            }
                        %>
                    </span>
                    <img  src="images//user.png" class="menu-image" />
                </a>  
            </div> 

                    <!-- Lower Menu-->
            <div class ="lower-menu">
                <ul class = "lower-menu ul">
                    <li style = "  float: right;" class="li-menu a"><a href="Experiences.jsp"><h3>Experiences</h3></a></li>
                    <li style = "  float: right;" class="li-menu a"><a href="Destinations.jsp"><h3>Destinations</h3></a></li>
                    <li style = "  float: right;" class="li-menu a"><a href="HomePage.jsp"><h3>Home</h3></a></li>                        
                </ul></div> 

        </div>

                    <!-- Menu drop down. -->
        <nav> <!--An element that defines a set of navigation links-->
            <ul>
                <li class="hov">Menu
                    <img  src="images//menu1.png" class="nav-image"/>    
                    <ul class="main">
                        <li><a href="bookingFlightsForm.jsp">Book A Flight</a></li>
                        <li><a href="CheckIn.jsp">Check In</a></li>
                        <li><a href="searchingFlights.jsp">Search A Flight</a></li>
                        <li><a href="BookingManagement.jsp">Manage Booking</a></li>
                    </ul>
                </li></ul>
        </nav>
             
         <!-- Logo image at the top of the screen. -->
        <img  src="images//logo.png" style="border-width:0px; width: 10%; height: 75px; 
              position:absolute; margin: -6% 2%" />

        <!--START OF THE UPPER PART OF THE PAGE. THE SLIDE SHOW-->
        <div class="slideshow-container">

             <!-- first division. -->
            <div class="mySlides fade" style="background-image: url('images\\image1.jpg')">  

                 <!-- form for searching flights. -->
                <div class="booking-box">
                    <h2>Your next adventure is just a search away</h2>
                    <form action="searchingFlights.jsp" method="get">
                        <div class="user-box">
                            <input type="text" name="departure" id="departure" required="">
                            <label>From</label>

                        </div>
                        <div class="user-box">
                            <input type="text" name="arrival" id="arrival" required="">
                            <label>To</label>
                        </div>
                        <a href="searchingFlights.jsp">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            Continue
                        </a>
                    </form>
                </div>

            </div>

              <!-- second division. -->
            <div class="mySlides fade" style="background-image: url('images\\image2.jpg')">  
                <div class="slide2-text" >

                    <h1>The Best Airline In Asia. The One And Only, JWP Airlines</h1>
                    <img src="images\\Award pic.png" style="width:10%; margin-left: 300px">
                    <img src="images\\Award pic.png" style="width:10%;">
                    <img src="images\\Award pic.png" style="width:10%;">
                    <img src="images\\Award pic.png" style="width:10%;">
                </div>

            </div>

               <!-- Third division. -->
            <div class="mySlides fade" style="background-image: url('images\\img33.jpg')">  
                <div class="slide2-text" >

                    <h1>The Best Airline In Asia. The One And Only, JWP Airlines</h1>
                    <img src="images\\Award pic.png" style="width:10%; margin-left: 300px">
                    <img src="images\\Award pic.png" style="width:10%;">
                    <img src="images\\Award pic.png" style="width:10%;">
                    <img src="images\\Award pic.png" style="width:10%;">
                </div>

            </div>
            <button style=" margin-top: -20%; position:absolute; border: none; background-image: url('images\\back.jpg');background-size: 100% 100%; width:5%; height:10vh" onclick="plusDivs(-1)">  </button> 
            <button style="margin-top: -20%; position:absolute; border: none; background-image: url('images\\next.jpg');margin-left: 95%;background-size: 100% 100%; width:5%; height:10vh" onclick="plusDivs(1)">  </button> 

        </div>
        <br>

        <!--THE THREE DOTS THE UPPER PART OF THE PAGE-->
        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
        </div>



        <!-- JAVA SCRIPT CODES FOR PAGE RESPONSIVENESS-->
        <script>


            var slideIndex = 1;
            showDivs(slideIndex);

            function plusDivs(n) {
                showDivs(slideIndex += n);
            }

            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");

                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }

              

                if (n > x.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = x.length
                }
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                x[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }






        </script>
    </body>
</html>
