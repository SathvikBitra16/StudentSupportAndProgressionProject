package ServletClasses;

import java.sql.*;

public class DBConnect {
	public static Connection connect() throws ClassNotFoundException, SQLException{ 
		Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl", "system", "password");
		return con; 
	} 
}
