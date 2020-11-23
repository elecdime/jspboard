<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bbs" class="bbs.bbs" scope="page"/>
<jsp:setProperty name="bbs" property="bbsTitle"/>

<jsp:setProperty name="bbs" property="bbsContent"/>
<!doctype html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<%
String userID =null;
if(session.getAttribute("id")!= null){
	userID =(String) session.getAttribute("id");
}
if(userID == null){ 
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 해주세요')");
	script.println("location.href='Main.jsp'");
	script.println("</script>");
}else{
BbsDAO BbsDAO = new BbsDAO();

int result =BbsDAO.wirte(bbs.getBbsTitle(), userID, bbs.getBbsContent());
if(result ==-1){
	PrintWriter script = response.getWriter();
	script.println("<script>");

	script.println("location.href='bbs.jsp'");
	script.println("</script>");
	
	
}else{
	PrintWriter script = response.getWriter();
	script.println("<script>");

	script.println("location.href='bbs.jsp'");
	script.println("</script>");

	
}


}


%>
<%
String	pr1 = bbs.getBbsContent();
String	pr2 = bbs.getBbsTitle();
out.print(pr1+pr2); %>



</body>
</html>