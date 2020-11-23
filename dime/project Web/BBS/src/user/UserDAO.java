package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
private Connection conn;
private PreparedStatement pstmt;
private ResultSet rs;
public UserDAO() {
	try {
		String dbURL ="jdbc:mysql://localhost:3306/web";
				String dbID="root";
		String dbPassword="root";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	} catch (Exception e) {
		// TODO: handle exception
	}
}
public int login(String ID,String pw) {
	String SQL = "Select pw From user where id = ?";
	try {
		pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1,ID);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			if(rs.getString(1).equals(pw)) {
				return 1;//성공
			}
			else 
				return 0;// 불일치
		}
		return -1; // id X
	} catch (Exception e) {
		// TODO: handle exception
	}
	return -2;
}

}
