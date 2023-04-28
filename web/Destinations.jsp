<%-- 
    Document   : Destinations
    Created on : 17-Mar-2022, 21:34:28
    Author     : asiay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
              
              html,body {
                margin:0;
                padding:0;
                overflow-x:hidden;
                font-family: 'Trebuchet MS', sans-serif;
            }
            
            /*
            ===========================================================================
                  CSS design for Menu Bar, slideshow container and booking form
            ===========================================================================
            */

            
            #title{
                text-align:center;
                font-size: 50px;
            }
            #select_destination{
                text-align: center;
            }
            #destinations{
                padding: 8px 50px;
                color:#333333;
                background-color: #eeeeee;
                border: 1px solid #dddddd;
                cursor: pointer;
                border-radius: 5px;
            }
            #city{
                padding: 8px 40px;
                color:#333333;
                background-color: #eeeeee;
                border: 1px solid #dddddd;
                cursor: pointer;
                border-radius: 5px;
            }
            #submit{
                padding: 6px 15px;
                color:#FEFEFA;
                background-color: #1338BE;
                border: 1px solid #dddddd;
                cursor: pointer;
                border-radius: 5px;
            }        
        
            .img1{
            width: 280px;
            height: 250px;
            padding: 20px;
            background-image: url("images\\malaysia.jpg");
            background-size: cover;
            border: 5px solid brown;
            }
            .img1:hover{
                -webkit-filter: brightness(50%);
            }
            .img2{
            width: 280px;
            height: 250px;
            padding: 20px;
            background-image: url("images\\singapore.jpg");
            background-size: cover;
            border: 5px solid brown;
            }
            .img2:hover{
                -webkit-filter: brightness(50%);
            }
            .img3{
            width: 280px;
            height: 250px;
            padding: 20px;
            background-image: url("images\\japan.jpg");
            background-size: cover;
            border: 5px solid brown;
            }
            .img3:hover{
                -webkit-filter: brightness(50%);
            }
            .img4{
            width: 280px;
            height: 250px;
            padding: 20px;
            background-image: url("images\\korea.jpg");
            background-size: cover;
            border: 5px solid brown;
            }
            .img4:hover{
                filter: blur(5px);
                -webkit-filter: brightness(50%);
            }
            .img5{
            width: 280px;
            height: 250px;
            padding: 20px;
            background-image: url("images\\london.jpg");
            background-size: cover;
            border: 5px solid brown;
            }
            .img5:hover{
                -webkit-filter: brightness(50%);

            }
            .img6{
            width: 280px;
            height: 250px;
            padding: 20px;
            background-image: url("images\\new york.jpg");
            background-size: cover;
            border: 5px solid brown;
            }
            .img6:hover{
                -webkit-filter: brightness(50%);
            }
            
            .desc1{
                position: absolute;
                margin-left: 0.5%;
                margin-top: 7%;
                color: white;
                font-size: 30px;
            }
            .desc2{
                position: absolute;
                margin-left: 0.5%;
                  margin-top: 7%;
                 color: white;
                font-size: 30px;

            }
            .desc3{
               position: absolute;
                margin-left: 0.5%;
                  margin-top: 7%;
                 color: white;
                font-size: 30px;
            }

            .desc4{
               position: absolute;
                margin-left: 0.5%;
                  margin-top: 7%;
                 color: white;
                font-size: 30px;
            }
            .desc5{
                position: absolute;
                margin-left: 0.5%;
                  margin-top: 7%;
                 color: white;
                font-size: 30px;
            }
            .desc6{
                position: absolute;
                margin-left: 0.5%;
                  margin-top: 7%;
                 color: white;
                font-size: 30px;
            }
        </style>
    </head>
    <body>
        <!-- The link to include the header inside the destination page. -->
        
        <%
        String n = (String) application.getAttribute("name");
        %>
        <jsp:include page="HeaderJsp.jsp">
              <jsp:param name="name" value="<%=n%>"/>
        </jsp:include>

        <!-- The title of the webpage -->
        <h1 id="title"> Destinations </h1>


        <!-- The subtitle to the main title -->
        <h1 style="text-align: center;"> Our List of Destinations </h1>
        <!-- The upper 3 portion of the 6 pictures and destinations-->
        <div style="position: relative; margin: 5%  10%;">
            <div style="display:flex">
                <div class="img1" style='  background-image: url("images\\malaysia.jpg")'><div class="desc1"> Malaysia </div> </div>
                <div class="img2" style='background-image: url("images\\singapore.jpg")'> <div class="desc2"> Singapore </div> </div>
                <div class="img3" style='  background-image: url("images\\japan.jpg")'>  <div class="desc3"> Japan </div></div>
            </div>
            <!-- The lower 3 portion of the 6 pictures and destinations-->
            <div style="display:flex">
                <div class="img4" style='background-image: url("images\\korea.jpg")'><div class="desc4"> Korea </div>  </div>
                <div class="img5" style='background-image: url("images\\london.jpg")'> <div class="desc5"> London </div>  </div>
                <div class="img6" style='background-image: url("images\\new york.jpg")'>   <div class="desc6"> New York </div> </div>

            </div> </div>
            <!-- The link to include the footer inside the destination page.-->
            <%@ include file="FooterJsp.jsp" %>     
    </body>
</html>
