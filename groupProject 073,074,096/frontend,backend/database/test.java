/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author tahir
 */
public class test {
    public static void main(String[] args) throws ClassNotFoundException {
        try {
                Class.forName("oracle.jdbc.OracleDriver"); 
                Connection con;  
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/db2"
                        ,"SYSTEM","Hassan0099");
                JOptionPane.showMessageDialog(null, "Successfuly Connected with database");
                
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "Coonection with database failed");
              
            }
    }
}
