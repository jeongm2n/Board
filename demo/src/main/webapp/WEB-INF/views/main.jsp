<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--<c:set var="contextPath" value="${pageContext.request.contextPath}"/> -->
<!doctype html>
<html>
<%@ include file="./layouts/header.jsp" %>
<body id=wrap>
  <div id=div1>
    <table class="table" style="text-align: center; width:100%">
    <thead>
      <tr>
        <th style="width:10%">글 번호</th><th style="width:50%">제목</th><th style="width:15%">작성자</th><th style="width:25%">작성일자</th>
      </tr>
    </thead>
    <tbody id="non">
    <c:choose>
      <c:when test="${empty writingList}">
        <tr><td colspan="4"><p>작성한 글이 없습니다.</p></td></tr>
      </c:when>
      <c:otherwise>
        <c:forEach var="item" items="${writingList}">
          <tr>
          <td>${item.no}</td><td>${item.title}</td><td>${item.writer}</td><td>${item.write_date}</td>
          </tr>
        </c:forEach>
      </c:otherwise>
    </c:choose>
    </tbody>
    </table>
  </div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>