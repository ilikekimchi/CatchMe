<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정 찾기</title>
<script type="text/javascript" src="<http:/
	/code.jquery.com/jquery-1.12.4.min.js>"></script>
<script>

		const id = $(this).attr('#id').val();

		send = () => {

			if (id == "") {
				alert("내용을 입력하세요.");
				return false;
			}

			var chk = /^[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,3}$/i;
			if (!chk.test(id)) {
				alert("형식(사람이름아님ㅎ)이 올바르지 않습니다.");
				return false;
			}

			const xhr = new XMLHttpRequest();
			xhr.open("POST", "sendMail?id=" + id, true)
			xhr.send();

			alert("입력하신 주소로 인증번호를 발송했습니다. \\n 메일이 도착하지 않으면 입력하신 정보가 일치하는지 확인하세요.")

			const space1 = $(this).attr('#space1');

			space1.innerHTML += '<input type="number" id="authNo">' +=
								'<button onclick="confirm()">인증하기</button>';
		}

		confirm = () => {
			const authNo = $(this).attr('#authNo').val();

			const xhr = new XMLHttpRequest();
			xhr.open("POST", "confirm?authNo2=" + authNo, true)

			xhr.onreadystatechange = function () {

				if (xhr.readyState == XMLHttpRequest.DONE) {
					if (xhr.status == 200) {
						if (xhr.responseText == 'SUCCESS') {
							alert("네이스");

							const space2 = $(this).attr('#space2');

							space1.innerHTML += '<input type="password" id="pwd" placeholder="새 암호">' +=
												'<input type="password" id="pwd_chk" placeholder="암호 재확인">' +=
												'<button onclick="reset_pw()">변경하기</button>';
						} else {
							alert("텟카이");
							// 다음 작업 수행 추가
						}
					}
				}
			};
			xhr.send();
		}

		reset_pw = () => {
			const form = document.form;
			let pwd = $(this).attr('#pwd');
			let pwd_chk = $(this).attr('#pwd_chk');

			var chk = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\\\(\\\\)\\-_=+]).{8,20}$/;

			if (!chk.test(pwd)) {
				alert("8~20내 문자, 숫자, 특수문자를 혼합하여 사용하세요.");
				return false;
			}

			if (pwd != pwd_chk) {
				alert("암호가 불일치 합니다.");
				return false;
			}

			form.submit();
		}

	</script>
</head>

<body>
	<div>
		<h1>이메일을 입력하세요.</h1>
		<form method="post" name="form">

			<div>
				<input type="text" id="id" placeholder="가입시 사용한 이메일을 입력하세요.">
				<button onclick="send()">발송</button>
			</div>

			<div id="space1"></div>
			<div id="space2"></div>
		</form>
	</div>

</body>

</html>
