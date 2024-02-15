<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--<c:set var="contextPath" value="${pageContext.request.contextPath}"/> -->
<!doctype html>
<html>
<%@ include file="./layouts/header.jsp" %>
<body id=wrap>
  <div id=div1>
    <table class="table" style="text-align: center;">
    <thead>
      <tr>
        <th>글 번호</th><th>제목</th><th>작성자</th><th>작성일자</th>
      </tr>
    </thead>
    <c:choose>
      <c:when test="${empty writingList}">
        <tbody id="non">
          <tr><td id="non-p" colspan="4">작성한 글이 없습니다.</td><td></td><td></td><td></td></tr>
        </tbody>
      </c:when>
    </c:choose>
    </table>
  </div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>