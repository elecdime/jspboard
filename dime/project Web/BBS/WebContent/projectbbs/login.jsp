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
<title> Login_Check </title>
</head>
<body>
 
    <h1> 로그인 체크 페이지 </h1>
    
    <%
    String ip = request.getRemoteAddr();
    try
    {    
        String dbURL="jdbc:mysql://localhost:3306/web?useSSL=false";
        String dbID="root";
        String dbPW="root";
        Class.forName("com.mysql.jdbc.Driver");            //MySQL 라이브러리에서 드라이브 정보 로드
        Connection  conn=DriverManager.getConnection(dbURL,dbID,dbPW);  //커넥션 생성


         // sql 구사
         // 전 페이지인 LOGIN.jsp input에 입력한 값들을 변수에 담는다
         String id= request.getParameter("id");
         String pw= request.getParameter("pw");
         
        Statement st = conn.createStatement();
        // 내가 입려한 id와 pw 값이 DB안에 있는지 확인한다
        
        String sql = "SELECT * FROM user WHERE id='" + id + "' AND pw='" + pw + "'";
        String sql2 = "UPDATE user SET ip ='" + ip 
                + "' WHERE id='" + session.getAttribute("id") + "'";
        st.executeUpdate(sql2);
     
        ResultSet rs = st.executeQuery(sql);
        
        // isLogin 은 로그인 확인 유무를 위한 변수
        Boolean isLogin = false;
        while(rs.next()) {
            // rs.next가 true 라면 = 정보가 있다
            isLogin = true;
        }
        
        // DB에 내가 적은 정보가 있다면
        if(isLogin) {
            // 지금 로그인할 id와 pw를 session에 저장하고
            session.setAttribute("id", id); 
            session.setAttribute("pw", pw);
            // 첫 페이지로 돌려보낸다
            response.sendRedirect("Main.jsp");    
        } else {
            // DB에 내가적은 정보가 없다면 경고창을 띄워준다
            %> <script> alert("로그인 실패"); history.go(-1); </script> <%            
        }
        
        
    } catch (Exception e) {       
        out.println("DB 연동 실패"+e);
    }
    %>
 
</body>
</html>

