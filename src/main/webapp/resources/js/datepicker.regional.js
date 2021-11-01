jQuery(function ($) {
    $.datepicker.regional['ko'] = {
        closeText: "닫기", // Display text for close link
        prevText: "이전 달", // Display text for previous month link
        nextText: "다음 달", // Display text for next month link
        currentText: "오늘", // Display text for current month link
        monthNames: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"], // Names of months for drop-down and formatting
        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"], // For formatting
        dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"], // For formatting
        dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"], // For formatting
        dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"], // Column headings for days starting at Sunday
        showMonthAfterYear: true,
        dateFormat: 'yy-mm-dd',
        changeYear: false
        //        yearSuffix: '',
        //        firstDay: 0,
        //        weekHeader: 'Wk',
        //        closeText: '닫기',
        //        prevText: '이전달',
        //        nextText: '다음달',
        //        currentText: '오늘',
    };


    $.datepicker.setDefaults($.datepicker.regional['ko']);
});