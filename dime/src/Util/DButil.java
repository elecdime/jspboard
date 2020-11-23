package Util;

import java.sql.Connection;
import java.sql.DriverManager;

public  class DButil {
public static Connection getc() {
try {
	String dbURL ="jdbc:mysql://localhost:3306/sd?serverTimezone=Asia/Seoul&useSSL=false";
			String dbID="root";
			String dbPassWord="root";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassWord);
			 
} catch (Exception e) {
	// TODO: handle exception
}
	return null;
}
}
