<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
	<form action="boardInsert" method="post">
		<div>
			<label>번호 : <input type="number" name="bno" value="${boardInfo.bno}" readonly></label>
		</div>
		<div>
			<label>제목 : <input type="text" name="title"></label>
		</div>
		<div>
			<label>작성자 : <input type="text" name="writer"></label>
		</div>
		<div>
			<label>내용 : <input type="text" name="contents"></label>
		</div>
		<div>
			<label>첨부이미지 : <input type="text" name="image"></label>
		</div>
		<button type="submit">등록</button>
		<button type="button" onclick="location.href='getBoardList'">목록</button>
	</form>
	<script>
		function formOptionChk(){
			let title = document.getElementsByName('title')[0];
			let writer = document.getElementsByName('writer')[0];
			let contents = document.getElementsByName('contents')[0];
			
			if(writer.value == ""){
				alert("제목이 입력되지 않았습니다.");
				title.focus();
				return;
			}
			
			if(title.value == ""){
				alert("작성자가 입력되지 않았습니다.");
				writer.focus();
				return;
			}
			
			if(contents.value == ""){
				alert("내용이 입력되지 않았습니다.");
				contents.focus();
				return;
			}
			
			insertForm.submit();
		}
		
		document.querySelector('button[type="submit"]')
				.addEventListener('click', formOptionChk);

		</script>
</body>
</html>