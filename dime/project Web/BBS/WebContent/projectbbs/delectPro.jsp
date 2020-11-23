<%@page import="bbs.bbs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.bbs"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	//sresponse.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("id") != null) {//유저아이디 이름으로 세션이 존재하는 회원들은
			userID = (String) session.getAttribute("id");//유저아이디에 해당 세션값을 넣어준다

		}
		if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}

		//글이 유효한지 판별
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글 입니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		bbs bbs = new BbsDAO().getbbs(bbsID);
		if (!userID.equals(bbs.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		} else {
			BbsDAO bbsDAO = new BbsDAO(); //인스턴스생성
			int result = bbsDAO.delete(bbsID); if(result == -1){ // 아이디가 기본키기. 중복되면 오류.
				PrintWriter script = response.getWriter(); 
			script.println("<script>"); 
			script.println("alert('글 삭제에 실패하였습니다.')")
			; script.println("history.back()"); script.println("</script>"); }
			//글쓰기성공
			else { 
				PrintWriter script = response.getWriter(); 
				script.println("<script>"); 
			script.println("location.href = 'bbs.jsp'"); 
			script.println("</script>"); } } %>

			
</body>
</html>