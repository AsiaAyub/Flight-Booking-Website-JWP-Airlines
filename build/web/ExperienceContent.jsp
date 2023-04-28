<%-- 
    Document   : ExperienceContent
    Created on : 19-Mar-2022, 17:32:39
    Author     : asiay
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            html,body {
                margin:0;
                padding:0;
                overflow-x:hidden;
                font-family: 'Trebuchet MS', sans-serif;
            }
            .container{
                background-size: 100% 100%;
                background-repeat: no-repeat;
                box-shadow: inset 1120px 680px 980px -500px #fff;
                width:100%;  
            }

            .text-container{
                margin-left: 15px;
                width:60%;
                height:800px;  
            }

            #h1{
                margin: 10% 35% 0% 
            }
        </style>
    </head>
    <body>

        <%@ include file="HeaderJsp.jsp" %>

        <div class='container' style='background-image:  url(images/hospitality.jpg); '>
            <div class='text-container'>
                <h1 id='h1'>HOSPITALITY</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>
                  When it comes to Hospitality, we provide enthuasiastic hospitality to our 
                  Passengers. To begin with, we serve fine fresh food to our passengers and 
                  the quality we provide is the finest. Moreover, our air hostages are always 
                  there to guide our passengers.
                </p>
            </div>
        </div>

        <div class='container' style='background-image:url(images/lounge.jpg); '>
            <div class='text-container'>
                <h1 id='h1'>Dan Lounge</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>
               We have a beautifully furnished Lounge where people can wait. 
               It is fully air conditioned and passengers are served with Welcome Drinks.
                </p>
            </div>
        </div>

        <div class='container' style='background-image:url(images/food.jpg); '>
            <div class='text-container'>
                <h1 id='h1'>Flight Special</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>
                We offer special flight dinner to our passengers. We have Wi-Fi 
                and passengers has the opportunity for entertainment. People will 
                have the opportunity to shop online from 40000 height.
                </p>
            </div>
        </div>

        <div class='container' style='background-image:  url(images/airplane.jpg); '>
            <div class='text-container'>
                <h1 id='h1'>Partnered Airlines</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>
               We are partnered with Turkish Airlines for enhancing the fluctuality to travel 
               to both the countries and to allow people to have more options of flight schedule.
                </p>
            </div>
        </div>
        <%@ include file="FooterJsp.jsp" %>   
    </body>
</html>
