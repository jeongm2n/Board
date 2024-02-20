<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<body id="wrap">
    <div class="card" style="width:80%; margin-top : 100px; margin-left: 10%; margin-right:10%; margin-bottom:100px;">
        <div class="card-body" style=" width:100%; height:600px;">  
          <h1 class="card-title">${data.title}</h1>
          <hr>
          <h3 class="card-subtitle mb-2 text-muted" style="text-align: left;"><font style="font-size:10pt">작성자</font><br>${data.writer}</h3>
          <p style="text-align: right;font-size:10pt">작성일자<br>${data.write_date}</p><br><br>
          <p class="card-text" style="font-size: medium;">${data.content}</p>
        </div>
        <div style="text-align: right;">
          <form action="/updatepage" method="POST">
            <input type="hidden" name="no" value="${data.no}">
            <input type="hidden" name="title" value="${data.title}">
            <input type="hidden" name="writer" value="${data.writer}">
            <input type="hidden" name="content" value="${data.content}">
            <button type="submit" class="btn btn-warning">수정하기</button>
          </form>
        </div>
    </div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>