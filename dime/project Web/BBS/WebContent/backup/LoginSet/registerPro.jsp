<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>
<%@ page pageEncoding="utf-8"%>
 

<%
out.println(session.getAttribute("id") + " 님 개인정보");
      request.setCharacterEncoding("utf-8");
 
      Timestamp register = new Timestamp(System.currentTimeMillis());
 
      Connection conn = null;
      PreparedStatement pstmt = null;
      // Connection/PreparedStatement/ResultSet ==> interface


 

      try
      {
            String jdbcUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=utf8";
            String dbId = "root";
            String dbPass = "root";
  
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
  
            Statement st = conn.createStatement();
            String sql = "SELECT * FROM user WHERE id='" + session.getAttribute("id") + "'";
            st.executeUpdate(sql);
            ResultSet rs = st.executeQuery(sql);



      }catch(Exception e){	
            e.printStackTrace();
      }finally{
            if(pstmt != null) try { pstmt.close(); } catch(SQLException sqle) {}
            if(conn != null) try { conn.close(); } catch(SQLException sqle) {}
      }
%>