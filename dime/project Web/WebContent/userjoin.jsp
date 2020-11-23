<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>개발중인 사이트</title>
  </head>
  <body>
<style type="text/css">

.jumbotron{
   
    text-shadow: black 0.2em 0.2em 0.2em;
    color: red;
    background-size:contain;
   
}



</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="./index2">소개</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="./index2">홈<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">게시판</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="./userlogin.jsp">로그인</a>
          </li>
        <li class="nav-item">
          <a class="nav-link" href="./userjoin.jsp">회원 가입</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            다운로드
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="#">드라이버</a>
            <a class="dropdown-item" href="#">보안 프로그램</a>
            <a class="dropdown-item" href="#">필수 SW 웨어 모음</a>
          </div>
        </li>
      </ul>
      <form class= "form-inline my-2 my-lg-0">
      <input class ="form-control mr-sm-2" type="search" placeholder="내용을입력하세요" aria-label="search"> 
     <button class = "btn btn-outline-success my-2 my-sm-0" type="submit"> Search
     </button>
           </form>
    </div>
  </nav>











<section class="container" style="max-width: 560px;">
<form method="post" action="./userjoinAction.jsp">
<div class="form-group">
<label>ID</label>
<input type="text" name="userID" class="form-control">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" name="userPassWord" class="form-control">
</div>
<div class="form-group">
<label>Email</label>
<input type="text" name="userEmail" class="form-control">
</div>
<div class="form-group">
<label>Phone</label>
<input type="text" name="userPhone" class="form-control">
<small>plz input number only</small>
</div>
<button type="submit" class="btn btn-primary">Register</button>
</form>
</section>


<footer class="bg-dark mt-4 p-5 text-center" style="color:#FFFFFF;">
Copyright &copy; 2020 Dime All Rights Reserved.
</footer>









    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>