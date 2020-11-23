<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>
<%@ page pageEncoding="utf-8"%>
 

<%
      request.setCharacterEncoding("utf-8");
 
      String idt = request.getParameter("idt");
      String passwd = request.getParameter("passwd");
      String name = request.getParameter("name");
      String phone = request.getParameter("phone");
      String email = request.getParameter("email");
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
  
            String sql = "update user set pw=?,name=?,email=?,phone=?";
            pstmt = conn.prepareStatement(sql);
            
        ;
            pstmt.setString(1, passwd);
            pstmt.setString(2, name);
            pstmt.setString(3, email);
            pstmt.setString(4, phone);
      
            pstmt.executeUpdate();
            response.sendRedirect("insertResult.jsp?id="+idt);
          
      }catch(Exception e){	
            e.printStackTrace();
      }finally{
            if(pstmt != null) try { pstmt.close(); } catch(SQLException sqle) {}
            if(conn != null) try { conn.close(); } catch(SQLException sqle) {}
      }
%>