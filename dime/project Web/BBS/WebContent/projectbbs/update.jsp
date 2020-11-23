<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>

    <%@page import="bbs.bbs" %>
<%
   
    


request.setCharacterEncoding("UTF-8");
%>

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
	script.println("alert('로그인을 하세요.')");
	script.println("location.href='left.jsp'");
	script.println("</script>");
} int bbsID= 0;
if(request.getParameter("bbsID")!=null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
if(bbsID == 0){ 
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 해주세요')");
	script.println("location.href='Main.jsp'");
	script.println("</script>");
}



bbs bbs = new BbsDAO().getbbs(bbsID);
if(!userID.equals(bbs.getUserID())){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('권한이 없습니다..')");
	script.println("location.href='bbs.jsp'");
	script.println("</script>");
	
}


%>
<div class="container">
<div class ="row">
<form method="post" action="updatePro.jsp?bbsID=<%=bbsID%>">
<table class = "table table-striped" style="text-align: center;border: 1px solid #dddddd;">
<thead>
<tr>
<th style="background-color: #eeeeee ; text-align: center;"colspan="2" >게시판 수정 양식</th>
 

</tr>
</thead>
<tbody>
<tr>
<td>
<input type="text" class ="form-control" placeholder="글제목"name ="bbsTitle"maxlength="50" value="<%=bbs.getBbsTitle()%>"></td></tr>
	
<tr>
<td><textarea class ="form-control" placeholder="글 내용"name ="bbsContent"maxlength="3000"style="height: 350px ;width: 750px;"><%=bbs.getBbsContent() %> 	</textarea>	

</td> 
</tr>


</tbody>

</table>
<input type="submit" class ="btn btn-primary" href="write.jsp" value="글 수정">
</form>




</div>
</div>



</body>
</html>