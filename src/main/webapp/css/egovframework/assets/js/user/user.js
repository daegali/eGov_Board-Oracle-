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

  
				