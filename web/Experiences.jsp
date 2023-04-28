<%-- 
    Document   : Experiences
    Created on : 17-Mar-2022, 20:32:35
    Author     : asiay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Experiences Page</title>

        <style>
            html,body {
                margin:0;
                padding:0;
                overflow-x:hidden;
                font-family: 'Trebuchet MS', sans-serif;
            }
        </style>
    </head>
    <body>

        <%@ include file="HeaderJsp.jsp" %>

        <br><br>

        <h1 style="color:black; margin: 3% 40% 1%">EXPERIENCES</h1>

        <div  style="background-image: url(images/hospitality.jpg); height:75vh; margin:6% 11%;  width: 75%; box-sizing: border-box;  background-size: 100% 100%;  position: relative;">
            <div style="position: absolute; margin-left: 40%; margin-top: 6%"><br>
                <h2 style="font-size: 30px;" class="offer-h">HOSPITALITY</h2>
                <br>
                <button style="color: blue; font-size: 30px; margin-left: 24px" ><a href='ExperienceContent.jsp' style="text-decoration: none"><b>Read More</b></a></button>
            </div>
        </div>


        <div class="offer-container" style="background-image: url(images/lounge.jpg); height:75vh; margin:12% 11%;  width: 75%; box-sizing: border-box;  background-size: 100% 100%;  position: relative;">
            <div style="position: absolute; margin-left: 40%; margin-top: 6%">
                <h2 class="offer-h">Dan Lounge</h2>
                <button style="color: blue; font-size: 30px; margin-left: 24px"  class="experience-button"><a href='ExperienceContent.jsp' style="text-decoration: none"><b>Read More</b></a></button>

            </div>
        </div>


        <div class="offer-container" style="background-image: url(images/food.jpg); height:75vh; margin:12% 11%;  width: 75%; box-sizing: border-box;  background-size: 100% 100%;  position: relative;"> 
            <div style="position: absolute; margin-left: 40%; margin-top: 6%">
                <h2 class="offer-h">Flight Special</h2>
                <button style="color: blue; font-size: 30px;margin-left: 24px"  class="experience-button"><a href='ExperienceContent.jsp' style="text-decoration: none"><b>Read More</b></a></button>
            </div>
        </div>


        <div class="offer-container" style="background-image: url(images/airplane.jpg); height:75vh; margin:12% 11%;  width: 75%; box-sizing: border-box;  background-size: 100% 100%;  position: relative;">
            <div style="position: absolute; margin-left: 40%; margin-top: 6%">
                <h2 class="offer-h">Partnered Airlines</h2> 
                <button style="color: blue; font-size: 30px; margin-left: 24px"  class="experience-button"><a href='ExperienceContent.jsp' style="text-decoration: none"><b>Read More</b></a></button>
            </div>
        </div>
        <%@ include file="FooterJsp.jsp" %>   

    </body>
</html>
