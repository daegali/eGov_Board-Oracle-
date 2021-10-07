$(function(){
	$("#btn_submit").click(function(){
		
		var userid = $("#userid").val();
		var pass = $("#pass").val();
		var name= $("#name").val();
		
		userid = $.trim(userid);
		pass = $.trim(pass);
		name = $.trim(name);
		
		// 데이터 베이스에  공백 없이 들어가게 설정
		$("#userid").val(userid); 
		$("#pass").val(pass); 
		$("#name").val(name); 
		
		if(userid == "") {
			alert("아이디를 입력해주세요.");
			$("#userid").focus();
			return false;
		}
		if(pass == "") {
			alert("비밀번호를 입력해주세요.");
			$("#pass").focus();
			return false;
		}
		if(name == "") {
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return false;
		}
		// ajax 처리
		var formData = $("#frm").serialize();
		
		$.ajax({
			// 전송전 셋팅
			type:"POST",
			data:  formData,
			url:  "userWriteSave.do",
			dataType:"text",
			
			// 전송 후 셋팅
			success:function( result ) {
				if(result == "ok"){
					alert("회원가입 완료" );
					location="loginWrite.do";
				}else{
					alert("회원가입 실패" + result);
				}
			},
			error: function(){
				alert("오류 발생")
			}		
		});
	});
}) ; 
// userid 중복체크
$(function(){
	$("#btn_idcheck").click(function(){
			
			var userid = $("#userid").val();  // 현재 창에 입력된 값
			userid = $.trim(userid);
			if(userid == ""){
				alert("아이디를 입력해주세요");
				$("#userid").focus();
				return false;
			}
			// idcheck.do 데이터 전송 - 비동기 전송 방식
			$.ajax({
				// 전송전 셋팅
			type:"POST",
			data:  "userid=" + userid, // json 전송 Type 
			url:  "idcheck.do",
			dataType:"text",
			
			// 전송 후 셋팅
			success:function( result ) {
				if(result == "ok"){
					alert("사용 가능한 아이디입니다." );
				}else{
					alert("이미 사용중인 아이디입니다.");
				}
			},
			error: function(){
				alert("오류 발생")
			}		
			});
	});
});
// 달력
$( function (){
	$("#birth").datepicker({
		changeMonth: true,
		changeYear: true
	});
});

//우편번호 검색창 열기
$(function(){
	$("#btn_zipcode").click(function(){
	
		var w = 700;
		var h = 400;
		var url="post1.do";
		
		window.open(url , 'zipcode', 'width=' + w + ',height=' + h);
		
	});
});

// 우편번호 회원가입창에 적용시키기
$(function(){
		$("#btn_send").click(function(){	
				var addr = $("#address").val();
				
				// 우편번호 분리하기
				var addr_array = addr.split(" ");
				// 우편번호 범위 설정 (우편번호 [] 기호 없애기)
				var zipcode = addr_array[0].substring(1, addr_array[0].length -1);
				// 나머지 주소 분리
				var address = addr.replace(addr_array[0], "");
				address = $.trim(address);
				
				//userWrite.jsp에 적용
				opener.document.frm.zipcode.value = zipcode;
				opener.document.frm.address.value = address;
				self.close();
		});
});

// 로그인 하기
$(function(){		
		$("#btn_login").click(function(){
			
			var userid= $.trim($("#userid").val());
			var pass = $.trim($("#pass").val());
			
			if(userid == "" ) {
				alert("아이디를 입력해주세요.");
				$("#userid").focus();
				return false;
			}
				if(pass == "" ) {
				alert("비밀번호를 입력해주세요.");
				$("#pass").focus();
				return false;
			}
			
			$.ajax({			
						// 전송전 셋팅
						type:"POST",
						data:  "userid=" + userid + "&pass" + pass, // json 전송 Type 
						url:  "loginWriteSub.do",
						dataType:"text",
						
						// 전송 후 셋팅
						success:function( result ) {
							if(result == "ok"){
								alert(userid + "님 로그인되었습니다." );
								location="main.do";
							}else{
								alert("아이디 또는 비밀번호를 확인해 주세요.");
							}
						},
						error: function(){
							alert("오류 발생")
						}		
							
				});					
		});
});









  
				