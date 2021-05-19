/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProjectWork;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author PR3YDATOR
 */
class MyConnection {
    final static String JDBC_DRIVER="com.mysql.jdbc.Driver";
    final static String DB_URL="jdbc:mysql://localhost:3306/studentmanagementsystem";
 final static String USER="root";
 final static  String PASS="";

 public static Connection connection() throws SQLException
 {
     try{
         Class.forName(JDBC_DRIVER);
       //establish connection   call getConnection    DB_URL=  
         Connection con = (Connection) DriverManager.getConnection(DB_URL, USER, PASS);
      return con;
     }
     catch(ClassNotFoundException | SQLException e)
     {
         JOptionPane.showMessageDialog(null,e);
         return null;
     }
 }
}

 