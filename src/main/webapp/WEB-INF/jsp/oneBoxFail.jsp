<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script>
window.onload = function () {
	for(a = 1; a <=10; a++){
		if($("#oneboxModule2_"+a+"00").length == 0) {$( "div[id^='oneboxModule1_"+a+"00']" ).css( {'display':'none'} );}
		if($("label[id=oneboxModule2_"+a+"00]").length > 5) {$( "label[id=oneboxModule2_"+a+"00]" ).css( {'float':'left'} );}
		if($("label[id=oneboxModule2_"+a+"00]").length > 10) {$( "label[id=oneboxModule2_"+a+"00]" ).css( {'float':'left'} ).css( {'width':'66px'} );}
	}
	}

</script> 
<meta charset="EUC-KR">
<%@include file="/WEB-INF/jsp/header.jsp" %>
</head>
<body>
<c:if test="${asIdx eq '0'}">
<!-- 원박스 부분 -->
<c:forEach var="INFOLIST" items="${INFOLIST}" varStatus="state1">
<c:if test="${INFOLIST.svrCode < 200}"><c:set var="svrCodeVal" value="SIF"/></c:if><c:if test="${INFOLIST.svrCode > 199 and INFOLIST.svrCode < 300}"><c:set var="svrCodeVal" value="SEF"/></c:if><c:if test="${INFOLIST.svrCode > 299 and INFOLIST.svrCode < 400}"><c:set var="svrCodeVal" value="DBF"/></c:if><c:if test="${INFOLIST.svrCode > 399 and INFOLIST.svrCode < 500}"><c:set var="svrCodeVal" value="EIF"/></c:if><c:if test="${INFOLIST.svrCode > 499 and INFOLIST.svrCode < 600}"><c:set var="svrCodeVal" value="TEST"/></c:if><c:if test="${INFOLIST.svrCode > 899 and INFOLIST.svrCode < 1000}"><c:set var="svrCodeVal" value="EMS"/></c:if>
<c:if test="${svrCodeVal ne currentVal}">
<c:if test="${INFOLIST.asIdx eq asIdx}">
                  <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6" id="oneboxModule1_${INFOLIST.svrCode}" style="display:;">
                    <div class="font-icon-detail" style="border-style:Inset;border-width:3px;height:255px;padding:1em">
					 <div style=color:white;>${svrCodeVal}</div>
               <c:set var="currentVal" value="${svrCodeVal}" />         
<!-- 모듈(프로세스) 반복 부분 -->                 
 <c:forEach var="PROCESSLIST" items="${PROCESSLIST}" varStatus="state2"> 
 <c:if test="${PROCESSLIST.asIdx eq asIdx}">
 <c:if test="${PROCESSLIST.svrCode < 200}"><c:set var="svrCodeVal2" value="SIF"/></c:if><c:if test="${PROCESSLIST.svrCode > 199 and PROCESSLIST.svrCode < 300}"><c:set var="svrCodeVal2" value="SEF"/></c:if><c:if test="${PROCESSLIST.svrCode > 299 and PROCESSLIST.svrCode < 400}"><c:set var="svrCodeVal2" value="DBF"/></c:if><c:if test="${PROCESSLIST.svrCode > 399 and PROCESSLIST.svrCode < 500}"><c:set var="svrCodeVal2" value="EIF"/></c:if><c:if test="${INFOLIST.svrCode > 499 and INFOLIST.svrCode < 600}"><c:set var="svrCodeVal2" value="TEST"/></c:if><c:if test="${PROCESSLIST.svrCode > 899 and PROCESSLIST.svrCode < 1000}"><c:set var="svrCodeVal2" value="EMS"/></c:if>
 <c:if test="${svrCodeVal eq svrCodeVal2}">                
                <c:if test="${PROCESSLIST.alarmStatus eq '0'}"><c:set var="border" value="" /><c:set var="width" value="2px" /><c:if test="${PROCESSLIST.moduleStatus eq '0'}"><c:set var="color" value="red" /></c:if><c:if test="${PROCESSLIST.moduleStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  <c:if test="${PROCESSLIST.moduleStatus eq '2'}"><c:set var="color" value="orange" /></c:if> </c:if>
				<c:if test="${PROCESSLIST.alarmStatus ne '0'}"><c:set var="border" value="double" /><c:set var="width" value="4px" /><c:if test="${PROCESSLIST.alarmStatus eq '0'}"><c:set var="color" value="red" /></c:if><c:if test="${PROCESSLIST.alarmStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  <c:if test="${PROCESSLIST.alarmStatus eq '2'}"><c:set var="color" value="orange" /></c:if> </c:if>
				<c:if test="${disableColor eq 'grey'}"><c:set var="color" value="grey" /></c:if>
						<div class="dropdown show-dropdown">
      						<a href="#" data-toggle="dropdown">   
		                      <label class="btn btn-sm btn-primary btn-simple" id="oneboxModule2_${INFOLIST.svrCode}" style="float:;width:100px;border-color:${color};border-style:${border};border-width:${width};" >
		                        <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block" style="color:${color};">${PROCESSLIST.moduleName}</span>
		                        <span class="d-block d-sm-none" style="color:${color}">${PROCESSLIST.moduleName}</span>
		                      </label>
		                     </a>
		                     <ul class="dropdown-menu" style="height:50px;width:180px;">
						        <button>SSH 접속</button>
						        <button>Start</button>
						        <button>Stop</button>
					        </ul>
				        </div>
</c:if>
</c:if>
</c:forEach>
                    </div>
                  </div>
</c:if>
</c:if>                 
</c:forEach>  
</c:if>
</body>
</html>