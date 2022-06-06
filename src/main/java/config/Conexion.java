package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	Connection con;
	private String jdbcURL = "jdbc:mysql://localhost:3306/registros?useSSL=false";
	private String jdbcUsername = "omele";
	private String jdbcPassword = "omele123";

	public Conexion() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (Exception e) {
			System.out.println("Error" + e);
		}
	}
	
	public Connection getConnection() {
		return con;
	}

}