<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

    <html>
    <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
 </head>
 
 

 <%  if(session.getAttribute("id")==null){ //세션이 설정되지 않을 경우 참조  %>


 
<form class="form-inline" action="login.jsp" method="get">
            <div class="form-group">
              <input type="text" class="form-control" name ="id" id="id" placeholder="id"> </div>
            <div class="form-group form-row">
              <div class="col-sm-10"><input type="password" class="form-control " name = "pw" id="pw" placeholder="비밀번호"></div>
            </div>
            <button class="btn btn-primary align-items-center col-sm-6" ><i class="fa fa-user fa-fw"></i>로그인</button>
            <a class="btn btn-secondary col-sm-6" href="register.jsp" style=""></i> 회원가입 </a>
          </form><% }else{ %>
<form method="post" action="logout.jsp">
	<%=session.getAttribute("id") %>님 환영합니다~
	
	<input type="submit" value="로그아웃" />
</form>
<button onClick="location.href='info.jsp'"> 개인정보 변경</button>
<% if(session.getAttribute("id").equals("admin")){
	%>
	
	<button onClick="location.href='#'"> 관리자 페이지</button>
	
<%} %>

<% } %>



          