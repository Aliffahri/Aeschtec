/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package si_klinik_server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author aliffahri
 */
public class DatabaseUtilities {
    private static Connection connection;
    public static Connection getConnection() {
        if(connection == null){
            try{
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cis", "root", "");
                System.out.println("Database terhubung");
            }
            catch (SQLException ex){
                Logger.getLogger(DatabaseUtilities.class.getName()).log(Level.SEVERE, null, ex);
                System.err.println("Database tidak tersambung, cek databasenya/koneksinya"+ex);
            }
        }
        return connection;
    }
    
}
