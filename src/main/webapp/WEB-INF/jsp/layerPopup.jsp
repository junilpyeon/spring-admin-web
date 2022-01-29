 <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

 
 
 		<div id="light" class="white_content" style="border-color:#1E8BF8;border-width:8px">
 		
 		<b>외부장비 상태</b>
<table class="type09">
    <thead>
    <tr id="type09Th">
        <th scope="cols">서버</th>
        <th scope="cols">IP 정보</th>
        <th scope="cols">상태</th>
        <th scope="cols">Block기록</th>
        <th scope="cols">Alarm기록</th>
        <th scope="cols">업데이트일자</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="EXT_SYSTEMLIST" items="${EXT_SYSTEMLIST}" varStatus="state2">
<script>
function white_open(extSysName){
	document.getElementById('light').style.display='block';
	document.getElementById('fade').style.display='block';
	document.getElementById('fade').style.display='block';
	$("td[id^="+extSysName+"]").css('display','')
}
var extSysName = '<c:out value="${EXT_SYSTEMLIST.extSysName}"/>';


var beforeStr = "${EXT_SYSTEMLIST.extDetailMsg}";
beforeStr = beforeStr.replace("[","").replace("]","").replace(", ","") 
var detailArray = beforeStr.split("a=");
var detailArraylength = detailArray.length;
for(var i=1; i<detailArraylength; i+=3){
	var i = i-1;var z = i+3;
	if($("#detailHead"+i+"").length < 1){$("#type09Th").append("<th id=detailHead"+i+">"+detailArray[z]+"</th>");}
	var i = i+1; 
	var j = i+1;
$("td[id^="+extSysName+"]").css('display','none');
}
</script>
<c:if test="${EXT_SYSTEMLIST.extSysStatus eq '1'}"><c:set var="extSysStatus" value="정상" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extSysBlock eq '0'}"><c:set var="extSysBlock" value="정상" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '0'}"><c:set var="extAlarmStatus" value="정상" /></c:if>
    <tr id="EXT_SYSTEMLIST_${state2.index}">
        <td id="${EXT_SYSTEMLIST.extSysName}" style="display:none;">${EXT_SYSTEMLIST.extSysName}</td>
        <td id="${EXT_SYSTEMLIST.extSysName}" style="display:none;">${EXT_SYSTEMLIST.extSysIp}</td>
        <td id="${EXT_SYSTEMLIST.extSysName}" style="display:none;">${extSysStatus}</td>
        <td id="${EXT_SYSTEMLIST.extSysName}" style="display:none;">${extSysBlock}</td>
        <td id="${EXT_SYSTEMLIST.extSysName}" style="display:none;">${extAlarmStatus}</td>
        <td id="${EXT_SYSTEMLIST.extSysName}" style="display:none;">${EXT_SYSTEMLIST.updateTime}</td> 
    </tr>
<script>
var extSysName = '<c:out value="${EXT_SYSTEMLIST.extSysName}"/>';
var beforeStr = "${EXT_SYSTEMLIST.extDetailMsg}";
beforeStr = beforeStr.replace("[","").replace("]","").replace(", ","") 
var detailArray = beforeStr.split("a=");
var detailArraylength = detailArray.length;
for(var i=1; i<detailArraylength; i+=3){
	var j = i+1;
	var EXT_SYSTEMLIST = "EXT_SYSTEMLIST_"+detailArray[i]+"";
	$("tr[id^="+EXT_SYSTEMLIST+"]").append("<td id="+extSysName+">"+detailArray[j]+"</td>");
$("td[id^="+extSysName+"]").css('display','none');
}
</script>
</c:forEach>  
    </tbody>
</table>
 		
 		
 		
 		
 		</div>
		<div id="fade" class="black_overlay" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"></div>