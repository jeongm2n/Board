<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<%
    String no = request.getParameter("no");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String date = request.getParameter("write_date");
    String content = request.getParameter("content");
%>
<script>
    function onClick(){
        alert(document.getElementById("content").value);
        if(!document.getElementById("title").value || !document.getElementById("writer").value || !document.getElementById("content").value){
            alert('빈칸을 입력해주세요!');
            return false;
        }else{
            return true;
        }
    }

    function onCancel(){
        if(confirm("글 수정을 취소하시겠습니까?")){
            alert('글 수정이 취소되었습니다.');
            window.location.href = "${contextPath}/detail?no='<%=no %>'";
        }
    }
</script>

<body id="wrap">
    <div class="card" style="width:80%;margin-top:100px;margin-left:10%;margin-right:10%;margin-bottom:50px">
        <div class="indiv">
        <form id="updateForm" action="/update" method="POST">
            <input type="hidden" name="no" value="<%=no %>">
            <input type="text" class="titletext" name="title" id="title" placeholder="제목을 입력하세요." value="<%=title %>">
            <hr>
            <input type="text" class="writertext" name="writer" id="writer" placeholder="사용자 설정 아이디를 입력해주세요." value="<%=writer %>">
            <hr>
            <input type="textarea" class="cotext" name="content" id="content" placeholder="내용을 입력하세요." value="<%=content %>">
            <hr>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-info me-md-2" onclick="return onClick()">수정</button>
                <button type="button" class="btn btn-secondary" onclick="onCancel()">취소</button>
            </div>
        </form>
        </div>
    </div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>