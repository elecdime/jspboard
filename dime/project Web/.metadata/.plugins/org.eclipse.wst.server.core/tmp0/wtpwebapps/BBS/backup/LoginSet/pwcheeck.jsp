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
<title> ChangeProfile_pw_check </title>
</head>
<body>
 
    <h1> ��й�ȣ ���� Ȯ�� </h1>
    <%
        // input_pw �� �ٷ� �� �������� CHANGEPROFILE_PW.jsp ���� �Է��� ù��° input(���� ��й�ȣ) �̴�
        String input_pw = request.getParameter("now_pw");
    
        // session_pw �� LOGIN_CHECK.jsp ���� �α��� ������ ���ÿ� session�� pw��� �̸����� ����� �����̴�
        String session_pw = session.getAttribute("pw").toString();
        
        // ������ �Է��� input_pw�� �� ������ ������ �ִ� session_pw�� �ٸ��� �ٽ� ���������� 
        if(!input_pw.equals(session_pw)) {
            // ���濡 �����ϸ� ���л����� ���â���� ����ְ� ���� ��й�ȣ �Է�, ���ο� ��й�ȣ �Է�, Ȯ�� �������� ������
            %> <script> alert("���� ��й�ȣ�� �ȸ³׿�"); history.go(-1); </script> <%            
        } 
        // input_pw�� session_pw�� ���ٸ� (��й�ȣ ���濡 �䱸�� ��������� �����ߴٸ�)
        else {            
            // new_pw�� ����µ� �̴� �� �������� CHANGEPROFILE_PW.jsp 2��° input���� �Է��� ���ο� ��й�ȣ �̴�
            String new_pw = request.getParameter("change_pw");
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
                // USER_PW �� new_pw �� ����(SET) �ش޶�
                Statement st = conn.createStatement();
                String sql = "UPDATE user SET pw ='" + new_pw 
                        + "' WHERE id='" + session.getAttribute("id") + "'";
                st.executeUpdate(sql);
               
                
                // ������ ������ CHANGEPROFILE.jsp �������� ���ư���
                response.sendRedirect("info.jsp");
                
            } catch (Exception e) {       
                out.println("DB ���� ����"+e);
            }    
        }
    %>
 
</body>
</html>

