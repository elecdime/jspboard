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
        // JOIN.jsp input ���� �Է��� ȸ�����Կ� �ʿ��� ������ ������ ����ش�
        String id     = request.getParameter("id");
        String pw     = request.getParameter("pw");
        String email= request.getParameter("email");
        String phone= request.getParameter("phone");
        String name= request.getParameter("name");
        Timestamp reg_date = new Timestamp(System.currentTimeMillis());
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            // ����̹� �ε�
             String jdbcUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=utf8";
            String dbId = "root";
            String dbPass = "root";
  
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
            Statement st = conn.createStatement();
            String sql = "INSERT INTO user VALUES ('" + id + "','" + pw + "','" + name + "','"+ email + "','"+ phone + "','"+ reg_date+"')";
             
            st.executeUpdate(sql);
            
            // ȸ�����Կ� �����Ͽ����� ù �������� ������
            response.sendRedirect("Main.jsp");        
            
        } catch (Exception e) {       
            out.println("DB ���� ����"+e);
        }    
    %>
 
</body>
</html>


