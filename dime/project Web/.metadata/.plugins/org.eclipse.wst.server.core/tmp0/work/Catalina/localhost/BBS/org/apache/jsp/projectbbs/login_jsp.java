/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-06-26 02:18:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.projectbbs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

    request.setCharacterEncoding("euc-kr");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("<title> Login_Check </title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write(" \r\n");
      out.write("    <h1> 로그인 체크 페이지 </h1>\r\n");
      out.write("    \r\n");
      out.write("    ");

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
            
      out.write(" <script> alert(\"로그인 실패\"); history.go(-1); </script> ");
            
        }
        
        
    } catch (Exception e) {       
        out.println("DB 연동 실패"+e);
    }
    
      out.write("\r\n");
      out.write(" \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
