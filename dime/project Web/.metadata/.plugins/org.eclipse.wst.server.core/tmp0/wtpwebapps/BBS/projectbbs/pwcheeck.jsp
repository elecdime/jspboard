<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> ChangeProfile_pw_check </title>
</head>
<body>
 
    <h1> 비밀번호 변경 확인 </h1>
    <%
        // input_pw 는 바로 전 페이지인 CHANGEPROFILE_PW.jsp 에서 입력한 첫번째 input(현재 비밀번호) 이다
        String input_pw = request.getParameter("now_pw");
    
        // session_pw 는 LOGIN_CHECK.jsp 에서 로그인 성공과 동시에 session에 pw라는 이름으로 저장된 문자이다
        String session_pw = session.getAttribute("pw").toString();
        
        // 앞전에 입력한 input_pw와 내 계정이 가지고 있는 session_pw가 다르면 다시 돌려보낸다 
        if(!input_pw.equals(session_pw)) {
            // 변경에 실패하면 실패사유를 경고창으로 띄워주고 현재 비밀번호 입력, 새로운 비밀번호 입력, 확인 페이지로 보낸다
            %> <script> alert("현재 비밀번호가 안맞네요"); history.go(-1); </script> <%            
        } 
        // input_pw와 session_pw가 같다면 (비밀번호 변경에 요구된 모든조건을 충족했다면)
        else {            
            // new_pw를 만드는데 이는 전 페이지인 CHANGEPROFILE_PW.jsp 2번째 input에서 입력한 새로운 비밀번호 이다
            String new_pw = request.getParameter("change_pw");
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
                // USER_PW 를 new_pw 로 변경(SET) 해달라
                Statement st = conn.createStatement();
                String sql = "UPDATE user SET pw ='" + new_pw 
                        + "' WHERE id='" + session.getAttribute("id") + "'";
                st.executeUpdate(sql);
               
                
                // 변경이 끝나면 CHANGEPROFILE.jsp 페이지로 돌아간다
                response.sendRedirect("info.jsp");
                
            } catch (Exception e) {       
                out.println("DB 연동 실패"+e);
            }    
        }
    %>
 
</body>
</html>


