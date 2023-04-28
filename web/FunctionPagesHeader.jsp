<%-- 
    Document   : FunctionPagesHeader
    Created on : 20-Mar-2022, 11:43:42
    Author     : asiay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           
                /* upper menu division container */
                .upper-menu {
                height: 30px;
                width: 100%;
                text-align: center;
                box-sizing: border-box; 
                display: block;
                text-decoration: none;
                padding: 10px 46px;
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
            
             /* lower menu division container */
              .lower-menu {
                width: 100%;
                box-sizing: border-box;
                background-color: white;
         
            }
            
                .lower-menu ul{
                 list-style-type: none; 
                 margin-left: -170px;  
                 padding: 0; 
                 overflow: hidden;   
                 list-style-type: none;
            }
            
                .li-menu a {
                display: block;
                color: #000000;
                text-align: center;
                padding: 0px 36px;
                text-decoration: none;
                height: 40px
                
            }

             /* color change on mause hover */
            .li-menu a:hover:not(.active) {
                background-color: black;
                color: white
            }
            
             /* menu dropdown container */
            nav{
                position: absolute;
                margin-left: 87.5%;
                margin-top: -3%;
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
                z-index:2;

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
                width:150px;
                border: 1px solid black;
                height: 30px;
                line-height: 30px;
                -webkit-transition: all 0.5s ease-in-out; // slow transition motion

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
               -webkit-transform: perspective(350px) rotateX(-90deg); /* 90deg makes li disappear*/
            }

            .main li:nth-child(even){
                margin-top:-65px;
                -webkit-transform-origin: bottom;
                -webkit-transform: perspective(350px) rotateX(90deg); /* 90deg makes li disappear */
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
        </style>
    </head>
    <body>
        
        
        <!-- Menu Bar-->
        <div style="background-color: white"> 

            <!-- Upper Menu-->
            <div class ="upper-menu">
                <a href="searchingFlights.jsp" target="_blank">
                    <span class='span-menu'>  Search</span>
                    <img  src="images//search.png" class="menu-image" />
                </a>   
                <a href="#" target="_blank">
                    <span class='span-menu'>  Notification</span>
                    <img  src="images//notification.png" class="menu-image" />
                </a>  

            </div> 

            <!-- Lower Menu-->
            <div class="lower-menu" >
                <ul class="lower-menu ul">
                    <li style = "  float: right;" class="li-menu a" ><a href="Experiences.jsp"><h3>Experiences</h3></a></li>
                    <li style = "  float: right;" class="li-menu a" ><a href="Destinations.jsp"><h3>Destinations</h3></a></li>
                    <li style = "  float: right;" class="li-menu a"><a href="HomePage.jsp"><h3>Home</h3></a></li>
                </ul>
            </div>

               <!-- Menu Drop down-->
            <nav>
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

        </div>
    </body>
</html>
