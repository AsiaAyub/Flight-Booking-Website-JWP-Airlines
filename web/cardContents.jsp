
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
                height:850px;  
            }

            #h1{
                margin: 10% 35% 0%;
                padding-top: 10%;
            }
        </style>
    </head>
    <body>

        <%@ include file="HeaderJsp.jsp" %>
           
        <!--division that has a background pic and text inside-->
        <div class='container' style='background-image:  url(images/food.jpg); '>
            <!--text division-->
            <div class='text-container'>
                <h1 id='h1' >Travel Requirements</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 50px'>
                    Travel Requirements JWP adheres to the highest standards of safety at all times. 
                    The list of travel requirements and Vaccinated Travel Lane (VTL) info stated here 
                    are a compilation of summarised regulations in the countries/destinations where 
                    our flights are operating. As the travel requirements worldwide continue to 
                    change from time to time, there are times when the information stated below 
                    might not be up-to-date and may be obsolete at the time you are viewing it. 
                    For more reliable, latest, and verified information in your destinations, 
                    We strongly encourage all travelling guests to also check the travel restrictions 
                    with the respective government of your destination country / state directly prior 
                    travelling with us. Face Mask Policy Passengers are not permitted to use the 
                    type of mask that is fitted with exhalation / breathing valves. This is in line 
                    with CDC, WHO and CAAC 6th Edition Safety Recommendations on Prevention and 
                    Control Measures During Flight. JWP Malaysia has made it mandatory for only 
                    completely vaccinated adult guests to be allowed to board its flights.
                </p>
            </div>
        </div>

        <div class='container' style='background-image:url(images/safetymesures.jpg); '>
            <div class='text-container'>
                <h1 id='h1'>Safety Measures</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>
                    Aviation safety isn't just the FAA, the pilot's or the flight attendants’ 
                    job — it takes all of us. We all need to think about safety — even just for 
                    a minute. Here are some tips to follow to keep you and your fellow travelers 
                    safe when you fly. Most importantly, pay attention to your flight and cabin 
                    crews. They are there to keep you as safe as possible. You can make your flight 
                    even safer by following these guidelines: Pay attention to the flight attendant 
                    safety briefing at the beginning of your flight and read the safety briefing card. Buckle up. Keep you and your family safe by wearing a seat belt at all times while seated. Use an approved child safety seat or device if your child weighs less than 40 pounds. Prevent in-flight injuries by following your airline's carry-on restrictions. Check your airline's Portable Electronic Device (PED) policy.
                </p>
            </div>
        </div>

        <div class='container' style='background-image:url(images/runway.jpg); '>
            <div class='text-container'>
                <h1 id='h1'>Flexible Travel</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>
                    If you are planning holidays in 2022, flexible bookings might be just what 
                    you need to explore the world effortlessly, easily and with peace of mind – 
                    because they allow date changes or refunds in the event of a flight cancellation.
                    JWP airlines started offering these flexible flight tickets in 2020 as a 
                    response to the uncertainty the pandemic created. Travel is easier again. 
                    High Flexibility Ticket is a more flexible subclass option, compared to regular 
                    tickets. It allows you 0% Reschedule Penalty: Reschedule your flight easily 
                    before departure with 0% penalty (within a certain time limit). No more hassle, 
                    fly at your convenience. Low Refund Penalty: Your travel plan got canceled? We’ve
                    got you covered. Get maximum refund when canceling your flight tickets, all with 
                    low penalty. Extra Frequent Flyer Miles: Earn more miles by flying with High 
                    Flexibility Ticket. Not just more flexibility, you can also redeem your frequent 
                    flyer rewards faster. So if you’d like to take advantage of travelling with 
                    fee-free changes and extra peace of mind, we’d recommend you book soon.
                </p>
            </div>
        </div>

        <div class='container' style='background-image:  url(images/jwpcom.jpg); '>
            <div class='text-container' style='height:600px'>
                <h1 id='h1'>JWP Comfort</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>
                    Being the largest aviation group in ASIA, JWP Airlines Group, 
                    with its valuable partners is pleased to announce that 
                    we shall cover on all our international flights booked with 
                    us through JWP tickets, the Medical expenses, Repatriation, 
                    Evacuation and Quarantine costs related to COVID-19 as from 1st 
                    of October 2020 until 31st March 2022. Our global cover dubbed 
                    JWP Comfort is part of the extra security measures we are taking 
                    to ensure your health as our top priority.</p>
            </div>
        </div>

        <div class='container' style='background-image:  url(images/planyrtrip.jpg); '>
            <div class='text-container' style='height:600px'>
                <h1 id='h1'>Plan Your Trip</h1>
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>
                    Some people can get overwhelmed by the idea of planning a trip by themselves. You feel like there’s so much to think about and so much to do!
                    You can be tempted to book an organized trip and then you have to follow a schedule you’re not always comfortable with, do activities you are not interested in, and talk to people you don’t know but have to deal with for all your trip.
                    Planning a trip is easier than you may think. here is the best tips to plan your dream trip.
                    <br>
                </p>
                <ul style='font-size: 15px; line-height: 18px; padding: 10px 25px 0px'>
                    <li>Decide Where You Want to Go</li>
                    <li>Check the Travel Advice and Advisories</li>
                    <li> Book Your Flight</li>
                    <li>Research Your Destination</li>
                    <li>Pick Your Must-do</li>
                    <li>Book Your Accommodation</li>
                </ul> 
                <p style='font-size: 20px; line-height: 38px; padding: 10px'>for more information, please refer to this <a href='https://www.inspirock.com/'> link</a></p> 

            </div>
        </div>

        <%@ include file="FooterJsp.jsp" %>   
    </body>
</html>