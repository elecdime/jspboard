<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

 

<%
String idt = request.getParameter("id");
      request.setCharacterEncoding("utf-8");
 
    
      Connection conn = null;
      PreparedStatement pstmt = null;
      
      // 셀렉트문 만 필요함.
      ResultSet rs = null;
   


      try
      {
            String jdbcUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&amp;characterEncoding=utf-8";
            String dbId = "root";
            String dbPass = "root";
  
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
            // 공통사항
            String sql = "select * from user where id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, idt);
            rs=pstmt.executeQuery();
          
            while(rs.next()){
         String id = rs.getString("id");
         String pw = rs.getString("pw");
         String name = rs.getString("name");
         String email = rs.getString("email");
         String phone = rs.getString("phone");
      
            	%>

회원가입이 완료 되었습니다.
<form>
<table border ="1">
<tr  class = "label">
<td>아이디 </td><td class = "content"><%=id%></td>
</tr>
<tr>
<tr class = "label">
<td>이메일</td><td class = "content"><%=email%></td>
</tr>
<tr>
<tr class = "label">
<td>비밀번호 </td><td class = "content"><%=pw%></td>
</tr>
<tr class = "label">
<td>이름 </td><td class = "content"><%=name%></td>
</tr>

<tr class = "label">
<td>전화번호 </td><td class = "content"><%=phone%></td>
</tr>

 
 </form>



       <%     }
         
      }catch(Exception e){
            e.printStackTrace();
      }finally{
    	    if(rs !=null) try { rs.close(); } catch(SQLException sqle) {}
            if(pstmt != null) try { pstmt.close(); } catch(SQLException sqle) {}
            if(conn != null) try { conn.close(); } catch(SQLException sqle) {}
      }
%>
</table>
<p>

