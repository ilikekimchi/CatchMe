<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="/css/chat.css" rel="stylesheet" />

<script type="text/javascript">
	$(document).ready(function() {
		/* var name = ${result}.response.name;
		var email = ${result}.response.email;
		$("#name").html("환영합니다. "+name+"님");
		$("#email").html(email); */
		
		var room = {
				
				customerId : "customer_id",
				companyId : "company_id",
				roomId : "room_id"
				
			}
			
			console.log(room);
			
			$.ajax({
				type: "GET",
				url: "/chatRoom",
				contentType: "application/json",
				success: function(result) {
					
					console.log(result[0]);
					
					if(result.length > 1) {
						
						result.forEach(element => {
							addRoom($(".chat-list"), element.companyName, element.customerNnm, element.customerGender, element.roomId, true);
						});
						
					}
			
				},
				error: function() {
					alert('AJAX 실패');
				}
			});
		
		
		$("#msg").on("propertychange change keyup paste input", function() {
            
			if($('#msg').val() != '') {
				
				$('.send').addClass('send-input');
				$('.send').attr('disabled', false);
			} else {
				$('.send').removeClass('send-input');
				$('.send').attr('disabled', true);
			}
            
         });
		
		function addRoom(target, company_name, customer_nnm, customer_gender, room_id, position) {
			let html = "<li class='chat-room-list' value='" + room_id + "'>";
				
				if(customer_gender == "남성") {
					html += "<div class='chat-profile'><img src='/image/man-df.png'></div>";
				} else if(customer_gender == "여성") {
					html += "<div class='chat-profile'><img src='/image/woman-df.png'></div>";
				}
				
				html += "<span class='chat-nnm'>" + customer_nnm + "</span>"
				html += "</li>";	
				
				
				if(position)
					$(target).append(html);
				else
					$(target).prepend(html);

		}
		
		
		$('.chat-btn').click(function() {

			$('.chat-container').animate({
				opacity : '1',
				right : '50px',
				width : '360px',
				height : '620px',
				top : '242px'
			}, 500);
			
			$('.chat-icon').animate({
				opacity : '0',
				width : '0px'
			}, 300);
			
			$('.chat-header').css('display','block');
			$('.chat-list').css('display','block');

		})
		
		$('.chat-close').click(function() {
			
			$("#chat").empty();

			$('.chat-container').animate({
				opacity : '0',
				right : '50px',
				width : '0px',
				height : '0px',
				top : '800px'
			}, 300);
			
			$('.chat-icon').animate({
				opacity : '1',
				width : '62px'
			}, 500);
			
			$('.chat-header').css('display','none');
			$('.chat-list').css('display','none');
			$('.chat-room').css('display','none');
			
		})
		
		$('.chat-room-prev').click(function() {
			$("#chat").empty();
			
			$('.chat-room').css('display','none');
		})
		
		$('.chat-room-prev').click(function() {
			$('.chat-room').css('display','none');
		})
		
		function addToContent(target, name, message, message_date, position) {
			let html = "<li class='chat-content'><span class='to'>" + message +"</span></li>";
				
				if(position)
					$(target).append(html);
				else
					$(target).prepend(html);
		}
		
		function addFromContent(target, name, message, message_date, position) {
			let html = "<li class='chat-content-peer'><span class='from'>" + message +"</span></li>";
				
				if(position)
					$(target).append(html);
				else
					$(target).prepend(html);
		}
		
		if("${sessionScope.company.companyId}" != null) {
			
			let name = "${sessionScope.company.companyName}";
			
		} else if ("${sessionScope.customer.customerId}" != null) {
			
			let name = "${sessionScope.customer.customerNnm}";
			
		}
		
		console.log(name);
		
		$(document).on("dblclick", ".chat-room-list", function(){
			
			let roomId = $(this).val();
			
			console.log(roomId);
			
			var content = {
				
				roomId : roomId,
				name : name,
				message : "message",
				messageDate : "message_date"
				
			}
			
			$.ajax({
				type: "POST",
				url: "/chatLog",
				contentType: "application/json",
				data: JSON.stringify(roomId),
				success: function(result) {
					
					/* console.log(result[0].name); */
					
					if(result.length < 1) {
						$(".chating-list").html("<div class='chating-empty'>채팅을 시작하여 메세지를 주고받으세요.</div>");
					} else {
						$(".chating-empty").empty();
						
						/* result.forEach(element => {
						
							
							addToContent($("#chat"), element.name, element.message, element.messageDate, true);
						});*/
						
						for(i = 0; i < result.length; i++) {
							
							console.log(result[i].name);
							
							if(result[i].name == "${sessionScope.customer.customerNnm}") {
								addToContent($("#chat"), result[i].name, result[i].message, result[i].messageDate, true);
							} else {
								addFromContent($("#chat"), result[i].name, result[i].message, result[i].messageDate, true);
							}
							
						}
					} 
			
				},
				error: function() {
				}
			});
			
			userCheck = $('#user-check').val();
			
			console.log(userCheck);
			
			$('.chat-room').css('display','block');
			
			
			let url = "ws://" + window.location.hostname + ":" + window.location.port + "/chatserver";
			console.log(url);
			
			let connect = false;
			let socket = new WebSocket(url);
			
			socket.onopen = () => {
				connect = true;
				console.log("연결 완료");
			};
			
			socket.onclose = () => {
				connect = false;
				console.log("종료");
			};
			
			socket.onmessage = msg => {
				let chat = document.getElementById("chat");
				
				chat.innerHTML += "<li class='chat-content'><span>" + msg.data + "</span></li>";
				
			}
			
			$(document).on("click", ".send", function(){
				
				let message =$('#msg').val();
				
				console.log(roomId);
				
			    let item = {
			    	roomId: roomId,
			    	message: message,
			    	name: '${sessionScope.customer.customerNnm}'
			    }
			    
			    if(connect) {
			    	
			    	$.ajax({
						type: "PUT",
						url: "/chatLog",
						contentType: "application/json",
						data: JSON.stringify(item),
						success: function(result) {
							
							console.log(result.name);
							
							console.log(item.message);
					
						},
						error: function() {
							
							console.log(item.message);
							console.log(item.name);
						}
					});
		    	 
			        socket.send(message); // 저장객체 value 를 send
			      	msg.value = ""; // send후 value를 비움
			      	
			    }
			})
			
			/* const send = () => {
				alert("되냐?");
			       let msg = document.getElementById("msg");
			       			       
			       const xhr = new XMLHttpRequest();
			      xhr.open("POST", "chatLog?msg=" + msg.value, true); // true(기본값) : 비동기 , false : 동기 
			      xhr.send();   
			      
			      if(connect) {
			        socket.send(msg.value); // 저장객체 value 를 send
			      msg.value = ""; // send후 value를 비움
			      }
			 };  */
			
			
		  });
		
		
	})

