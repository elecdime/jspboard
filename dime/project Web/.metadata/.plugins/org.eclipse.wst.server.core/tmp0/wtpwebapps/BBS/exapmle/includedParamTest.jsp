<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%String name = request.getParameter("name");
  String pageName = request.getParameter("pageName");
  
 %>
 �Ķ���ͤ� ���� ���޹޾Ƽ� ����Ǵ� <br>
 ���ԵǴ� ������ <%=pageName%> �Դϴ�.<br>
 <b><%=name %></b> �� ����
 <hr>
 
</body>
</html>