
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Booking Management</title>
        <style>
            html, .body{
                font-family: 'Trebuchet MS';
                background-image: url('images\\runway.jpg'); 
                background-size: 100% 100%;
                background-repeat: no-repeat;
            }
           
            .check{
                background-color: white;
                height: 205px;
                width: 500px;
                margin: 0 auto;
                border-radius: 10px;
                
                
                
                
            }
            .from{
                background-color: white;
                width: 450px;
                height: 430px;
                float:left;
                margin-left: 10%;
                border-radius: 10px;
            }
            .to{
                width: 450px;
                height: 430px;
                float: right;
                background-color: white;
                margin-left: 5%;
                border-radius: 10px;
            }
            .innerto{
                    line-height: 3;
                    text-align: end
                }
            .innerfrom{
                    line-height: 3;     
                    text-align: end
                }
            #frombutton{
                padding: 6px 15px;
                color:white;
                background-color: blue;
                border: 1px solid #dddddd;
                cursor: pointer;
                border-radius: 20px;
                margin-top: 10px;
                height: 30px;
                width: 87.5px;
                }
                #tobutton{
                
                color:#FEFEFA;
                background-color: blue;
                border: 1px solid #dddddd;
                cursor: pointer;
                border-radius: 20px;
                height: 30px;
                width: 87.5px;
                
                }
                            .ul-footer{
                list-style-type: none;
                margin: 20px 25px;
                overflow: hidden;
                color: black         
            }       

         
        </style>
    </head>
    <body>
        
             <%@ include file="FunctionPagesHeader.jsp" %>
        
        <!-- Connect jsp page to the sql server-->
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            //create connection with sql server
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","safe123");
            //declare all required variables
            String fname = "";
            String lname = "";
            String fromDcity = "";
            String fromAcity ="";
            String fromClass ="";
            String fromDdate ="";
            int BookID = 0;
        %>
        <div class='maintitle'>
            <!-- Title and subtitle for the web page-->
        <h1 style="font-size:30px; color:white; text-align: center"> Booking Management </h1>
        <h3 style="font-size: 20px; color:white; text-align: center"> Change your booking details now! </h3>
        </div>
        
        <div class="check">
        <form id="check" style="text-align: center">
            <!-- Label and input type to check if booking id is valid in database or not -->
            <h2 style="padding:12px; text-align: center"> Enter your details </h2>
            <label style=""> First Name: </label>
            <input type='text' name='fname' id="fname"/><br><br>
            <label > Booking Id: </label>
            <input type='text' name='BID' id="BID"/><br><br>
            <input type="submit" value='Check' name="check" id="frombutton"/>
            <!-- Java code to check booking input validity-->
            <%
                //when user press submit button
                if (request.getParameter("check") != null){
                    //get variable value from user input in form
                    String checkfname = request.getParameter("fname");
                    String checkID = request.getParameter("BID");
                    //return message when input is empty
                    int id =0;
                    if(checkfname.isEmpty() || checkID.isEmpty()){
                       out.println("<br>");
                        out.println("Please enter a value");
                    }
                    else{
                        id= Integer.parseInt(checkID);
                        //create connection with database server
                        PreparedStatement get = con.prepareStatement("Select * from flights where id=?");
                        get.setInt(1, id);
                        ResultSet rs = get.executeQuery();
                        out.println("<br>");
                        if(rs.next()){
                            //value of variable is connected to database server and gets its value from database table and column
                            out.println("Data Found"); 
                            BookID = rs.getInt(1);
                            fname = rs.getString(2);
                            lname = rs.getString(3);
                            fromDcity = rs.getString(4);
                            fromAcity = rs.getString(5);
                           fromClass = rs.getString(8);
                        }
                        else{
                        out.println("Data not found, Please Enter again");
                        }
                    }
                }
                %>
        </form>
        </div>
        <br>
        <br>
        
        <div style="display: flex; ">
        
        <div class="from">
            <!-- Form to display booking information to user.-->
        <form>
            <h2 style="text-align: center;"> From </h2>
            <div class="innerfrom">
                <!-- Value of all input type is gained from the database server -->
            <label > First Name: </label>
            <input type='text' value="<% out.println(fname);%>" readonly="readonly" style="margin: 0% 13%;"/>
            <br>
            <label > Last Name: </label>
            <input type='text'  value="<%out.println(lname);%>" readonly="readonly" style="margin: 0% 13%;"/>
            <br>
            <label> Departure City: </label>
            <input type='text'  value="<%out.println(fromDcity);%>" readonly="readonly" style="margin: 0% 13%;"/>
            <br>
            <label> Arrival City: </label>
            <input type='text'  value="<%out.println(fromAcity);%>" readonly="readonly" style=" margin: 0% 13%;"/>
            <br>
            <label> Class: </label>
            <input type='text'  value="<%out.println(fromClass);%>" readonly="readonly" style=" margin: 0% 13%;"/>
            <br>
            <label> Booking Number: </label>
            <input type='text'  value="<%out.println(BookID);%>" readonly="readonly" style=" margin: 0% 13%;"/>
            
            </div>
            </form>
        </div>
        <div class="to">
        <form method="get">
            <!-- Form with original data to allow user to alter booking details. -->
            <h2 style="text-align: center;"> To </h2>
            <div class="innerto">
            <label > First Name: </label>
            <input type='text' value="<% out.println(fname);%>" name='tofname' style="margin: 0% 10%;"/>
            <br>
            <label> Last Name: </label>
            <input type='text' value="<%out.println(lname);%>" name='tolname' style="margin: 0% 10%;"/>
            <br>
            <label> Departure City: </label>
            <input type='text' value="<%out.println(fromDcity);%>" name='toDcity' style="margin: 0% 10%;"/>
            <br>
            <label> Arrival City: </label>
            <input type='text' value="<%out.println(fromAcity);%>" name='toAcity' style="margin: 0% 10%;"/>
            <br>
            <label id="toClass" style="text-align:end"> Class:</label>
            <!-- Dropdown list to show what classes is available in the airplane-->
            <select name="toClass" style="margin: 0% 9%; width: 175px">
                <option> <%out.println(fromClass);%> </option>
                <option>Economy</option>
                <option>First Class</option>
            </select>
            <br>
            <label> Booking Number: </label>
            <input type='text'  value="<%out.println(BookID);%>" name="BookingNumber" readonly="readonly" style="margin: 0% 10%;"/>
            <!-- button to press in order for changes to take place-->
            <input type='submit' value="Change" class='button' name="change" id="tobutton" style="text-align: center; margin-right: 40%"/>
            </div>
            <%      
                // when the change button is pressed
                    if(request.getParameter("change")!= null){
                    //variable is declared and value is gained from the user input.   
                    String tofname = request.getParameter("tofname");
                    String tolname = request.getParameter("tolname");
                    String toDcity = request.getParameter("toDcity");
                    String toAcity = request.getParameter("toAcity");
                    String toClass = request.getParameter("toClass");
                    int BID = Integer.parseInt(request.getParameter("BookingNumber"));
                    //sql query to change the data in database to data in the html form
                    PreparedStatement stmt = con.prepareStatement("Update flights set firstname=?, lastname=?, DEPARTURE_CITY=?,ARRIVAL_CITY=?, classes=? where ID=?;");
                     
                   stmt.setInt(2, BID);         
                    //conditions on which column to change to which data from the html form    
                    stmt.setString(1, tofname);
                    stmt.setString(2, tolname);
                    stmt.setString(3, toDcity);
                    stmt.setString(4, toAcity);
                    stmt.setString(5, toClass);
                     stmt.setInt(6, BID); 
                    stmt.executeUpdate();
                    out.println("<p style='text-align: center; margin-top: -10px; margin-left: 20px;'>Data Updated<p>");
               }
               con.close();
            %>
        </form>
        </div>
      
</div>

      <%@ include file="FooterJsp.jsp" %>  

        
    </body>
</html>
