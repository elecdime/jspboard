package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Util.DButil;

public class userDAO {
public int join(String userID , String userPassword) {
	String SQL= "INSELT INTO USER VALUSE(?,?)"
			;
	try {
		Connection conn = DButil.getc();
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		
		pstmt.setString(1,userID);
		pstmt.setString(2, userPassword);
		return pstmt.executeUpdate();
	} catch (Exception e) {
	
		return -1;
	}
	
}
}
