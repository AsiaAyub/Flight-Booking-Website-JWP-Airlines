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
         Connection con = ConnectionManager.getConnection();
         
         // create statement for users table
         
             // PreparedStatement statement = con.prepareStatement("CREATE TABLE USERS (ID INT AUTO_INCREMENT, FIRSTNAME VARCHAR(50), LASTNAME VARCHAR(50), EMAIL VARCHAR(50), PASSWORD VARCHAR(50), PRIMARY KEY(ID))");
             // statement.execute();
            
        
             String fname = "";
             String lname = "";
             String email = "";
             String password = "";
           
             int count=0;

                 fname = request.getParameter("fname");
                 lname = request.getParameter("lname");
                 email = request.getParameter("Email");
                 password = request.getParameter("Password");
               
       
               // to check if user already exists 
                 PreparedStatement stm1 = con.prepareStatement("SELECT ID From USERS "
                                                             + "WHERE EMAIL=? AND PASSWORD=? ");
                
                 stm1.setString(1, email);
                 stm1.setString(2, password);

                 ResultSet rs = stm1.executeQuery(); 
                 rs.last();
                 count =rs.getRow(); // get number of rows in result set

                 // if 0 then no such user exists. insert query wll be executed
            if(count==0){
                PreparedStatement stm = con.prepareStatement("INSERT INTO USERS (FIRSTNAME, "
                        + "LASTNAME, EMAIL, PASSWORD) values (?,?,?,?)");

                 stm.setString(1, fname);
                 stm.setString(2, lname);
                 stm.setString(3, email);
                 stm.setString(4, password);
                 int i = stm.executeUpdate();
               
        %>

      <!--  forward to home page with the user name -->
        <jsp:forward page="HomePage.jsp">
        <jsp:param name="name" value="<%=fname%>"/>
        </jsp:forward>


        <%}
           
         else{%>
         <!--  division to inform the user that the email is registered-->
        <div style='border: 1px solid black; position: relative; background-color: white; width: 45%;  height:180px; margin: 20% 28%; box-sizing: border-box;box-shadow: 0 15px 25px rgba(0,0,0,.6); border-radius: 10px;'>

            <h2 style='text-align:center; margin-top: 10%'>This email address is already registered <br><br> <a href="UserLogin.jsp">Login here</a></h2>           
        </div>
        <%}%>
    </body>
</html>
