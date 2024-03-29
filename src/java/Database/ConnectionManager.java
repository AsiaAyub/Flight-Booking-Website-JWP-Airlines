package Database;


import java.sql.*;
public class ConnectionManager {
   private static String url = "jdbc:mysql://localhost:3306/mydb?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";    
    private static String driverName = "com.mysql.cj.jdbc.Driver";   
    private static String username = "root";   
    private static String password = "safe123";
    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName(driverName);
            try {
                con = DriverManager.getConnection(url, username, password);
            } catch (SQLException ex) {
                System.out.println("Failed to create the database connection."); 
            }
        } catch (ClassNotFoundException ex) {   
            System.out.println("Driver not found."); 
        }
        return con;
    } 
}
