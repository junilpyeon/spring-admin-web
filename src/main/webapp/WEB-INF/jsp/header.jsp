<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>

<style>
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 50%;
	height: 50%;
	padding: 16px;
	border: 16px solid orange;
	background-color: white;
	z-index:1002;
	overflow: auto;
}
</style>
<style>
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

</style>

<script src="../assets/demo/demo.js"></script>
<!-- 스크립트부분 -->
<script>
var stompClient = null;

function connect() { 
    var socket = new SockJS('http://localhost:8080/connectWebSocket');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        console.log('Connected: ' + frame);
        stompClient.subscribe('/wc/extSys', function (data) {
            showextSys(data);
        });
        stompClient.subscribe('/wc/tblSysInfo', function (data) {
            showtblSysInfo(data);
        }); 
        stompClient.subscribe('/wc/tblSysProcess', function (data) {
            showtblSysProcess(data);
        }); 
        stompClient.subscribe('/wc/alarm', function (data) {
            showalarm(data);
        }); 
    });
}

/* function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
    console.log("Disconnected");
}

function sendName() {
    stompClient.send(
        "/ws/sendTest", 
        {}, 
        JSON.stringify({
            'name': $("#name").val()
        })
    );
} */
/* rest 출력 */
var g_extSys = null;
function showextSys(data) {
	var arrJsonData = JSON.parse(data.body); 
	var DetailArray = arrJsonData['extDetailMsg'];
	var extSysName = arrJsonData['extSysName'];
	var DetailLength = DetailArray.length;
	for(var i=0; i<DetailLength; i++){
		var DetailSeq = DetailArray[i]['fileSeq']
		var i = i+2;
		if($("#detailHead"+i+"").length < 1){$("#type09Th").append("<th id=detailHead"+i+">"+DetailArray[i]['fileSize']+"</th>");}
		var i = i-2;
		$("#EXT_SYSTEMLIST_"+DetailArray[i]['fileSeq']+"").append("<td id="+extSysName+">"+DetailArray[i]['fileName']+"</td>");
		$("td[id^="+extSysName+"]").css('display','none');
		/* $("#error_body").append("<tr><td><p style='color:red;'><b>["+arrJsonData['svrCode']+", "+arrJsonData['updateTime']+"] " +arrJsonData['alarmMessage']+ "</b></p></td></tr>"); */
		}    
	
	/* var extDetailMsgData = JSON.parse(arrJsonData['extDetailMsg'].body); */
	
	var extSysId = "nsep_"+arrJsonData['extSysCode']+"_"+arrJsonData['extSysIndex'];
	if(arrJsonData['extSysStatus']==0){$('#'+extSysId).css('background-color','red');}else{$('#'+extSysId).css('background-color','#1d8cf8');}
}

function showtblSysInfo(data) {
	var arrJsonData = JSON.parse(data.body);
	/* alert(arrJsonData); */
	var tblSysId = "system_"+arrJsonData['svrCode']+"_"+arrJsonData['svrIndex'];
	var tblModuleId = "module_"+arrJsonData['svrCode']+"_"+arrJsonData['svrIndex'];
	/* alert(tblSysId); */
	if(arrJsonData['svrStatus']==0){$("div[id^="+tblSysId+"]").css('background-color','grey').css('border-color','grey');$("label[id^="+tblModuleId+"]").css('background-color','grey').css('border-color','grey');$("span[id^="+tblModuleId+"]").css('background-color','grey');}
	else if(arrJsonData['svrStatus']==1){$("div[id^="+tblSysId+"]").css('background-color','#1d8cf8').css('border-color','#1d8cf8');}else if(arrJsonData['svsStatus']==2){$("div[id^="+tblSysId+"]").css('background-color','green').css('border-color','green');}
	if(arrJsonData['alarmStatus']==1){$("div[id^="+tblSysId+"]").css('background-color','green').css('border-color','green');}
	else if(arrJsonData['alarmStatus']==2){$("div[id^="+tblSysId+"]").css('background-color','yellow').css('border-color','yellow');}else if(arrJsonData['alarmStatus']==3){$("div[id^="+tblSysId+"]").css('background-color','orange').css('border-color','orange');}else if(arrJsonData['alarmStatus']==4){$("div[id^="+tblSysId+"]").css('background-color','red').css('background-color','#1d8cf8');}
}

