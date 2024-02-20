<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<script>
    function onDelete(){
        if(confirm('글을 삭제하시겠습니까?')){
            return true;
        }else{
            return false
        }
    }
</script>
<body id=wrap>
    <div id=div1>
      <table class="table" style="text-align: center; width:100%">
      <thead>
        <tr>
          <th style="width:8%">글 번호</th><th style="width:45%">제목</th><th style="width:12%">작성자</th><th style="width:25%">작성일자</th><th style="width:10%"></th>
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
            <td><a class="btn btn-danger" style="width:100%" href="/delpage/delete?no=${item.no}" role="button" onclick="return onDelete();">삭제</a></td>
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