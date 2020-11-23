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
<title> ChangeProfile_hobby </title>
</head>
<body>
 
    <h1> 이름 </h1>
    <br /> <form action="namecheeck.jsp" method="post" onsubmit="return input_check_func()">
    <br /> 
    <br /> 현재 이름 :
    <%
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
            // USER_HOBBY 값을 들고와라
            Statement st = conn.createStatement();
            String sql = "SELECT name FROM user WHERE ID='" + session.getAttribute("id") +"'";
            
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next()) {
                // rs 안에 들어있는 놈이 있다면 값 출력
                out.println(rs.getString("name"));
            }
 
        } catch (Exception e) {
            out.println("DB 연동 실패");
        }
    %>
    <br /> 
    <br /> 바꿀 이름  : <input id="new_name" name="new_name"> 
    <br /> 
    <br /> <button>변경</button>
    <br /> </form>
    
    <script>
        // input_check_func는 이름 변경에 필요한 문항을 채워 넣었는지 check 해준다
        // 이는 form onsubmit에 의해 발동되며 return 값이 false 일 경우 페이지의 데이터가 action= 좌표로 넘어가지 않게된다
        function input_check_func() {
            var new_name= document.getElementById('new_name').value;
 
            if (new_name == null || new_name == "") {
                alert("공백은 허용치 않는다");
                return false;
            } else {
                // input이 공백인지 유무가 통과되면 action=좌표 로 이동한다
                return true;
            }
        }
    </script>
 
</body>
</html>


