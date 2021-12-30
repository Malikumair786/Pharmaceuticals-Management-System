/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.*;
import javax.swing.JOptionPane;
public class ConnectionProvider {
    public static Connection getCon() throws ClassNotFoundException{
            try {
                Class.forName("oracle.jdbc.OracleDriver"); 
                Connection con;  
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl"
                        ,"GroupProject","GroupProject");
                return con;
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "Coonection with database failed");
                return null;
            }
         
    }  
}
