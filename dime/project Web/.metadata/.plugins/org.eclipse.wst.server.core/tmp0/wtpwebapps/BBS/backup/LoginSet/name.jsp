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
 
    <h1> �̸� </h1>
    <br /> <form action="namecheeck.jsp" method="post" onsubmit="return input_check_func()">
    <br /> 
    <br /> ���� �̸� :
    <%
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
        // ����̹� �ε�
         String jdbcUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=utf8";
        String dbId = "root";
        String dbPass = "root";

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
            // sql ����
            // USERTABLE �ȿ��ִ� USER_ID= ���� �α����� ID �ʵ�� ����
            // USER_HOBBY ���� ���Ͷ�
            Statement st = conn.createStatement();
            String sql = "SELECT name FROM user WHERE ID='" + session.getAttribute("id") +"'";
            
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next()) {
                // rs �ȿ� ����ִ� ���� �ִٸ� �� ���
                out.println(rs.getString("name"));
            }
 
        } catch (Exception e) {
            out.println("DB ���� ����");
        }
    %>
    <br /> 
    <br /> �ٲ� �̸�  : <input id="new_name" name="new_name"> 
    <br /> 
    <br /> <button>����</button>
    <br /> </form>
    
    <script>
        // input_check_func�� �̸� ���濡 �ʿ��� ������ ä�� �־����� check ���ش�
        // �̴� form onsubmit�� ���� �ߵ��Ǹ� return ���� false �� ��� �������� �����Ͱ� action= ��ǥ�� �Ѿ�� �ʰԵȴ�
        function input_check_func() {
            var new_name= document.getElementById('new_name').value;
 
            if (new_name == null || new_name == "") {
                alert("������ ���ġ �ʴ´�");
                return false;
            } else {
                // input�� �������� ������ ����Ǹ� action=��ǥ �� �̵��Ѵ�
                return true;
            }
        }
    </script>
 
</body>
</html>


