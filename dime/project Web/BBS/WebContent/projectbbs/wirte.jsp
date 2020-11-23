<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<head>
   <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

<title>게시판 연습</title>
  </head>
  <body>
  
        <div id="TOP" style="width:960px;height:150px;">
            <%@ include file="Top.jsp" %>
        </div>
<div class="container">
<div class ="row">
<form method="post" action="wirtePro.jsp">
<table class = "table table-striped" style="text-align: center;border: 1px solid #dddddd;">
<thead>
<tr>
<th style="background-color: #eeeeee ; text-align: center;"colspan="2" >게시판 글쓰기 양식</th>
 

</tr>
</thead>
<tbody>
<tr>
<td>
<input type="text" class ="form-control" placeholder="글제목"name ="bbsTitle"maxlength="50"></td></tr>
	
<tr>
<td><textarea class ="form-control" placeholder="글 내용"name ="bbsContent"maxlength="3000"style="height: 350px ;width: 750px;"> 	</textarea>	

</td> 
</tr>


</tbody>

</table>
<input type="submit" class ="btn btn-primary" href="write.jsp" value="글쓰기">
</form>




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
