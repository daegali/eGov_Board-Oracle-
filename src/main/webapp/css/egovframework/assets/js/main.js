/*
	Astral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/


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

				
		
(function($) {

	var $window = $(window),
		$body = $('body'),
		$wrapper = $('#wrapper'),
		$main = $('#main'),
		$panels = $main.children('.panel'),
		$nav = $('#nav'), $nav_links = $nav.children('a');

	// Breakpoints.
		breakpoints({
			xlarge:  [ '1281px',  '1680px' ],
			large:   [ '981px',   '1280px' ],
			medium:  [ '737px',   '980px'  ],
			small:   [ '361px',   '736px'  ],
			xsmall:  [ null,      '360px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Nav.
		$nav_links
			.on('click', function(event) {

				var href = $(this).attr('href');

				// Not a panel link? Bail.
					if (href.charAt(0) != '#'
					||	$panels.filter(href).length == 0)
						return;

				// Prevent default.
					event.preventDefault();
					event.stopPropagation();

				// Change panels.
					if (window.location.hash != href)
						window.location.hash = href;

			});

	// Panels.

		// Initialize.
			(function() {

				var $panel, $link;

				// Get panel, link.
					if (window.location.hash) {

				 		$panel = $panels.filter(window.location.hash);
						$link = $nav_links.filter('[href="' + window.location.hash + '"]');

					}

				// No panel/link? Default to first.
					if (!$panel
					||	$panel.length == 0) {

						$panel = $panels.first();
						$link = $nav_links.first();

					}

				// Deactivate all panels except this one.
					$panels.not($panel)
						.addClass('inactive')
						.hide();

				// Activate link.
					$link
						.addClass('active');

				// Reset scroll.
					$window.scrollTop(0);

			})();

		// Hashchange event.
			$window.on('hashchange', function(event) {

				var $panel, $link;

				// Get panel, link.
					if (window.location.hash) {

				 		$panel = $panels.filter(window.location.hash);
						$link = $nav_links.filter('[href="' + window.location.hash + '"]');

						// No target panel? Bail.
							if ($panel.length == 0)
								return;

					}

				// No panel/link? Default to first.
					else {

						$panel = $panels.first();
						$link = $nav_links.first();

					}

				// Deactivate all panels.
					$panels.addClass('inactive');

				// Deactivate all links.
					$nav_links.removeClass('active');

				// Activate target link.
					$link.addClass('active');

				// Set max/min height.
					$main
						.css('max-height', $main.height() + 'px')
						.css('min-height', $main.height() + 'px');

				// Delay.
					setTimeout(function() {

						// Hide all panels.
							$panels.hide();

						// Show target panel.
							$panel.show();

						// Set new max/min height.
							$main
								.css('max-height', $panel.outerHeight() + 'px')
								.css('min-height', $panel.outerHeight() + 'px');

						// Reset scroll.
							$window.scrollTop(0);

						// Delay.
							window.setTimeout(function() {

								// Activate target panel.
									$panel.removeClass('inactive');

								// Clear max/min height.
									$main
										.css('max-height', '')
										.css('min-height', '');

								// IE: Refresh.
									$window.triggerHandler('--refresh');

								// Unlock.
									locked = false;

							}, (breakpoints.active('small') ? 0 : 500));

					}, 250);

			});

	// IE: Fixes.
		if (browser.name == 'ie') {

			// Fix min-height/flexbox.
				$window.on('--refresh', function() {

					$wrapper.css('height', 'auto');

					window.setTimeout(function() {

						var h = $wrapper.height(),
							wh = $window.height();

						if (h < wh)
							$wrapper.css('height', '100vh');

					}, 0);

				});

				$window.on('resize load', function() {
					$window.triggerHandler('--refresh');
				});

			// Fix intro pic.
				$('.panel.intro').each(function() {

					var $pic = $(this).children('.pic'),
						$img = $pic.children('img');

					$pic
						.css('background-image', 'url(' + $img.attr('src') + ')')
						.css('background-size', 'cover')
						.css('background-position', 'center');

					$img
						.css('visibility', 'hidden');

				});

		}

})(jQuery);