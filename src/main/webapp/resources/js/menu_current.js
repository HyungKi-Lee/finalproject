jQuery(function($){

  // 현재 메뉴 하이라이팅 하기 함수
  var current_menu = function(){
    $("#header .gnb .inner .nav > li a").each(function(){ // 각 메뉴 링크마다 실행할 함수.
      var $this = $(this),
          pageURL = location.href, // 현재 페이지 주소를 pageURL 변수에 할당.
          menuURL = encodeURI($this.attr("href")); // 메뉴 링크 값을 menuURL 변수에 할당.
		  var urlArray = pageURL.split('../index.html');
		  pageURL = urlArray[urlArray.length - 1];
		  if(pageURL.length <= 2){
			 pageURL = urlArray[urlArray.length - 2];
		  }
      if ( menuURL.indexOf(pageURL) != -1 ) { // 페이지 URL 값과 메뉴 URL 값을 비교(동일 문자열이 존재하는 경우 일치하는 문자열의 위치 값이 숫자로 반환되지만, 동일한 값이 없으면 -1이 반환되는 조건을 이용)
        $this.addClass("active"); // 동일한 문자열이 존재하는 경우 li 요소에 .current 클래스를 추가.
      } else {
        $this.removeClass("active");
      }
    });
  };

  current_menu(); // DOM 로드 시점에 실행.

  $(document).ajaxComplete(current_menu); // AJAX 로딩 이후 실행(옵션)

  $(document).on("click", "#header .gnb .inner .nav > li a", function(){ // 링크 클릭 이후 실행(옵션)
    setTimeout(function(){
      current_menu();
    },200);
  });

});
