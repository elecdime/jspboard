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
<title> Login_Check </title>
</head>
<body>
 
    <h1> �α��� üũ ������ </h1>
    
    <%
    try
    {    
        String dbURL="jdbc:mysql://localhost:3306/web?useSSL=false";
        String dbID="root";
        String dbPW="root";
        Class.forName("com.mysql.jdbc.Driver");            //MySQL ���̺귯������ ����̺� ���� �ε�
        Connection  conn=DriverManager.getConnection(dbURL,dbID,dbPW);  //Ŀ�ؼ� ����


         // sql ����
         // �� �������� LOGIN.jsp input�� �Է��� ������ ������ ��´�
         String id= request.getParameter("id");
         String pw= request.getParameter("pw");
         
        Statement st = conn.createStatement();
        // ���� �Է��� id�� pw ���� DB�ȿ� �ִ��� Ȯ���Ѵ�
        String sql = "SELECT * FROM user WHERE id='" + id + "' AND pw='" + pw + "'";
  
        ResultSet rs = st.executeQuery(sql);
        
        // isLogin �� �α��� Ȯ�� ������ ���� ����
        Boolean isLogin = false;
        while(rs.next()) {
            // rs.next�� true ��� = ������ �ִ�
            isLogin = true;
        }
        
        // DB�� ���� ���� ������ �ִٸ�
        if(isLogin) {
            // ���� �α����� id�� pw�� session�� �����ϰ�
            session.setAttribute("id", id); 
            session.setAttribute("pw", pw);
            // ù �������� ����������
            response.sendRedirect("Main.jsp");    
        } else {
            // DB�� �������� ������ ���ٸ� ���â�� ����ش�
            %> <script> alert("�α��� ����"); history.go(-1); </script> <%            
        }
        
        
    } catch (Exception e) {       
        out.println("DB ���� ����"+e);
    }
    %>
 
</body>
</html>

