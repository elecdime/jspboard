/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-07-08 13:51:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.projectbbs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class Main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/projectbbs/Top.jsp", Long.valueOf(1594211303219L));
    _jspx_dependants.put("/projectbbs/bottom.jsp", Long.valueOf(1594212162896L));
    _jspx_dependants.put("/projectbbs/left.jsp", Long.valueOf(1594085388788L));
  }

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

      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("   <!-- Required meta tags -->\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("  <!-- Bootstrap CSS -->\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css\" integrity=\"sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M\" crossorigin=\"anonymous\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"coustom.css\"> \r\n");
      out.write("<title>게시판 연습</title>\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("        <div id=\"TOP\" style=\"width:960px;height:150px;\">\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("    <html>\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write(" <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\" type=\"text/css\">\r\n");
      out.write(" </head>\r\n");
      out.write("  <nav class=\"navbar navbar-expand-md navbar-light\">\r\n");
      out.write("    <div class=\"container justify-content-center\"> <button class=\"navbar-toggler navbar-toggler-right border-0\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbar3\">\r\n");
      out.write("        <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("      </button>\r\n");
      out.write("      <div class=\"collapse navbar-collapse text-center justify-content-center\" id=\"navbar3\">\r\n");
      out.write("        <ul class=\"navbar-nav\">\r\n");
      out.write("          <li class=\"nav-item mx-2\"> <a class=\"nav-link\" href=\"Main.jsp\">메인</a> </li>\r\n");
      out.write("          <li class=\"nav-item mx-2\"> <a class=\"nav-link\" href=\"info.jsp\">내 정보</a> </li>\r\n");
      out.write("          <li class=\"nav-item mx-2\"> <a class=\"nav-link navbar-brand mr-0 text-primary\" href=\"bbs.jsp\"><i class=\"fa d-inline fa-lg fa-stop-circle-o\"></i>\r\n");
      out.write("              <b> 게시판 </b></a> </li>\r\n");
      out.write("\r\n");
      out.write("               <li class=\"nav-item dropdown\">\r\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("  개인정보\r\n");
      out.write("        </a>\r\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"left.jsp\">로그인</a>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"register.jsp\">회원가입</a>\r\n");
      out.write("       \r\n");
      out.write("        </div>\r\n");
      out.write("        </li>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </nav>\r\n");
      out.write("  <div class=\"py-5\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-12\"></div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      \r\n");
      out.write("        <table width=\"960px\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td width=\"160\" valign=\"top\">\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <html>\r\n");
      out.write("    <head>\r\n");
      out.write(" <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write(" <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\" type=\"text/css\">\r\n");
      out.write(" </head>\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write(" ");
  if(session.getAttribute("id")==null){ //세션이 설정되지 않을 경우 참조  
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<form class=\"form-inline\" action=\"login.jsp\" method=\"get\">\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("              <input type=\"text\" class=\"form-control\" name =\"id\" id=\"id\" placeholder=\"id\"> </div>\r\n");
      out.write("            <div class=\"form-group form-row\">\r\n");
      out.write("              <div class=\"col-sm-10\"><input type=\"password\" class=\"form-control \" name = \"pw\" id=\"pw\" placeholder=\"비밀번호\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <button class=\"btn btn-primary align-items-center col-sm-6\" ><i class=\"fa fa-user fa-fw\"></i>로그인</button>\r\n");
      out.write("            <a class=\"btn btn-secondary col-sm-6\" href=\"register.jsp\" style=\"\"></i> 회원가입 </a>\r\n");
      out.write("          </form>");
 }else{ 
      out.write("\r\n");
      out.write("<form method=\"post\" action=\"logout.jsp\">\r\n");
      out.write("\t");
      out.print(session.getAttribute("id") );
      out.write("님 환영합니다~\r\n");
      out.write("\t\r\n");
      out.write("\t<input type=\"submit\" value=\"로그아웃\" />\r\n");
      out.write("</form>\r\n");
      out.write("<button onClick=\"location.href='info.jsp'\"> 개인정보 변경</button>\r\n");
 if(session.getAttribute("id").equals("admin")){
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<button onClick=\"location.href='#'\"> 관리자 페이지</button>\r\n");
      out.write("\t\r\n");
} 
      out.write("\r\n");
      out.write("\r\n");
 } 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("          ");
      out.write("\r\n");
      out.write("                </td>\r\n");
      out.write("                <td width=\"800\" valign=\"#\" style=\"padding-left: 100px\">\r\n");
      out.write("                    <table width=\"100%\" height=\"475\" cellpadding=\"0\" cellspacing=\"0\" id=\"tables\">\r\n");
      out.write("                        <tr >\r\n");
      out.write("                            <td border=\"3px\">\r\n");
      out.write("                        \t\r\n");
      out.write("                                 <div class=\"container\">\r\n");
      out.write("        <div class=\"jumbotron\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <h1>웹 사이트 소개</h1>\r\n");
      out.write("                <p>이 웹 사이트는 부트스트랩으로 만든 JSP 웹 사이트입니다.  저희 첫 웹 토이프로젝트 입니다. 디자인 템플릿으로는 부트스트랩을 이용했습니다.</p>\r\n");
      out.write("                \r\n");
      out.write("             <p>   <a role=\"button\" class=\"btn btn-primary btn-pull\" href=\"#\" onclick=\"window.open('../projectbbs/profile.jsp','tistory','width=400, height=400, scrollbars=no, resizable=no, toolbars=no, menubar=no')\">자세히 보기\r\n");
      out.write("</a></p>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("   \r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                             \r\n");
      out.write("                            \r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    \r\n");
      out.write("                    </table>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("         \r\n");
      out.write("        </table>\r\n");
      out.write("    <footer id = \"bottom\">\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    request.setCharacterEncoding("utf-8");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<footer class=\"bg-dark mt-4 p-5 text-center\" style=\"color:#FFFFFF;\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("Copyright &copy; 2020 Dime All Rights Reserved.<br>\r\n");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js\" integrity=\"sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js\" integrity=\"sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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