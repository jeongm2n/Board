<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--<c:set var="contextPath" value="${pageContext.request.contextPath}"/> -->
<!doctype html>
<html>
<%@ include file="./layouts/header.jsp" %>
<body id="wrap">
    <div class="card" style="width:80%; margin-top : 100px; margin-left: 10%; margin-right:10%; margin-bottom:100px;">
        <div class="card-body" style=" width:100%; height:600px;">  
          <h1 class="card-title">${data.title}</h1>
          <hr>
          <h3 class="card-subtitle mb-2 text-muted" style="text-align: left;"><font style="font-size:10pt">작성자</font><br>${data.writer}</h3>
          <p style="text-align: right;font-size:10pt">작성일자<br>${data.write_date}</p><br><br>
          <p class="card-text" style="font-size: medium;">${data.contents}</p>
        </div>
      </div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>