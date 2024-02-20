<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 
<% String num = request.getParameter("page_no");%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap demo</title>
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">-->
    <link rel="stylesheet" href="/css/custom.css">
    <link rel="stylesheet" href="/css/mycss.css">
  </head>
  <script>
    var page_no = "li<%=num %>";
    window.onload = function(){
        var menu = document.getElementById(page_no);
        document.getElementById(page_no).classList.add("active");
    }
    
  </script>
<header>
    <ul class="nav justify-content-center nav-tabs">
        <li class="nav-item">
            <a class="nav-link" id="li1" href="/main?page_no=1" style="color:black">전체글보기</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="li2" href="/writepage?page_no=2" style="color:black">글쓰기</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="li3" href="/delpage?page_no=3" style="color:black">글삭제</a>
        </li>
    </ul>
  </header>