function showtblSysProcess(data) {
	var arrJsonData = JSON.parse(data.body);
	/* alert(arrJsonData); */
	var tblSysId = "system_"+arrJsonData['svrCode']+"_"+arrJsonData['svrIndex'];
	var tblModuleId = "module_"+arrJsonData['svrCode']+"_"+arrJsonData['svrIndex']+"_"+arrJsonData['moduleCode'];
	/* alert(tblModuleId);
	alert(arrJsonData['moduleStatus']); */
	if(arrJsonData['moduleStatus']==0){$("label[id^="+tblModuleId+"]").css('background-color','grey');}
	else if(arrJsonData['moduleStatus']==1){$("label[id^="+tblModuleId+"]").css('background-color','#1d8cf8');}else if(arrJsonData['moduleStatus']==2){$("label[id^="+tblModuleId+"]").css('background-color','green');}
	if(arrJsonData['alarmStatus']==3){$("label[id^="+tblModuleId+"]").css('background-color','orange');}else if(arrJsonData['alarmStatus']==4){$("label[id^="+tblModuleId+"]").css('background-color','red');}
	else if(arrJsonData['alarmStatus']==1){$("label[id^="+tblModuleId+"]").css('background-color','green');}else if(arrJsonData['alarmStatus']==2){$("label[id^="+tblModuleId+"]").css('background-color','yellow');}
}

function showalarm(data) {
	var arrJsonData = JSON.parse(data.body);
	var alarmbody = "["+arrJsonData['svrCode']+", "+arrJsonData['updateTime']+"] " +arrJsonData['alarmMessage'];
    if(arrJsonData['alarmLv']==4){$("#error_body").append("<tr><td><p style='color:red;'><b>["+arrJsonData['svrCode']+", "+arrJsonData['updateTime']+"] " +arrJsonData['alarmMessage']+ "</b></p></td></tr>"); }if(arrJsonData['alarmLv']==3){$("#error_body").append("<tr><td><p style='color:orange;'><b>["+arrJsonData['svrCode']+", "+arrJsonData['updateTime']+"] " +arrJsonData['alarmMessage']+ "</b></p></td></tr>"); }if(arrJsonData['alarmLv']==2){$("#error_body").append("<tr><td><p style='color:yellow;'><b>["+arrJsonData['svrCode']+", "+arrJsonData['updateTime']+"] " +arrJsonData['alarmMessage']+ "</b></p></td></tr>"); }if(arrJsonData['alarmLv']==1){$("#error_body").append("<tr><td><p style='color:green;'><b>["+arrJsonData['svrCode']+", "+arrJsonData['updateTime']+"] " +arrJsonData['alarmMessage']+ "</b></p></td></tr>"); }
    demo.showNotification('top','center',arrJsonData['alarmLv'],alarmbody)
    if(arrJsonData['moduleCode']==0 && (arrJsonData['svrCode']<800 || arrJsonData['svrCode']>=900)){
    	var tblSysId = "system_"+arrJsonData['svrCode']+"_"+arrJsonData['svrIndex'];
    	var tblModuleId = "module_"+arrJsonData['svrCode']+"_"+arrJsonData['svrIndex']+"_"+arrJsonData['moduleCode'];
    	if(arrJsonData['alarmLv']==0){$("div[id^="+tblSysId+"]").css('border-color','grey').css('color','grey');$("label[id^="+tblModuleId+"]").css('border-color','grey').css('color','grey');$("span[id^="+tblModuleId+"]").css('border-color','grey').css('color','grey');}
    	else if(arrJsonData['alarmLv']==1){$("div[id^="+tblSysId+"]").css('border-color','green').css('color','green');}else if(arrJsonData['alarmLv']==2){$("div[id^="+tblSysId+"]").css('border-color','yellow').css('border-color','yellow');}else if(arrJsonData['alarmLv']==3){$("div[id^="+tblSysId+"]").css('border-color','orange').css('border-color','orange');}else if(arrJsonData['alarmLv']==4){$("div[id^="+tblSysId+"]").css('background-color','red').css('border-color','red');}
    }
    if(arrJsonData['moduleCode']!=0){
    	var tblSysId = "system_"+arrJsonData['svrCode']+"_"+arrJsonData['svrIndex'];
    	var tblModuleId = "module_"+arrJsonData['svrCode']+"_"+arrJsonData['svrIndex']+"_"+arrJsonData['moduleCode'];
    	if(arrJsonData['alarmLv']==0){$("label[id^="+tblModuleId+"]").css('background-color','grey');}
    	else if(arrJsonData['alarmLv']==1){$("label[id^="+tblModuleId+"]").css('background-color','green');}else if(arrJsonData['alarmLv']==2){$("label[id^="+tblModuleId+"]").css('background-color','yellow');}else if(arrJsonData['alarmLv']==3){$("label[id^="+tblModuleId+"]").css('background-color','orange');}else if(arrJsonData['alarmLv']==4){$("label[id^="+tblModuleId+"]").css('background-color','red');}
    } 
    if(arrJsonData['svrCode']>=800 && arrJsonData['svrCode']<900){
    	var arrJsonData = JSON.parse(data.body);
    	var extSysId = "nsep_"+arrJsonData['svrCode'];
    	if(arrJsonData['alarmLv']==1){$('#'+extSysId).css('background-color','green');}else if(arrJsonData['alarmLv']==2){$('#'+extSysId).css('background-color','yellow');}else if(arrJsonData['alarmLv']==3){$('#'+extSysId).css('background-color','orange');}else if(arrJsonData['alarmLv']==4){$('#'+extSysId).css('background-color','red');}
    }
}

