// 스크롤 존재여부 체크
;(function($) {
    $.fn.hasVerticalScrollbar = function() {
        // This will return true, when the div has vertical scrollbar
        return this.get(0).scrollHeight > this.height();
    }
    $.fn.hasHorizontalScrollbar = function() {
        // This will return true, when the div has horizontal scrollbar
        return this.get(0).scrollWidth > this.width();
    }
})(jQuery);
$(document).ready(function(){
    var container = $("body");

    if(container.hasVerticalScrollbar()){
        //브라우저 스크롤바 width
        var inner = document.createElement('p');
        inner.style.width = "100%";
        inner.style.height = "200px";

        var outer = document.createElement('div');
        outer.style.position = "absolute";
        outer.style.top = "0px";
        outer.style.left = "0px";
        outer.style.visibility = "hidden";
        outer.style.width = "200px";
        outer.style.height = "150px";
        outer.style.overflow = "hidden";
        outer.appendChild (inner);

        document.body.appendChild (outer);
        var w1 = inner.offsetWidth;
        outer.style.overflow = 'scroll';
        var w2 = inner.offsetWidth;
        if (w1 == w2) w2 = outer.clientWidth;

        document.body.removeChild (outer);

        w_scroll = w1 - w2;
        breakPoint = 767 - w_scroll;
    } else {
        breakPoint = 767;
        w_scroll = 0;
    }
    resizeFrame();
})

$(window).resize(function(){
    resizeFrame()
});

// resize
function resizeFrame(){
    var w_window = $(window).width() - w_scroll;
    var $Wrap = $("#wrap");
    if(w_window < 768) {
        $Wrap.addClass("frame-mobile");
        $Wrap.removeClass("frame-pc");
        $("#header").removeClass("active");
    } else {
        $Wrap.removeClass("frame-mobile");
        $Wrap.addClass("frame-pc");
        $("#header").removeClass("active");
    }
}

$(function(){
    if($("#wrap").hasClass("frame-pc")) {
        $(".nav > li").on("mouseenter", function(){
            $("#header").addClass("active");
        })
        $("#header").on("mouseleave", function(){
            $("#header").removeClass("active");
        })
    }
    $(".btn-depth").on("click", function(){
        if($("#wrap").hasClass("frame-mobile")) {
            $(this).parent().siblings().removeClass("active");
            $(this).parent().addClass("active");
        }
    })
})
$(window).scroll(function(){
    $("#header").removeClass("active");
})
function openMenu() {
    if($("#header").hasClass("active")) {
        $("#header").removeClass("active");
    } else {
        $("#header").addClass("active");
    }
}
