<%-- 
    Document   : checkInConfrimation
    Created on : 19-Mar-2022, 12:57:54
    Author     : asiay
--%>

<%@page import="Database.ConnectionManager"%>
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
                background-image: url('images\\runway.jpg'); 
                background-size: 100% 100%;
                background-repeat: no-repeat;
            }

        </style>
        <title>JSP Page</title>
    </head>
    <body>


        <div style="border: 1px solid black; position: relative; background-color:white;
             width: 80%; background-size:  100% 100%; height:400px; margin: 12% 7%;
             box-sizing: border-box;box-shadow: 0 15px 25px rgba(0,0,0,.6); border-radius: 10px;">

            <h1 style=" text-align: center; margin-top: 6%" >Web Check-In</h1>
            <p style=" text-align: center; font-size: 25px; margin-top: 6%"> 
                <%
                Connection con = ConnectionManager.getConnection(); 
        
                     int id = 0;
                     if(request.getParameter("id")!=null)
                     id = Integer.parseInt(request.getParameter("id"));
              
                     String lname = request.getParameter("lname");
         
                  PreparedStatement stm1 = con.prepareStatement("UPDATE FLIGHTS SET CHECKIN =? WHERE ID=? AND LASTNAME=? ");
                      stm1.setString(1, "checked in");  
                      stm1.setInt(2, id);
                      stm1.setString(3, lname);
                
                       int i = stm1.executeUpdate(); 
               
                       if(i>0)
                           out.print("Succesfully checked In");
                       else
                                out.print("Un Succesfully checked In, Please try again");
     
                %>

            </p> 
        </div>

    </body>
</html>
