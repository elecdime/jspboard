<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> ChangeProfile_hobby_check </title>
</head>
<body>
 
    <h1> 이름 변경 확인 </h1>
    <%

        String new_name = request.getParameter("new_name");
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
        // 드라이버 로딩
         String jdbcUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=utf8";
        String dbId = "root";
        String dbPass = "root";

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
            // sql 구사
            // USERTABLE 안에있는 USER_ID= 현재 로그인한 ID 필드로 가서
            // USER_HOBBY 를 new_hobby 로 변경(SET) 해달라
            Statement st = conn.createStatement();
            String sql = "UPDATE user SET name ='" + new_name + "' WHERE id='"
                    + session.getAttribute("id") + "'";
            st.executeUpdate(sql);
           
 
            // 변경이 끝나면 CHANGEPROFILE.jsp 페이지로 돌아간다
            response.sendRedirect("info.jsp");
 
        } catch (Exception e) {
            out.println("DB 연동 실패");
        }
    %>
 
</body>
</html>