</script>

</head>
<body>
	<c:if
		test="${sessionScope.customer != null || sessionScope.company != null}">
		<div id="chat-service">
			<div class="chat-container">
				<div class="chat-header">
					<h2 class="chat-title">채팅</h2>
					<span class="chat-option"><i class="fas fa-cog"></i></span> <span
						class="chat-close"><i class="fas fa-times"></i></span>
				</div>
				<ul class="chat-list">
					<li class="chat-room-list" value="1">
						<div class="chat-profile"></div> <span class="chat-nnm">CatchMe
							관리자</span> <span class="chat-time">오후 2:35</span>
					</li>
				</ul>
			</div>
			<div class="chat-btn">
				<img class="chat-icon" src="/image/chat-btn.png">
			</div>
			<div class="chat-room">
				<div class="chat-room-header">
					<span class="chat-room-prev"><i class="fas fa-chevron-left"></i></span>
					<h2 class="chat-peer">CatchMe 관리자</h2>
					<span class="chat-close"><i class="fas fa-times"></i></span>
					<div class="chating-list">
						<ul id="chat"></ul>
					</div>
					<div class="chat-box">
						<div>
							<label>메세지:</label> <input id="msg" type="text">
							<input id="user-check" type="hidden" value="${sessionScope.customer.customerNnm}">
							<!-- <button onclick="send()">전송</button> -->
							<button disabled="true" class="send">전송</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>