/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-07-07 01:21:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.projectbbs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    request.setCharacterEncoding("utf-8");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title> Join </title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write(" \r\n");
      out.write(" <section class=\"container\" style=\"max-width: 560px;\">\r\n");
      out.write("<form method=\"post\" action=\"./registerinfo.jsp\">\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>아이디</label>\r\n");
      out.write("<input type=\"text\" name=\"id\" class=\"form-control\" placeholder=\"id\">\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>비밀번호</label>\r\n");
      out.write("<input type=\"password\" name=\"pw\" class=\"form-control\"placeholder=\"password\">\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>이메일</label>\r\n");
      out.write("<input type=\"text\" name=\"email\" class=\"form-control\"placeholder=\"test@example.com\">\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>이름</label>\r\n");
      out.write("<input type=\"text\" name=\"name\" class=\"form-control\"placeholder=\"홍길동\">\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("<label>휴대폰</label>\r\n");
      out.write("<input type=\"text\" name=\"phone\" class=\"form-control\" placeholder=\"010-1234-1234\">\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<button type=\"submit\" class=\"btn btn-primary\">Register</button>\r\n");
      out.write("</form>\r\n");
      out.write("</section>\r\n");
      out.write("    \r\n");
      out.write("    <script>\r\n");
      out.write("    // input_check_func는 회원가입에 필요한 3가지 문항을 전부다 채워 넣었는지 check 해준다\r\n");
      out.write("    // 이는 form onsubmit에 의해 발동되며 return 값이 false 일 경우 페이지의 데이터가 action= 좌표로 넘어가지 않게된다\r\n");
      out.write("    function input_check_func() {\r\n");
      out.write("        var id = document.getElementById('id').value;\r\n");
      out.write("        var pw = document.getElementById('pw').value;\r\n");
      out.write("        var email = document.getElementById('email').value;\r\n");
      out.write("        var name = document.getElementById('name').value;\r\n");
      out.write("        var phone = document.getElementById('phone').value;\r\n");
      out.write("        \r\n");
      out.write("        if(id == null || pw == null || email == null ||name == null ||phone == null ||\r\n");
      out.write("         id == \"\"   || pw == \"\"   || email == \"\"|| name == \"\"|| phone == \"\") {\r\n");
      out.write("            alert(\"비어있는 칸이 있습니다.\");\r\n");
      out.write("            return false;\r\n");
      out.write("        } else {\r\n");
      out.write("            // 모든조건이 충족되면 true를 반환한다 이는 현재 페이지의 정보를 action= 좌표로 넘긴다는것을 의미\r\n");
      out.write("            return true;\r\n");
      out.write("        }\r\n");
      out.write("    }    \r\n");
      out.write("    </script>\r\n");
      out.write(" \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
