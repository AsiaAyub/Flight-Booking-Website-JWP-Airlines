<%-- 
    Document   : checks
    Created on : 14-Mar-2022, 11:11:55
    Author     : asiay
--%>

<%@page import="Database.ConnectionManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searching Flights Page</title>
        <style>
            
            html,body {
                margin:0;
                padding:0;
                overflow-x:hidden;
                background-size: 100% 100%;
                background-repeat: no-repeat;
            }

            /*
            ===========================================================================
                  CSS design for booking form
            ===========================================================================
            */

            ul {list-style-type: none;}
            body {font-family: 'Trebuchet MS', sans-serif;}

            /* Month header */
            .month {
                padding: 30px 25px;
                background: darkblue;
                opacity: 0.87;
                color:white;
                text-align: center;
            }


            .month th {
                color: white;
                font-size: 20px;
                letter-spacing: 3px;
            }

            /* Weekdays (Mon-Sun) */
            .weekdays {

                width:100%;
                padding: 15px 0;
                background-color:black;
                opacity:0.87;
            }

            .weekdays td {
                display: inline-block;
                width: 13.6%;
                color: white;
                text-align: center;  
                padding: 15px 0;

            }

            /* Days (1-31) */
            .days {
                padding: 10px 0;
                background: black;
                opacity: 0.87;
                border-spacing: 3px; 
             
            }

            .days td {
                display: inline-block;
                width: 13.75%;
                border: 1px solid black;
                text-align: center;
                margin-bottom: 5px;
                padding: 3% 0% 3% 0%;
                font-size:12px;
                color: white;
                background: black;
                border-bottom-color: white;
                margin-right: 2.6px;

            }

        </style>
    </head>
    <body style="background-image: url('images//runway.jpg'); ">

        <%@ include file="FunctionPagesHeader.jsp" %>


           <!--  table that shows days and price -->
        <table style='width: 70%; margin: 10% 13.5% 0%; border-collapse: collapse; opacity: 0.88'>


            <%
                //if the user did clicks the next month button, the following happens
                if (request.getParameter("next") != null) {

                    LocalDate todaydate = LocalDate.now(); //local date variable
                    todaydate = todaydate.withDayOfMonth(1); // set the day to first day as its the next month
                    LocalDate todayDate = todaydate.plusMonths(1); // number of months to increment
                    int month = todayDate.getMonthValue(); // get month
                    int year = todayDate.getYear();
                    int days = todayDate.lengthOfMonth(); // ge the number of days in respective month

                    // an array for all months in the yaer
                    String[] months = {"January", "Fabuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

                    // for loop to compare current month value to its name and displaying it
                    for (int i = 0; i < months.length - 1; i++) {
                        if (i == month - 1) {%>

            <th class='month' colspan='7' style='font-size:25px'>  <%=months[i]%> <br> <%= year%> </th>;
                <%break; // break the loop
                        }
                    }%>

           <!--  row for week days -->
            <tr class='weekdays'>;
                <td>Mo</td>;
                <td>Tu</td>;
                <td>We</td>;
                <td>Th</td>;
                <td>Fr</td>;
                <td>Sa</td>;
                <td>Su</td>;
            </tr>;

          <!--  row for days in the month -->
            <tr class='days'>
                <%
                    Connection con = ConnectionManager.getConnection();
                    
                    // as long as the counter is less or equal number of days of the month
                    for (int i = 1; i <= days; i++) {

                        // count number of users registered on that date
                        PreparedStatement stm = con.prepareStatement("SELECT COUNT(ID) FROM FLIGHTS "
                                + "WHERE DEP_DATE =?");
                        stm.setDate(1, java.sql.Date.valueOf(todayDate));
                        ResultSet rs = stm.executeQuery();

                        while (rs.next()) {// each next gives one line so use while to get all lines
                                // if the count exceeds passenger limit
                            if (rs.getInt(1) > 100) {%>
                 
                  <!--  the cell shows no seats -->
                            <td>NO SEATS</td>
                            
             <!--  if the count is within passenger limit -->
                <% } else {%>

               <!-- the cell shows the date and price -->
                <td>  <%= todayDate%>  <br> <span style='color:red'>MYR 2600</span> </td>

                <% }
                        } // end of count number checking in resultset
                        
                        // increment the day number to start over
                        todayDate = todayDate.plusDays(1);

                        //end of for loop
                        }%>
            </tr>

            <%   // if the user did not click the next month button, the following happens 
            } else {
                LocalDate todayDate = LocalDate.now();
                int month = todayDate.getMonthValue();
                int year = todayDate.getYear();
                int days = todayDate.lengthOfMonth();
                int today = todayDate.getDayOfMonth();

                String[] months = {"January", "Fabuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

                for (int i = 0; i < months.length - 1; i++) {
                    if (i == month - 1) {%>
            <th class='month' colspan='7' style='font-size:25px'> <%= months[i]%><br><%= year%></th>
                <% break;
                        }
                    }
                %>
            <tr class='weekdays'>
                <td>Mo</td>
                <td>Tu</td>
                <td>We</td>
                <td>Th</td>
                <td>Fr</td>
                <td>Sa</td>
                <td>Su</td>
            </tr>

            <tr class='days'>
                <%
                    Connection con = ConnectionManager.getConnection();

                    for (int i = 1; i <= days; i++) {
                        // if date is befre today
                        if (today > i) { %>
                <td>NOT <br> APPLICABLE</td>
                    <%  } else if (today <= i) { // else if its today until end of the month
                        PreparedStatement stm = con.prepareStatement("SELECT COUNT(ID) FROM FLIGHTS WHERE DEP_DATE =?");
                        stm.setDate(1, java.sql.Date.valueOf(todayDate));
                        ResultSet rs = stm.executeQuery();

                        while (rs.next()) {// each next gives one line so use while to get all lines

                            if (rs.getInt(1) > 100) { %>
                <td>NO SEATS</td> 
                <% } else {%>
                <td>  <%= todayDate%>  <br> <span style='color:red'>MYR 2600</span> </td>
                    <%    }

                                }
                                todayDate = todayDate.plusDays(1);
                            }

                        }%>
            </tr>
            <%  }%>
        </table>

           <!-- form to manipulate the table date according to month -->
        <form method="get"> 
            <input type="submit"  name="next" value="See Next Month" 
                   style="margin: 5% 40% 10%; background-color: blue; padding: 10px; width: 20%; color:white; border-radius: 30px"/> 
        </form> 



        <!-- Page Footer using include directive-->
        <%@ include file="FooterJsp.jsp" %>  

    </body>
</html>
