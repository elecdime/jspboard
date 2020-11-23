<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> JoinCheck </title>
</head>
<body>
 
    <%
        // JOIN.jsp input 에서 입력한 회원가입에 필요한 값들을 변수에 담아준다
        String id     = request.getParameter("id");
        String pw     = request.getParameter("pw");
        String email= request.getParameter("email");
        String phone= request.getParameter("phone");
        String name= request.getParameter("name");
        Timestamp reg_date = new Timestamp(System.currentTimeMillis());
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            // 드라이버 로딩
             String jdbcUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=utf8";
            String dbId = "root";
            String dbPass = "root";
  
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
            Statement st = conn.createStatement();
            String sql = "INSERT INTO user VALUES ('" + id + "','" + pw + "','" + name + "','"+ email + "','"+ phone + "','"+ reg_date+"')";
             
            st.executeUpdate(sql);
            
            // 회원가입에 성공하였으면 첫 페이지로 보낸다
            response.sendRedirect("Main.jsp");        
            
        } catch (Exception e) {       
            out.println("DB 연동 실패"+e);
        }    
    %>
 
</body>
</html>


