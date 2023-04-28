<%-- 
    Document   : HomePage
    Created on : 17-Mar-2022, 18:35:23
    Author     : asiay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
    
                        html,body {
                margin:0;
                padding:0;
                overflow-x:hidden;
                font-family: 'Trebuchet MS', sans-serif;
            }

          

           /*
            ===========================================================================
                              CSS design for offers container
            ===========================================================================
            */
            .offer-container{
                height:55vh;
                margin:2% 1%; 
                width: 45%; 
                box-sizing: border-box; 
                background-size: 100% 100%; 
                position: relative;
            }
            
            .offer-h{
                color: white;
                margin: 64% 13% 0%;
                 font-size: 25px;
            }

            .offer-p{
                margin: 0% 13% 5%;
                color: white;
                 font-size: 17px;
            }
            
            .offer-button{
                border-radius: 50px;
                color: white;
                border: none;
                background-color: blue;
                height:5vh;
                width: 10vw;
                margin: 0% 13% 0%
            }
            
            /* changes of design as the window size changes */
          @media only screen and (max-width: 700px) {
               .offer-button{
                    width: 15vw;
               }
               offer-h{
                    margin: 10% 13% 0%;
               }
                     }  
                
              /* changes of design as the window size changes */
                 @media only screen and ( max-height: 900px ) {
               .offer-button{
                    width: 15vw;
               }
               offer-h{
                    margin: 0% 13% 0%;
               }
                     }
            /*
            ===========================================================================
                  CSS design for newsletter container 
            ===========================================================================
            */
            .card-container {
                padding: 0 10vw;
                display: flex;
                overflow-x: auto;
                scroll-behavior: smooth;
                margin-top: 5%; 
            }

            /*to hide the scrollbar under the newsletter div*/
            .card-container::-webkit-scrollbar {
                display: none;
            }
            /* news container */
            .news-container {
                position: relative;
                overflow: hidden;
                padding: 10px;
                box-sizing: border-box;
                background-size: 100% 100%;
                -webkit-box-shadow: inset 0px 600px 500px -500px #fff;  
                -moz-box-shadow: inset 0px 600px 500px -500px #fff; 
                -o-box-shadow:inset 0px 600px 500px -500px #fff;
                box-shadow:inset 0px 600px 500px -500px #fff;
            }


        /* next and prevoius button */
            .pre-btn,
            .nxt-btn {
                border: none;
                width: 10vw;
                height: 100%;
                position: absolute;
                top: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                background: linear-gradient(90deg, rgba(255, 255, 255, 0), #fff 100%);
                cursor: pointer;
                z-index: 8;
            }

            .pre-btn {
                left: 0;
                transform: rotate(180deg);
            }

            .nxt-btn {
                right: 0;
            }

            .pre-btn img,
            .nxt-btn img {
                opacity: 0.7;
                width:30%
            }

            .pre-btn:hover img,
            .nxt-btn:hover img {
                opacity: 1;
            }

             /* design for small individual cards */
            .card {
                flex: 0 0 auto;
                width: 30%;
                height: 450px;
                margin-right: 40px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                border-radius: 5px;
                margin-bottom: 1%;
                font-size: 15px;
                
            }

            .card-image-div {
                position: relative;
                width: 100%;
                height: 220px;
                overflow: hidden;
                border-radius: 5px 5px 0 0;
            }
            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);

            }
            .card-image {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
            
            .card-button{
                position: absolute;
                padding: 10px;
                width: 70%;
                color:white;
                text-transform: capitalize;
                border: none;
                outline: none;
                background: blue;
                border-radius: 5px;
                margin: 6% 14%;
                
            }

     
          @media screen and (max-width: 700px) {
               .card{
                  font-size: 10px;
                     }
                        .card-button{
                           width: 70%;
                            margin-bottom: 0%;
                           padding: 5px;
                           font-size: 10px;
                     }
          }
          
                 @media only screen and ( min-height: 900px ) {
               .card{
                     font-size: 10px;
                     }
                     .card-button{
                           width: 70%;
                           margin-bottom: 0%;
                             padding: 5px;
                             font-size: 10px;
                     }
                     }
        </style>

    </head>
    <body>


        <%@ include file="HeaderJsp.jsp" %>


        <br><br>

        <h1 style ="text-align: center; margin-top: 30px">Find Our Offers</h1>

        <!--START OF THE OFFER CONTAINER OF THE PAGE-->
        <div style ="position: relative;  max-width: 100%; margin: 3% 6%; ">
            <!--bigger division that contains smaller ones.-->
            <div style="width: 100%; display: flex; margin-bottom: 5px; position: relative;">
               
                <!--smaller divisions start from here-->
                <div class="offer-container" style="background-image: url('images\\singapore.jpg')">

                    <div style="position: absolute">
                        <h2  class="offer-h">Singapore</h2> 
                        <p  class="offer-p">Economy Lite</p> 
                        <h1 class="offer-p">RM 139.50</h1>
                        <button class="offer-button">Buy Now</button>
                    </div>
                </div>
                <div class="offer-container" style="background-image: url('images\\sarawak.jpg')">

                    <div style="position: absolute">
                        <h2  class="offer-h">Sarawak</h2> 
                        <p class="offer-p" >Economy Lite</p> 
                        <h1 class="offer-p">RM 100.50</h1>
                        <button class="offer-button">Buy Now</button>
                    </div>
                </div>

                <div class="offer-container" style="background-image: url('images\\newyork.jpeg')">

                    <div style="position: absolute">
                        <h2  class="offer-h">New York</h2> 
                        <p class="offer-p">Economy</p> 
                        <h1  class="offer-p">RM 330.50</h1>
                        <button class="offer-button">Buy Now</button>
                    </div>
                </div> 
            </div>
            
              <!--bigger division that contains smaller ones in the second row-->
            <div style="width: 100%; display: flex; margin-bottom: 5px; position: relative;">
                <div class="offer-container" style="background-image: url(images/dubia.jpg)">
                    <div style="position: absolute">
                        <h2 class="offer-h">Dubia</h2> 
                        <p  class="offer-p">Economy Lite</p> 
                        <h1  class="offer-p">RM 190.50</h1>
                        <button class="offer-button">Buy Now</button>
                    </div>

                </div>
                <div class="offer-container" style="background-image: url('images\\seoul.jpg')">

                    <div style="position: absolute">
                        <h2 class="offer-h">seoul</h2> 
                        <p  class="offer-p">Economy Lite</p> 
                        <h1  class="offer-p">RM 130.00</h1>
                        <button class="offer-button">Buy Now</button>
                    </div>
                </div>
                <div class="offer-container" style="background-image: url('images\\london.jpg')">
                    <div style="position: absolute">
                        <h2  class="offer-h">London</h2> 
                        <p  class="offer-p">Economy Lite</p> 
                        <h1  class="offer-p">RM 120.50</h1>
                        <button class="offer-button">Buy Now</button>
                    </div>
                </div> 
            </div>    

        </div>



        <!--START OF THE FLIGHT PASS DESIGN PART OF THE PAGE-->
        <h1 align="center" style="margin-top:6% ">Flight Pass</h1>

        <div style ="position: relative;height:70vh; box-sizing: border-box; background-size: 100% 100%; background-image: url('images\\flightpass1.jpg'); margin-bottom: 10%">

        </div>


        <!--START OF THE NEWSLETTER PART OF THE PAGE-->
     <section class="news-container" style="background-image: linear-gradient( rgba(245, 246, 252, 0.52), rgba(255, 255, 255, 255)), url('images\\floral.jpg');"> 
            <h3 style="font-size: 55px; text-align: center; margin-top: 5px">Newsletter</h3>
            <p style=" text-align: center; margin-top: -40px"> Be the first to know about our flight deals, holiday packages and more.</p>

            <input type="text" name="email" id="email" placeholder="Email Address" style="height: 24px; width:20%; margin: 5px 0px 0px 20%; border-radius: 5px; border: solid 1px">    
            <select id="cars" name="cars" style="height: 28px; width:20%; border-radius: 5px; border: solid 1px"> 
                <option value="" disabled selected>Preffered City Of Departure</option>
                <option value="Kuala Lumpur">Kuala Lumpur</option>
                <option value="Singapore">Singapore</option>
                <option value="Dubia">Dubia</option>
                <option value="Hargeisa">Hargeisa</option>
                <option value="New York">New York</option>
            </select> 
            <input type="submit" name="submit" value="Subscribe" style="height: 30px; width:15%; border-radius: 5px; border: solid 1px; background-color: blue; color: white">

            
              <!--buttons for moving the slider left or right.-->
            <button class="pre-btn"><img src="images/next.png" alt=""></button>
            <button class="nxt-btn"><img src="images/next.png" alt=""></button>
            <div class="card-container">


                <div class="card">
                    <div class="card-image-div">
                        <img src="images/travelreq.jpg" class="card-image" alt="">
                    </div>
                    <div style="position: relative">
                        <h2 style="padding-left:10px">Travel Requirements</h2>
                        <p style="padding-left:10px; padding-right: 2px; text-spacing: 3px">The list of travel requirements and Vaccinated Travel Lane (VTL) 
                            info are stated here. As the travel... </p> 

                        <button class="card-button" ><a href="cardContents.jsp" style="color:white; text-decoration: none"> Read More</a></button> </div>


                </div>
                <div class="card">
                    <div class="card-image-div">
                        <img src="images/safetymesures.jpg" class="card-image" alt="">
                    </div>
                    <div style="position: relative">
                        <h2 style="padding-left:11px">Safety Measures</h2>
                        <p style="padding-left:11px; padding-right: 2px; text-spacing: 3px" >Prioritizing the safety and wellbeing of our passengers and employees 
                            as we usually do, we have unveiled a newly .... </p>
                        <button class="card-button" ><a href="cardContents.jsp" style="color:white; text-decoration: none"> Read More</a></button>
                    </div>

                </div>

                <div class="card">
                    <div class="card-image-div">
                        <img src="images/flexibletravel.jpg" class="card-image" alt="">
                    </div>
                    <div style="position: relative">
                        <h2 style="padding-left:11px">Flexible Travel</h2>
                        <p style="padding-left:11px; padding-right: 2px; text-spacing: 3px">If for any reason, Passengers 
                            are unable to travel on originally scheduled 
                            travel date, passengers must be. </p>
                        <button class="card-button" ><a href="cardContents.jsp" style="color:white; text-decoration: none"> Read More</a></button>
                    </div>

                </div>

                <div class="card">
                    <div class="card-image-div">
                        <img src="images/jwpcom.jpg" class="card-image" alt="">
                    </div>
                    <div style="position: relative">
                        <h2 style="padding-left:11px">JWP Comfort</h2>
                        <p style="padding-left:11px; padding-right: 2px; text-spacing: 3px">Our global cover dubbed JWP 
                            Comfort is part of the extra security measures we are taking to ensure your health ..... </p>
                       <button class="card-button" ><a href="cardContents.jsp" style="color:white; text-decoration: none"> Read More</a></button>     
                    </div>

                </div>

                <div class="card">
                    <div class="card-image-div">
                        <img src="images/planyrtrip.jpg" class="card-image" alt="">
                    </div>
                    <div style="position: relative">
                        <h2  style="padding-left:11px">Plan Your Trip</h2>
                        <p style="padding-left:11px; padding-right: 2px; text-spacing: 3px">Our excellent services will allow passengers to plan for their trip. 
                            Information about extra laggage, car.... </p>
                       <button class="card-button" ><a href="cardContents.jsp" style="color:white; text-decoration: none"> Read More</a></button>
                    </div>

                </div>

            </div> 
        </section>



        <!--START OF THE FOOTER OF THE PAGE-->


        <%@ include file="FooterJsp.jsp" %>   


        <!-- JAVA SCRIPT CODES FOR PAGE RESPONSIVENESS-->
        <script>

        const cardContainers = document.querySelectorAll('.card-container');
                 const nxtBtn = document.querySelectorAll('.nxt-btn');
                 const preBtn = document.querySelectorAll('.pre-btn');
                 cardContainers.forEach((item, i) => {
                        let containerDimensions = item.getBoundingClientRect();
                        let containerWidth = containerDimensions.width;
                        nxtBtn[i].addEventListener('click', () => {
                               item.scrollLeft += containerWidth;
                                    })

                        preBtn[i].addEventListener('click', () => {
                                item.scrollLeft -= containerWidth;
                                   })
})
        </script>

    </body>
</html>
