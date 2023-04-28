
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER REGISTRATION</title>
       
        <style>

            html,body {
                margin:0;
                padding:0;
                overflow-x:hidden;
                font-family: 'Trebuchet MS', sans-serif;
                background-image: url('images\\runway.jpg'); 
                background-size: 100% 100%;
                background-repeat: no-repeat;
            }
            .submitInput{
                margin:3% 20%; 
                color:white;  
                width: 49%; 
                box-sizing: border-box; 
                border-radius: 40px;
                font-size: 16px;
                background-color: blue; 
                padding: 7px ;
            }
             
            
            .div1{
             border: 1px solid black;
             position: relative; 
             background-color:white;
             width: 30%; 
             background-size:  100% 100%; 
             height:500px; 
             margin: 2% 34%;
             box-sizing: border-box;
             box-shadow: 0 15px 25px rgba(0,0,0,.6); 
             border-radius: 10px;
            }
            
            .input {
                width: 70%;
                box-sizing: border-box;
                border: none;
                border-bottom: 2px solid blue;
                font-size: 16px;
                background-color: white;
                background-repeat: no-repeat;
                padding: 12px 20px 12px 0px;
                margin-left: 10%
            }

            .myForm1{
                margin:5% 0% 0% 9%;
            }

        </style>
    </head>
    <body>



        <h1 style=" text-align: center; color: white; margin-top: 3%;" >User Registration</h1>


       <!--division which contains the form-->
        <div class="div1">

            <h1 style=" text-align: center; margin-top: 10%" >User Information</h1>


            <form name="FormName" class="myForm1" action="userRegistrationConfrimation.jsp" onsubmit="return validateForm1()" method="post">
                <input type="text" name="fname" placeholder="First Name"  class="input"  ><br><br><br>
                <input type="text" name="lname"  class="input" placeholder="Last Name" ><br><br><br>
                <input type="text" name="Email" placeholder="Email"  class="input"  ><br><br><br>
                <input type="text" name="Password"  class="input" placeholder="Password" ><br><br><br>

                <input type="submit" value="Sign Up" class="submitInput">



            </form>


        </div>




        <%@ include file="FooterJsp.jsp" %>  

         <!-- JAVASCRIPT to check if any of the fields is not filled-->
        <script>

            function validateForm1() {
                var x1 = document.forms["FormName"]["fname"].value;
                var x2 = document.forms["FormName"]["lname"].value;
                var x3 = document.forms["FormName"]["Email"].value;
                var x4 = document.forms["FormName"]["Password"].value;
                if (x1 == "" || x2 == "" || x3 == "" || x4 == "") {
                    alert("All Fields must be filled out");
                    return false;
                }
            }
        </script>

    </body>
</html>

