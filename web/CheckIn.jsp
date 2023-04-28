<%-- 
    Document   : CheckIn
    Created on : 19-Mar-2022, 10:25:50
    Author     : asiay
--%>


<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Check-in</title>
        <style>
            html, body{
                margin:0;
                padding:0;
                overflow-x:hidden;
                font-family: 'Trebuchet MS', sans-serif;
                background-image: url('images\\runway.jpg'); 
                background-size: 100% 100%;
                background-repeat: no-repeat; 
            }
  
            #title1{
                text-align: center;
                font-size: 35px;
                color:white;
            }
            #title2{
                text-align: center;
                font-size: 20px;
                color:white;
            }
            #checkin{
                background-color: white;
                width: 500px;
                height: 260px;
                margin-left: 330px;
                text-align:center;
                border-radius: 20px;
            }
            #fname{
                font-size: 14px;
                text-align: end
            }
            #inputfname{
                margin: 0px 15px;
                
            }
            
            #BID{
                margin: 0px 15px;
                
            }
            #lname{
                font-size: 14px;
                text-align: end
               
            }
            #submit{
                padding: 6px 15px;
                color:white;
                background-color: blue;
                border: 1px solid #dddddd;
                cursor: pointer;
                border-radius: 20px;
                margin-top: 30px;
                height: 50px;
                width: 170px;
            }
            
   
        </style>
    </head>
    <body>
   
       <%@ include file="FunctionPagesHeader.jsp" %>
        
        <h1 id="title1"> Check-In to your flight! </h1>
        <p id="title2"> Check out our online check-in flight feature now!! </p>
        <br>
        <br>
        <div id="checkin">
            <!-- Form for user to input his booking details to check in -->
        <form method="get">
            <br>
            <!-- label and input type to prompt the user to input their details-->
            <h3 id="title3"> Please Enter the required details </h3><br>
            <label id="fname"> Enter your first name: </label>
            <input type="text" name="fname" id="inputfname"/><br><br>
            <label id="lname"> Enter your Booking ID: </label>
            <input type="text" name="BID" id="BID"/>
            <br>
            <input type="submit" value="Check In Now" id="submit" name="submit"/>
            <!-- java code to check whether the details match with the database or not-->
            <%  
                //when the submit button is clicked
                if (request.getParameter("submit") != null){
                    String firstname;
                    String BID;
                    int id=0;
                    //get parameters from the user input in form.
                    firstname = request.getParameter("fname");
                    BID =request.getParameter("BID");
                  
                    // error when the user click submit without entering data
                    out.println("<br>");
                    if(firstname.isEmpty() || BID.isEmpty()){
                        out.println("Please enter your information.");
                    }
                    //create connection with the database
                    else{   
                        id= Integer.parseInt(BID);
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","safe123");
                           
                       // sql condition to check with the database 
                      PreparedStatement stm1 = con.prepareStatement("UPDATE FLIGHTS SET CHECKIN =? WHERE ID=? ");
                      stm1.setString(1, "checked in");  
                      stm1.setInt(2, id);
                
                       int i = stm1.executeUpdate(); 
               
                       if(i>0)
                           out.print("Succesfully checked In");
                       else
                                out.print("Un Succesfully checked In, Please try again");
                    }
    } 
            %>
                            </form>
        </div>
   
                       <%@ include file="FooterJsp.jsp" %> 
    </body>
</html>

