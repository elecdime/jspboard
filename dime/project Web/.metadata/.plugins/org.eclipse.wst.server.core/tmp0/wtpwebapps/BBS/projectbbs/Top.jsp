<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
    <head>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
 </head>
  <nav class="navbar navbar-expand-md navbar-light">
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar3">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="Main.jsp">메인</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link" href="info.jsp">내 정보</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link navbar-brand mr-0 text-primary" href="bbs.jsp"><i class="fa d-inline fa-lg fa-stop-circle-o"></i>
              <b> 게시판 </b></a> </li>

               <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  개인정보
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="left.jsp">로그인</a>
          <a class="dropdown-item" href="register.jsp">회원가입</a>
       
        </div>
        </li>
      </div>
    </div>
  </nav>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12"></div>
      </div>
    </div>
  </div>
  
</html>