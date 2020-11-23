package file;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class fileDAO {
private Connection conn;
private PreparedStatement pstmt;
private ResultSet rs;
public fileDAO() {
	try {
		String dbURL ="jdbc:mysql://localhost:3306/file?useUnicode=true&characterEncoding=utf8";
				String dbID="root";
		String dbPassword="root";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	} catch (Exception e) {
		// TODO: handle exception
	}
}
public int uploadFile(String fileName, String fileRealName) {
	String sql = "insert into file Values (?,?)";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,fileName);
		pstmt.setString(2,fileRealName);
		return pstmt.executeUpdate(); 
	} catch (Exception e) {
	e.printStackTrace();
	}
	return -1;
}

}