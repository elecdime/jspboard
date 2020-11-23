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






<section class="container">

<form method="get" action="./index2.jsp" class=" form-inline mt-3">
<select name ="lectureDivide" class ="form-control mx-1 mt-2">
	<option value="op1">op1</option>
	<option value="op2">op2</option>
	<option value="op3">op3</option>
	</select>
<input type="text" name ="search" class="form-control mx-1 my-2" placeholder="inputplz">
<button type="submit" class="btn btn-primary mx-1 mt-2">Search</button>
<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">add</a>
<a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="#reportModal">report</a>
</form>
<div class="card bg-light mt-3">

<div class="card-header bg-light">
<div class="row">
<div class="col-8 text-left">menu1&nbsp;<small>76000</small></div>
<div class="col-4 text-right">
monney<span style="color:red;">A</span>
</div>
</div>

</div>
<div class="card-bady">
<h5 class="card-title">
good menu.</h5><small>(2020-02-12)</small>
<p>good job this is Very nice Dinner Thanks </p>
<div class="row">

<div class="col-9 text-left">
fell<span style="color:red;"> A</span>
eat<span style="color:red;"> A</span>
service<span style="color:red;"> C</span>

<span style="color:green;"> (Up:15)</span>


</div>
<div class="col-3 text-right">

<a onclick="return confirm('Up this idea?')" href="./likeAction.jsp?evaluationID=">Like</a>
<a onclick="return confirm('Del this idea?')" href="./DelAction.jsp?evaluationID=">Del</a>
</div>
</div>
</div>
</div>
</section>

<div class ="modal fade" id="registerModal"tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
<div class ="modal-dialog">
<div class ="modal-content">
<div class ="modal-header">
<h5 class="modal-title" id="modal">review add </h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close" >
<span aria-hidden="true">&times;</span>
</button>

</div>

<div class ="moadl-body"></div>
<form action="./review.jsp" method="post">

<div class="form-row">
<div class="form-group col-sm-6">
<label>Review Name</label>
<input type ="text" name="reviewname" class="form-control" maxlength="20">


</div>

<div class="form-group col-sm-6">
<label>PPName</label> 
<input type ="text" name="PPname" class="form-control" maxlength="20">
</div>
</div>

<div class="form-group col-sm-4">
<label>title</label>
<input type="text" name="evaluationTime" class="form-control" maxlength="30">

</div>
<div class="form-group">
<label>LrlOung</label>
<textarea  name="evaluationContent" class="form-control" maxlength="2084" style="height: 180px;"></textarea>
</div>
<div class ="form-row">
<div class ="form-group col-sm-3">

<label>tasets</label>
<select name='mat' class ="form-control" >
<option value="S">S</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
<option value="F">F</option>


</select>
</div>
<div class ="form-group col-sm-3">

<label>tasets</label>
<select name='mat' class ="form-control" >
<option value="S" selected>S</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
<option value="F">F</option>


</select>
</div>
<div class ="form-group col-sm-3">

<label>service</label>
<select name='service' class ="form-control" >
<option value="S" selected>S</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
<option value="F">F</option>



</select>
</div>
<div class ="form-group col-sm-3">

<label>feel</label>
<select name='feel' class ="form-control" >
<option value="S" selected>S</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
<option value="F">F</option>



</select>

</div>
<div class="modol-footer">
<button type="sumbit" class="btn btn-primary">add</button>
 
<button type="button" class="btn btn-secondary" data-dismiss="modal">cancle</button>

</div>
</form>
</div>
</div>

</div>



<div class ="modal fade" id="reportModal"tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
<div class ="modal-dialog">
<div class ="modal-content">
<div class ="modal-header">
<h5 class="modal-title" id="modal">Report Add </h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close" >
<span aria-hidden="true">&times;</span>
</button>

</div>

<div class ="moadl-body"></div>
<form action="./report.jsp" method="post">


<div class="form-group">
<label>report title</label>
<input type ="text" name="reportTitle" class="form-control" maxlength="20">


</div>





<div class="form-group">
<label>report name</label>
<textarea  name="reportContent" class="form-control" maxlength="2084" style="height: 180px;"></textarea>
</div>

<div class="modol-footer">
<button type="submit" class="btn btn-danger">report</button>
 
<button type="button" class="btn btn-secondary" data-dismiss="modal">cancle</button>

</div>
</form>
</div>
</div>

</div>
</div>




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