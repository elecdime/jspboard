/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-06-30 02:41:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.projectbbs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bbs.BbsDAO;
import java.io.PrintWriter;
import bbs.bbs;
import bbs.BbsDAO;
import java.sql.*;

public final class view_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/projectbbs/Top.jsp", Long.valueOf(1593067629029L));
    _jspx_dependants.put("/projectbbs/bottom.jsp", Long.valueOf(1592979480323L));
    _jspx_dependants.put("/projectbbs/left.jsp", Long.valueOf(1592907911680L));
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("        \r\n");

request.setCharacterEncoding("UTF-8");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<head>\r\n");
      out.write("  <!-- Required meta tags -->\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("  <!-- Bootstrap CSS -->\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css\" integrity=\"sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<title>게시판 veiw</title>\r\n");
      out.write("</head>\r\n");
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
      out.write("          <li class=\"nav-item mx-2\"> <a class=\"nav-link\" href=\"#\">소개</a> </li>\r\n");
      out.write("          <li class=\"nav-item mx-2\"> <a class=\"nav-link\" href=\"#\">내 정보</a> </li>\r\n");
      out.write("          <li class=\"nav-item mx-2\"> <a class=\"nav-link navbar-brand mr-0 text-primary\" href=\"#\"><i class=\"fa d-inline fa-lg fa-stop-circle-o\"></i>\r\n");
      out.write("              <b> 포인트 상점 </b></a> </li>\r\n");
      out.write("          <li class=\"nav-item mx-2\"> <a class=\"nav-link\" href=\"#\">포인트 구매</a> </li>\r\n");
      out.write("               <li class=\"nav-item dropdown\">\r\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("       게시판\r\n");
      out.write("        </a>\r\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"bbs.jsp\">자유 게시판</a>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">기타 게시판</a>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">다운로드 게시판</a>\r\n");
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
      out.write("<body>\r\n");

String userID =null;
if(session.getAttribute("id")!= null){
	userID =(String) session.getAttribute("id");
}
int bbsID = 0;
if (request.getParameter("bbsID")!=null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
if(bbsID == 0){ 
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글 입니다.')");
	script.println("location.href='Main.jsp'");
	script.println("</script>");
}
bbs bbs = new BbsDAO().getbbs(bbsID);


      out.write("\r\n");
      out.write(" <table width=\"960px\">\r\n");
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
  if(session.getAttribute("id")==null){ //세션이 설정되지 않을 경우 참조 https://parkdex.tistory.com/145 
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
      out.write("\t<input type=\"submit\" value=\"로그아웃\" />\r\n");
      out.write("</form>\r\n");
      out.write("<button onClick=\"location.href='info.jsp'\"> 개인정보 변경</button>\r\n");
      out.write("\r\n");
      out.write("\r\n");
 } 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("          ");
      out.write("\r\n");
      out.write("                </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                </table>\r\n");
      out.write(" \r\n");
      out.write("      \r\n");
      out.write("       \r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("<div class =\"row\">\r\n");
      out.write("\r\n");
      out.write("<table class = \"table table-striped\" style=\"text-align: center;border: 1px solid #dddddd;\">\r\n");
      out.write("<thead>\r\n");
      out.write("<tr>\r\n");
      out.write("<th style=\"background-color: #eeeeee ; text-align: center;\"colspan=\"3\" >게시간 글보기</th>\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("</thead>\r\n");
      out.write("<tbody>\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\" width: 20%;\"> 글제목</td>\r\n");
      out.write(" <td colspan=\"2\"> ");
      out.print(bbs.getBbsTitle());
      out.write("</td>\r\n");
      out.write(" </tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td >작성자</td>\r\n");
      out.write(" <td colspan=\"2\"> ");
      out.print(bbs.getUserID());
      out.write("</td>\r\n");
      out.write(" </tr>\t\r\n");
      out.write(" <tr>\r\n");
      out.write("<td >작성자 일자</td>\r\n");
      out.write(" <td colspan=\"2\"> ");
      out.print(bbs.getBbsDate().substring(0,11)+bbs.getBbsDate().substring(11,13)+"시"+bbs.getBbsDate().substring(14,16)+"분"  );
      out.write("</td>\r\n");
      out.write(" </tr>\t\r\n");
      out.write("<tr>\r\n");
      out.write("<td >내용</td>\r\n");
      out.write(" <td colspan=\"2\" style=\"text-align:left; height: 700px; \"> ");
      out.print(bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll("\n","<br>"));
      out.write("</td>\r\n");
      out.write(" </tr>\r\n");
      out.write("\r\n");
      out.write("</tbody>\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<a href=\"bbs.jsp\" class = \"btn btn-primary\">글 목록</a>\r\n");

if(userID !=null && userID.equals(bbs.getUserID())){
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<a href= \"update.jsp?bbsID=");
      out.print(bbsID);
      out.write("\" class=\"btn btn-primary\"> 수정</a>\r\n");
      out.write("<a onclick=\"return confirm('정말로 삭제하시겠습니까?')\" href=\"delectPro.jsp?bbsID=");
      out.print(bbsID);
      out.write("\" class=\"btn btn-primary\t\">삭제</a>\r\n");
      out.write("\r\n");
      out.write("\t");
 	
	
}


      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<footer id = \"bottom\">\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer class=\"bg-dark mt-4 p-5 text-center\" style=\"color:#FFFFFF;\">\r\n");
      out.write("Copyright &copy; 2020 Dime All Rights Reserved.\r\n");
      out.write("\r\n");
      out.write("</footer>");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
