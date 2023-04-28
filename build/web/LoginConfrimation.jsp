<%-- 
    Document   : userRegistrationConfrimation
    Created on : 19-Mar-2022, 14:39:19
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
    <body >
        <%
         
            //connection to the database using connectionManager class
           Connection con = ConnectionManager.getConnection();

            String email = "";
            String password = "";

            int count = 0;

            email = request.getParameter("Email");
            password = request.getParameter("Password");

            //select statement to check if the user info is in the database
            PreparedStatement stm1 = con.prepareStatement("SELECT ID,FIRSTNAME From USERS "
                                                         + "WHERE EMAIL=? AND PASSWORD=? ");
            stm1.setString(1, email);
            stm1.setString(2, password);

            ResultSet rs = stm1.executeQuery();
            
            //if the resultset is not empty
            if(rs.next()!=false){
            // return the cursor back to its first piont
            rs.beforeFirst();
            //move one row down as the cursor initially positioned before first row.
            rs.next();
            String fname = rs.getString(2); // get the user name
            rs.last();// go to last row to get row count
            count = rs.getRow();

            if (count > 0) { //if >0 then user exist
                application.setAttribute("name", fname);
        %>

        <!-- forward to home page with user name-->
        <jsp:forward page="HomePage.jsp">
            <jsp:param name="name" value="<%=fname%>"/>
        </jsp:forward>


        <%}} else {%>
        
         <!-- div that informs user that the inputs are wrong-->
        <div style='border: 1px solid black; position: relative; background-color: white; width: 45%;  height:180px; margin: 20% 28%; box-sizing: border-box;box-shadow: 0 15px 25px rgba(0,0,0,.6); border-radius: 10px;'>

            <h2 style='text-align:center; margin-top: 10%'>Wrong Email or Password</h2>

        </div>
        <%}%>
    </body>
</html>
