<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<script>
    function onClick(){
        if(!document.getElementById("title").value || !document.getElementById("writer").value || !document.getElementById("content").value){
            alert('빈칸을 입력해주세요!');
            return false;
        }else{
            return true;
        }
    }

    function onCancel(){
        if(confirm("글 작성을 취소하시겠습니까?")){
            alert('글 작성이 취소되었습니다.');
            window.location.href = "${contextPath}/main"
        }
    }
</script>

<body id="wrap">
    <div class="card" style="width:80%;margin-top:100px;margin-left:10%;margin-right:10%;margin-bottom:50px">
        <div class="indiv">
        <form id="writeForm" action="writepage/write" method="POST">
            <input type="text" class="titletext" name="title" id="title" placeholder="제목을 입력하세요.">
            <hr>
            <input type="text" class="writertext" name="writer" id="writer" placeholder="사용자 설정 아이디를 입력해주세요.">
            <hr>
            <input type="textarea" class="cotext" name="content" id="content" placeholder="내용을 입력하세요.">
            <hr>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-info me-md-2" onclick="return onClick()">작성</button>
                <button type="button" class="btn btn-secondary" onclick="onCancel()">취소</button>
            </div>
        </form>
        </div>
    </div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>