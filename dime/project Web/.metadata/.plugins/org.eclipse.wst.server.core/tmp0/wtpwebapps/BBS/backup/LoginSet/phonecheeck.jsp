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
<title> ChangeProfile_hobby_check </title>
</head>
<body>
 
    <h1> ��ȣ ���� Ȯ�� </h1>
    <%
        // new_hobby �� �ٷ� �� �������� CHANGEPROFILE_HOBBY.jsp ���� �Է��� ���ο� hobby �̴�
        String new_phone = request.getParameter("new_phone");
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
            // USER_HOBBY �� new_hobby �� ����(SET) �ش޶�
            Statement st = conn.createStatement();
            String sql = "UPDATE user SET phone ='" + new_phone + "' WHERE id='"
                    + session.getAttribute("id") + "'";
            st.executeUpdate(sql);

 
            // ������ ������ CHANGEPROFILE.jsp �������� ���ư���
            response.sendRedirect("info.jsp");
 
        } catch (Exception e) {
            out.println("DB ���� ����"+e);
        }
    %>
 
</body>
</html>


