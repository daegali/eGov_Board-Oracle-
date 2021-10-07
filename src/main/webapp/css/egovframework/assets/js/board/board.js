function fn_submit() { 
				
		    if( $.trim( $("#title").val() ) ==  "") {
		          alert("제목을 입력해 주세요~!");
		          $("#title").focus();
		          return false;
		       }
		        	           
		    if( $.trim($("#pass").val()) == "" ) {
		        alert("암호를 입력해주세요~!")
		        $("#pass").focus();
		        		return false;
		         }
		
			var formData = $("#frm").serialize();  // serialize() 함수는 form에 설정하는 함수
			
		     // ajax :  비동기 전송방식의 기능을 가지고 있는 jquery의 함수
			$.ajax({
				// 전송 전 세팅
				type: "POST",
				data: formData,
				url: "boardWriteSave.do",
				dataType: "text", // 리턴 타입
				
				// 전송 후 세팅
				success: function( data ) { // controller -> "ok" , "fail"
					if( data == "ok" ) {
						alert("저장을 완료하였습니다.");
						location = "boardList.do#list";
					} else {
						
						alert("저장에 실패하였습니다. 다시 시도해주세요" + data);
					}
				},
				error: function() {
					alert("오류 발생")
				}
				
		});			
}

function fn_modify() { 
		
			// trim() -> 앞뒤 공백 제거, java , jsp
				
		    if( $.trim( $("#title").val() ) ==  "") {
		          alert("제목을 입력해 주세요~!");
		          $("#title").focus();
		          return false;
		       }
			$("#title").val( $.trim($("#title").val())); // 
		        	           
		    if( $.trim($("#pass").val()) == "" ) {
		        alert("암호를 입력해주세요~!")
		        $("#pass").focus();
		        		return false;
		         }
				$("#pass").val( $.trim($("#pass").val()));
				
			var formData = $("#frm").serialize();  // serialize() 함수는 form에 설정하는 함수
			
		     // ajax :  비동기 전송방식의 기능을 가지고 있는 jquery의 함수
			$.ajax({
				// 전송 전 세팅
				type: "POST",
				data: formData,
				url: "boardModifySave.do",
				dataType: "text", // 리턴 타입
				
				// 전송 후 세팅
				success: function( result ) { // controller -> "ok" , "fail"
					if( result == 1 ) {
						alert("수정 완료하였습니다.");
						location = "boardList.do";
					} else if (result == -1 ){						
						alert("암호가 일치하지 않습니다.");
					}else {
						alert("저장 실패 \n 관리자에게 연락해주세요~!")
					}
				},
				error: function() {
					alert("오류 발생")
				}
				
		});			
}