window.onload = function () {
	for(a = 1; a <=10; a++){
		if($("#oneboxModule2_"+a+"00").length == 0) {$( "div[id^='oneboxModule1_"+a+"00']" ).css( {'display':'none'} );}
		if($("label[id=oneboxModule2_"+a+"00]").length > 5) {$( "label[id=oneboxModule2_"+a+"00]" ).css( {'float':'left'} );}
		if($("label[id=oneboxModule2_"+a+"00]").length > 10) {$( "label[id=oneboxModule2_"+a+"00]" ).css( {'float':'left'} ).css( {'width':'66px'} );}
		
	}
	
}


	/*$(function () {
		console.log("window onload");
	    $("form").on('submit', function (e) {
	        e.preventDefault();
	    });
	    $( "#connect" ).click(function() { connect(); });
	    $( "#disconnect" ).click(function() { disconnect(); });
	    $( "#send" ).click(function() { sendName(); });
	});*/
	
</script> 

<%
if(session.getAttribute("dateTime") == null){
	response.sendRedirect("/login");
	}else{
String dateTime = (String)session.getAttribute("dateTime");
int sessionTime = (int)session.getAttribute("sessionTime");
session.setMaxInactiveInterval(sessionTime);
String OP_ID = (String)session.getAttribute("OP_ID");
	
if(dateTime == null){
%> 
<script>
alert("login fail");
history.go(-1);                                    // 이전 페이지로 이동
</script><%}
else{}
}%>

  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <title>
    Dashboard by Junilpyeon
  </title>
  <!--     Fonts and icons     -->
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="../assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
  
  <script type="text/javascript">
function ViewSearch(svrCode,svrIndex,moduleCode){
	var viewCode = svrCode+"."+svrIndex+"."+moduleCode;
	var SearchLayerCode = "SearchLayer_"+svrCode+"_"+moduleCode;
        document.getElementById(""+SearchLayerCode+"").style.display='inline'
    }
function CloseSearch(){
        $("div[id*='SearchLayer_']").css('display','none');
    }
function ViewSearch2(){
    /* var viewCode = svrCode+"."+svrIndex */
    	document.getElementById("SearchLayer2").style.display='inline'
        	$("#SearchLayer2_3").click(function(){ location.href='./startup?viewCode='+viewCode+''; });
   		    $("#SearchLayer2_4").click(function(){ location.href='./shutdown?viewCode='+viewCode+''; });
}
function CloseSearch2(){
    document.getElementById("SearchLayer2").style.display='none'
}

</script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>


<!-- 시스템매니져 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>