package Database;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnectivity {
	public static Connection getConnection() {
        Connection conn = null;
        try {
            String url = "jdbc:mysql://localhost:3306/bookstore"; 
            String username = "root"; 
            String password = "abc123";    
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
