<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>
<%@ page pageEncoding="utf-8"%>
 

<table border=1 cellspacing=0 cellpadding=4>
<tr class ="label">
<td>아이디 </td>
<td>비밀번호</td>
<td>이름</td>
<td>이메일</td>
<td>휴대폰</td>
<td>가입일자</td>

</tr>

<%
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
            String sql = "select * from user";
            pstmt = conn.prepareStatement(sql);
            rs=pstmt.executeQuery();
          
            while(rs.next()){
         String id = rs.getString("id");
         String pw = rs.getString("pw");
         String name = rs.getString("name");
         String email = rs.getString("email");
         String phone = rs.getString("phone");
         Timestamp register =rs.getTimestamp("reg_data");
            	%>
            	<tr>
            	<td><%=id%></td>
            	<td><%=pw%></td>
            	<td><%=name%></td>
            	<td><%=email%></td>
            	<td><%=phone%></td>
            	<td><%=register.toString() %>
            	</td>
            	</tr>
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
