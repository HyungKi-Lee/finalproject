$(document).ready(function(){
	var index = get_index();
	if(is_available_index(index)){
		if(document.getElementsByClassName('tab-con').length > 0){
			$(".tab-wrap > li").removeClass("active");
			$(".tab-wrap > li").eq(index).addClass("active");
			$(".tab-con").removeClass("active");
			$(".tab-con").eq(index).addClass("active");
		}else if(document.getElementsByClassName('terms').length > 0){
			$(".terms").removeClass("active");
            $(".terms").eq(index).addClass("active");
			document.getElementById("tab"+(index+1)).checked = true;
		}
	}
})

function is_available_index(index){
	var full_count = document.getElementsByClassName('tab-con').length;
	if(full_count == 0){
		full_count = document.getElementsByClassName('terms').length;
	}
	return index >= 0 && index < full_count;
}

function get_index(){
	var _tempUrl = window.location.search.substring(1);
	if(typeof(_tempUrl)!='undefined'){
		var index = parseInt(_tempUrl)-1;
		if(isNaN(index)){
			return 0;
		}
		return index;
	}else{
		return 0;
	}
}