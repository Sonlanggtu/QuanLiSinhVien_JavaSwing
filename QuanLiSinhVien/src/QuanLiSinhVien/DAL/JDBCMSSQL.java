package QuanLiSinhVien.DAL;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sonlanggtu
 */
public class JDBCMSSQL {
    public static Connection GetConnect() {
        // Create a variable for the connection string.
        String connectionUrl = "jdbc:sqlserver://localhost:1433;"
                + "databaseName=QLSinhVien;" + "user=DamNgocSon;" + "password=123";

        try {
            // Establish the connection.
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(connectionUrl);
        } // Handle any errors that may have occurred.
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public static void main(String[] args) {
        Connection con = GetConnect();
        if(con != null){
             System.out.println("Thanh cong");
        }else{
            System.out.println("That bai");
        }
    }
}
