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

<table border ="1" cellspacing=0 cellpadding=4>
<tr>
<td>아이디 </td><td><%=id%></td>
</tr>
<tr>
<td>비밀번호 </td><td><input type="password" name = "passwd" size ="20"
maxlength="16" value=<%=pw%> required> </td>
</tr>
<tr>
<td>이메일 </td><td><input type="text" name = "email" size ="20"
maxlength="50" value=<%=email%> autofocus required> </td>
</tr>
<tr>
<td>이름 </td><td><input type="text" name = "name" size ="20"
maxlength="10" value=<%=name%> required> </td>
</tr>
<tr>
<td>전화번호 </td><td><input type="text" name = "phone" size ="20"
maxlength="20" value=<%=phone%> required> </td>
</tr>
<tr>
<td colspan="2"><input type="submit" value = "수정하기 " >
                <input type="reset" value = "재작성"> </td>




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
<a href="UpdatePro.jsp?id=<%=idt%>">수정하기</a>

