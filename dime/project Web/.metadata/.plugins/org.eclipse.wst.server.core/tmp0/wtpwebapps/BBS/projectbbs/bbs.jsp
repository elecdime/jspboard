<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   %>
   
<!doctype html>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO" %>

<%@ page import="bbs.bbs" %>
<%@ page import="java.util.ArrayList" %>
<%
request.setCharacterEncoding("UTF-8");
String userID =null;
if(session.getAttribute("id")!= null){
	userID =(String) session.getAttribute("id");
}
int pageNumber = 1;
if(request.getParameter("pageNumber")!=null){
pageNumber = Integer.parseInt(request.getParameter("pageNumber"));	
}
%>
<head>
   <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

<title>게시판 연습</title>
<style type="text/css">
a, a:hover{

color: #000000;
text-decoration: none;
}

</style>
  </head>
  <body>
  
 <div id="TOP" style="width:960px;height:150px;">
            <%@ include file="Top.jsp" %>
        </div>
<div class="container">
<div class ="row">
<table class = "table table-striped" style="text-align: center;border: 1px solid #dddddd;">
<thead>
<tr>
<th style="background-color: #eeeeee ; text-align: center;">번호</th>
<th style="background-color: #eeeeee ; text-align: center;">제목</th>
<th style="background-color: #eeeeee ; text-align: center;">작성자</th>
<th style="background-color: #eeeeee ; text-align: center;">작성일</th>

</tr>
</thead>
<tbody>

<%
BbsDAO bbsDAO = new BbsDAO();
ArrayList<bbs> list = bbsDAO.getList(pageNumber);
for ( int i = 0 ; i < list.size() ;i++){
	
	%>
	<tr>
	<td><%=list.get(i).getBbsID() %></td>
		<td><a href = "view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle() %></a></td>
			<td><%=list.get(i).getUserID() %></td>
				<td><%=list.get(i).getBbsDate().substring(0,11)+list.get(i).getBbsDate().substring(11,13)+"시"+list.get(i).getBbsDate().substring(14,16)+"분"  %></td>
</tr>
	<% 
}

%>





</tbody>

</table>
<%
if(pageNumber != 1){
	%>
	<a href="bbs.jsp?pageNumber=<%=pageNumber - 1 %>" 	class="btn btn-success btn-arraw-left">이전</a>
	<% 
}if(bbsDAO.nextPage(pageNumber + 1)){
	%>
	
	<a href="bbs.jsp?pageNumber=<%=pageNumber + 1 %>" 	class="btn btn-success btn-arraw-left">다음</a>
<% 
}
	
%>

<a class ="btn btn-primary" href="wirte.jsp">글쓰기</a>




</div>
</div>
<footer id = "bottom">
    <%@ include file="bottom.jsp" %>
</footer>

 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>
