<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
    <%@page import="bbs.bbs" %>
        <%@page import="bbs.BbsDAO" %>
<%
request.setCharacterEncoding("UTF-8");
%>

<!doctype html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

<title>게시판 veiw</title>
</head>

        <div id="TOP" style="width:960px;height:150px;">
            <%@ include file="Top.jsp" %>
        </div>
<body>
<%
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

%>
 <table width="960px">
            <tr>
                <td width="160" valign="top">
                    <%@ include file="left.jsp" %>
                </td>
                </tr>
                </table>
 
      
       
<div class="container">
<div class ="row">

<table class = "table table-striped" style="text-align: center;border: 1px solid #dddddd;">
<thead>
<tr>
<th style="background-color: #eeeeee ; text-align: center;"colspan="3" >게시간 글보기</th>
 

</tr>
</thead>
<tbody>
<tr>
<td style=" width: 20%;"> 글제목</td>
 <td colspan="2"> <%=bbs.getBbsTitle()%></td>
 </tr>
<tr>
<td >작성자</td>
 <td colspan="2"> <%=bbs.getUserID()%></td>
 </tr>	
 <tr>
<td >작성자 일자</td>
 <td colspan="2"> <%=bbs.getBbsDate().substring(0,11)+bbs.getBbsDate().substring(11,13)+"시"+bbs.getBbsDate().substring(14,16)+"분"  %></td>
 </tr>	
<tr>
<td >내용</td>
 <td colspan="2" style="text-align:left; height: 700px; "> <%=bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll("\n","<br>")%></td>
 </tr>

</tbody>

</table>
<a href="bbs.jsp" class = "btn btn-primary">글 목록</a>
<%
if(userID !=null && userID.equals(bbs.getUserID())){
	%>
	
	<a href= "update.jsp?bbsID=<%=bbsID%>" class="btn btn-primary"> 수정</a>
<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="delectPro.jsp?bbsID=<%=bbsID%>" class="btn btn-primary	">삭제</a>

	<% 	
	
}

%>



</div>
</div>

<footer id = "bottom">
    <%@ include file="bottom.jsp" %>
</footer>

</body>
</html>