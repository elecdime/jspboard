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
<title> ChangeProfile </title>
</head>
<body>
 
    <h1> 개인정보변경 </h1>
    <%
        out.println(session.getAttribute("id") + " 님 개인정보");        

    Connection conn = null;
    PreparedStatement pstmt = null;
    // Connection/PreparedStatement/ResultSet ==> interface




    try
    {
          String jdbcUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=utf8";
          String dbId = "root";
          String dbPass = "root";

          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        
        // sql 구사
        Statement st = conn.createStatement();
        String sql = "SELECT * FROM user WHERE id='" + session.getAttribute("id") + "'";

        ResultSet rs = st.executeQuery(sql);
        
        while(rs.next()) {
            %>
            <table border="1">
                <tr>
                    <th>
                        비밀번호
                    </th>
                    <td>
                        <%= rs.getString("pw") %>
                    </td>
                    <td>
                        <button onClick="location.href='pw.jsp'">
                            변경
                        </button>
                    </td>
                </tr>
                
                <tr>
                    <th>
                       이메일
                    </th>
                    <td><%= rs.getString("email") %>
                    </td>
                    <td>
                        <button onClick="location.href='email.jsp'">
                            변경
                        </button>
                    </td>
                </tr>
                 <tr>
                    <th>
                      이름
                    </th>
                    <td><%= rs.getString("name") %>
                    </td>
                    <td>
                        <button onClick="location.href='name.jsp'">
                            변경
                        </button>
                    </td>
                </tr>
                 <tr>
                    <th>
                   휴대폰
                    </th>
                    <td><%= rs.getString("phone") %>
                    </td>
                    <td>
                        <button onClick="location.href='phone.jsp'">
                            변경
                        </button>
                    </td>
                </tr>
            </table>
            <%
        }        
    } catch (Exception e) {       
        out.println("DB 연동 실패" +e );
    }    
    %>
    
    <br />
    <br /> <button onClick="location.href='Main.jsp'"> 메인으로 돌아가기 </button>
 
</body>
</html>


