package related_data;

import java.sql.*;

public class DataCon {
	
	static Connection connection;
	
	public static Connection connect() {
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String user="root";
			String pass="root";
			String info="jdbc:mysql://localhost:3306/job_db";
			
			
			connection=DriverManager.getConnection(info,pass,user);
			
			System.out.println("connection succes");
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
	}

}
