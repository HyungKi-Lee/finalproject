/* Kurien / Kurien's Blog / http://blog.kurien.co.kr */
/* 주석만 제거하지 않는다면, 어떤 용도로 사용하셔도 좋습니다. */

/*
type
1 : 전국
2 : 동부
3 : 서부
4 : 
*/
function test(idMyDiv){
     var objDiv = document.getElementById(idMyDiv);
     if(objDiv.style.display=="block"){ objDiv.style.display = "none"; }
      else{ objDiv.style.display = "block"; }
}





function hCalendar(id, date, typeArray, textArray) {

	var typeClassList = new Array('date-type-1', 'date-type-2', 'date-type-3', 'date-type-4');
	
	if(typeof( typeArray ) == 'undefined'){
		//1 - 전국일주 2박 3일,2- 동부권 1박2일,3-서부권 2박3일
		typeArray= new Array(0,0,0,1,2,
						0,0,1,0,0,1,3,
						0,0,1,0,0,1,2,
						0,0,1,0,0,0,0,
						4,0,1,0,0);
		//typeArray= new Array(31);
	}

	if(typeof( textArray ) == 'undefined'){
		textArray= new Array("","","","전국일주 2박3일", "동부권 1박2일",
							"","","전국일주 2박3일","","","전국일주 2박3일","서부권 2박3일",
							"","","전국일주 2박3일","","","전국일주 2박3일","동부권 1박2일",
							"","","전국일주 2박3일","","","","",
							"설맞이 2박3일","","전국일주 2박3일","", "");
		//textArray= new Array(31);
	}

	var hCalendar = document.getElementById(id);
	
	if( typeof( date ) !== 'undefined' ) {
		date = date.split('-');
		date[1] = date[1] - 1;
		date = new Date(date[0], date[1], date[2]);
	} else {
		var date = new Date();
	}
	var currentYear = date.getFullYear();
	//년도를 구함
	
	var currentMonth = date.getMonth() + 1;
	//연을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
	
	var currentDate = date.getDate();
	//오늘 일자.
	
	date.setDate(1);
	var currentDay = date.getDay();
	//이번달 1일의 요일은 출력. 0은 일요일 6은 토요일
	
	var dateString = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
	var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 )
		lastDate[1] = 29;
	//각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일 임.
	
	var currentLastDate = lastDate[currentMonth-1];
	var week = Math.ceil( ( currentDay + currentLastDate ) / 7 );
	//총 몇 주인지 구함.
	
	if(currentMonth != 1)
		var prevDate = currentYear + '-' + ( currentMonth - 1 ) + '-' + currentDate;
	else
		var prevDate = ( currentYear - 1 ) + '-' + 12 + '-' + currentDate;
	//만약 이번달이 1월이라면 1년 전 12월로 출력.
	
	if(currentMonth != 12) 
		var nextDate = currentYear + '-' + ( currentMonth + 1 ) + '-' + currentDate;
	else
		var nextDate = ( currentYear + 1 ) + '-' + 1 + '-' + currentDate;
	//만약 이번달이 12월이라면 1년 후 1월로 출력.

	
	if( currentMonth < 10 )
		var currentMonth = '0' + currentMonth;
	//10월 이하라면 앞에 0을 붙여준다.
	
	var calendar = '';
	
	calendar += '<div id="calendar_header">';
	calendar += '			<span><a class="button left" onclick="hCalendar(\'' +  id + '\', \'' + prevDate + '\')"><</a></span>';
	calendar += '			<span id="date">' + currentYear + '년 ' + currentMonth + '월</span>';
	calendar += '			<span><a class="button right" onclick="hCalendar(\'' + id + '\', \'' + nextDate + '\')">></a></span>';
	calendar += '		</div>';
	calendar += '		<table border="0" cellspacing="0" cellpadding="0">';
	calendar += '			<caption>' + currentYear + '년 ' + currentMonth + '월 달력</caption>';
	calendar += '			<thead>';
	calendar += '				<tr class="bg_blue">';
	calendar += '				  <th class="row_week sun" scope="row">SUN</th>';
	calendar += '				  <th class="row_week mon" scope="row">MON</th>';
	calendar += '				  <th class="row_week tue" scope="row">THE</th>';
	calendar += '				  <th class="row_week wed" scope="row">WED</th>';
	calendar += '				  <th class="row_week thu" scope="row">THU</th>';
	calendar += '				  <th class="row_week fri" scope="row">FRI</th>';
	calendar += '				  <th class="row_week sat" scope="row">SAT</th>';
	calendar += '				</tr>';
	calendar += '			</thead>';
	calendar += '			<tbody>';
	
	var dateNum = 1 - currentDay;

	



	for(var i = 0; i < week; i++) {
		calendar += '			<tr>';
		for(var j = 0; j < 7; j++, dateNum++) {
			if( dateNum < 1 || dateNum > currentLastDate ) {
				calendar += '				<td class="' + dateString[j] + '"> </td>';
				continue;
			}
			if(typeof( typeArray[dateNum-1] ) !== 'undefined' && typeArray[dateNum-1] != 0){
			calendar += '				<td class="' + dateString[j] + '">' + dateNum + 
				'<div style="padding: 0 15px; margin-top: 5px;"><div class="btn_reservation"><a href="../website/rc_rev02.asp"><img src="../img/btn_reservation.jpg"></a></div><div class="'+typeClassList[typeArray[dateNum-1]-1]+'">'+textArray[dateNum-1]+'</div></div></td>';
			}else{
				calendar += '				<td class="' + dateString[j] + '">' + dateNum + '</td>';
			}
		}
		calendar += '			</tr>';
	}







	
	calendar += '			</tbody>';
	calendar += '		</table>';
	
	hCalendar.innerHTML = calendar;
}