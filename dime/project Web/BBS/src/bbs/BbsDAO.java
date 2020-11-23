package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {
	private Connection conn = null;
	private    PreparedStatement pstmt = null;
	private ResultSet rs;
	  
public BbsDAO(){
	
	  try {
	       
	         String jdbcUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=utf8";
	        String dbId = "root";
	        String dbPass = "root";

	        Class.forName("com.mysql.jdbc.Driver");
	        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
	            
	  
	         
}catch (Exception e) {
	e.printStackTrace();
	// TODO: handle exception
}
}
	

public String getDate() {
	String SQL= "select now()";
	try {
		PreparedStatement pstmt =conn.prepareStatement(SQL);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			
			return rs.getString(1);
			
		}
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return "";
	
}

public int getNext() {
	String SQL= "select bbsID FROM  BBS ORDER BY bbsID DESC";
	try {
		PreparedStatement pstmt =conn.prepareStatement(SQL);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			
			return rs.getInt(1) + 1 ;
			
		}
		return 1;
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return -1;
	
}
public int wirte(String bbsTitle , String userID, String bbsContent) {
	String SQL= "insert into BBS Values (?,?,?,?,?,?)";
	try {
		PreparedStatement pstmt =conn.prepareStatement(SQL);
		pstmt.setInt(1, getNext());
		pstmt.setString(2, bbsTitle);
		pstmt.setString(3, userID);
		pstmt.setString(4, getDate());
		pstmt.setString(5, bbsContent);
		pstmt.setInt(6, 1);
		
	
		
		return pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return -1;
}
public ArrayList<bbs> getList(int pageNumber){
	String SQL= "select* from bbs where bbsID < ? AND bbsCheeck = 1 ORDER BY bbsID DESC LIMIT 10";
	ArrayList<bbs> list = new ArrayList<bbs>();
	try {
		PreparedStatement pstmt =conn.prepareStatement(SQL);
		pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			bbs bbs = new bbs();
			bbs.setBbsID(rs.getInt(1));
			bbs.setBbsTitle(rs.getString(2));
			bbs.setUserID(rs.getString(3));
			bbs.setBbsDate(rs.getString(4));
			bbs.setBbsContent(rs.getString(5));
			bbs.setBbsCheck(rs.getInt(6));
			
			list.add(bbs);
		}
	
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return list;
}
public boolean nextPage(int pageNumber) {
	String SQL= "select* from bbs where bbsID < ? AND bbsCheeck = 1 ORDER BY bbsID DESC LIMIT 10";
	
	try {
		PreparedStatement pstmt =conn.prepareStatement(SQL);
		pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			
			return true;
			
		}} catch (Exception e) {
			e.printStackTrace();
		}
		return false;



}
public bbs getbbs(int bbsID)
{
	
String SQL= "select* from bbs where bbsID = ?";

	
	try {
		PreparedStatement pstmt =conn.prepareStatement(SQL);
		pstmt.setInt(1, bbsID); 
		rs = pstmt.executeQuery();
		if(rs.next()) {
			bbs bbs = new bbs();
			bbs.setBbsID(rs.getInt(1));
			bbs.setBbsTitle(rs.getString(2));
			bbs.setUserID(rs.getString(3));
			bbs.setBbsDate(rs.getString(4));
			bbs.setBbsContent(rs.getString(5));
			bbs.setBbsCheck(rs.getInt(6));
			

			return bbs;
			
		}} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	
}
public int update(int bbsID , String bbsTitle, String bbsContent) {
	String SQL= "update bbs set bbsTitle = ? , bbsContent = ? where bbsID = ?";
	try {
		PreparedStatement pstmt =conn.prepareStatement(SQL);
		pstmt.setString(1, bbsTitle);
		pstmt.setString(2, bbsContent);
		pstmt.setInt(3, bbsID);

		
	
		
		return pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return -1;
}
public int delete(int bbsID) {
	String SQL = "update bbs set bbsCheeck =0 where bbsID=?;";
	try {
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setInt(1, bbsID);
		return pstmt.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	}
	return -1; // 데이터베이스 오류
}
}


