/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Macklon
 */
public class dbconnect {
    Connection con=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    
    public void connect(){
        try{
        //Class.forName("com.mysql.jdbc.Driver");
        con=  DriverManager.getConnection("jdbc:mysql://localhost:3306/btrs","root","");
        }
        catch(Exception e){
            
        }
    }
}
