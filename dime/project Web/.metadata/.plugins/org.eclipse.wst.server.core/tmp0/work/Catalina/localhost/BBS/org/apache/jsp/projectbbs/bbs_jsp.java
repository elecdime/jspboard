/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-07-08 13:20:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.projectbbs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import bbs.BbsDAO;
import bbs.bbs;
import java.util.ArrayList;
import java.sql.*;

public final class bbs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/projectbbs/Top.jsp", Long.valueOf(1594211303219L));
    _jspx_dependants.put("/projectbbs/bottom.jsp", Long.valueOf(1594212162896L));
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
      out.write("   \r\n");
      out.write("<!doctype html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

request.setCharacterEncoding("UTF-8");
String userID =null;
if(session.getAttribute("id")!= null){
	userID =(String) session.getAttribute("id");
}
int pageNumber = 1;
if(request.getParameter("pageNumber")!=null){
pageNumber = Integer.parseInt(request.getParameter("pageNumber"));	
}

      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("   <!-- Required meta tags -->\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("  <!-- Bootstrap CSS -->\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css\" integrity=\"sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<title>게시판 연습</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("a, a:hover{\r\n");
      out.write("\r\n");
      out.write("color: #000000;\r\n");
      out.write("text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("  \r\n");
      out.write(" <div id=\"TOP\" style=\"width:960px;height:150px;\">\r\n");
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
      out.write("<div class=\"container\">\r\n");
      out.write("<div class =\"row\">\r\n");
      out.write("<table class = \"table table-striped\" style=\"text-align: center;border: 1px solid #dddddd;\">\r\n");
      out.write("<thead>\r\n");
      out.write("<tr>\r\n");
      out.write("<th style=\"background-color: #eeeeee ; text-align: center;\">번호</th>\r\n");
      out.write("<th style=\"background-color: #eeeeee ; text-align: center;\">제목</th>\r\n");
      out.write("<th style=\"background-color: #eeeeee ; text-align: center;\">작성자</th>\r\n");
      out.write("<th style=\"background-color: #eeeeee ; text-align: center;\">작성일</th>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("</thead>\r\n");
      out.write("<tbody>\r\n");
      out.write("\r\n");

BbsDAO bbsDAO = new BbsDAO();
ArrayList<bbs> list = bbsDAO.getList(pageNumber);
for ( int i = 0 ; i < list.size() ;i++){
	
	
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td>");
      out.print(list.get(i).getBbsID() );
      out.write("</td>\r\n");
      out.write("\t\t<td><a href = \"view.jsp?bbsID=");
      out.print(list.get(i).getBbsID());
      out.write('"');
      out.write('>');
      out.print(list.get(i).getBbsTitle() );
      out.write("</a></td>\r\n");
      out.write("\t\t\t<td>");
      out.print(list.get(i).getUserID() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(list.get(i).getBbsDate().substring(0,11)+list.get(i).getBbsDate().substring(11,13)+"시"+list.get(i).getBbsDate().substring(14,16)+"분"  );
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\t");
 
}


      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</tbody>\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");

if(pageNumber != 1){
	
      out.write("\r\n");
      out.write("\t<a href=\"bbs.jsp?pageNumber=");
      out.print(pageNumber - 1 );
      out.write("\" \tclass=\"btn btn-success btn-arraw-left\">이전</a>\r\n");
      out.write("\t");
 
}if(bbsDAO.nextPage(pageNumber + 1)){
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<a href=\"bbs.jsp?pageNumber=");
      out.print(pageNumber + 1 );
      out.write("\" \tclass=\"btn btn-success btn-arraw-left\">다음</a>\r\n");
 
}
	

      out.write("\r\n");
      out.write("\r\n");
      out.write("<a class =\"btn btn-primary\" href=\"wirte.jsp\">글쓰기</a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<footer id = \"bottom\">\r\n");
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
