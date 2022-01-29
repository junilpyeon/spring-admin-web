 <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
 
<c:if test="${asIdx eq '0'}">
<!-- 원박스 부분 -->
<c:forEach var="INFOLIST" items="${INFOLIST}" varStatus="state1">
<c:set var="currentVal" value="JUN"/> 
<c:if test="${INFOLIST.svrCode eq '0'}">
<c:if test="${INFOLIST.svrStatus eq '0'}"><c:set var="disableColor" value="grey" /></c:if><c:if test="${INFOLIST.svrStatus ne '0'}"><c:set var="disableColor" value="" /></c:if>
<c:if test="${INFOLIST.asIdx eq asIdx}">
                  <div class="font-icon-list col-lg-8 col-md-7 col-sm-8 col-xs-6 col-xs-6" >
                    <div class="font-icon-detail"  style="background-color:#7C66AC;border-color:white;border-style:${border};border-width:4px;min-height:255px;padding:1em">
                    <a href="javascript:ViewSearch2();"><div style="color:white;">
                    <c:if test="${INFOLIST.svrBlock ne '0'}">
                    		  <label class="btn btn-sm btn-primary btn-simple" id="1" style="border-color:${color};" >
		                        <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block" style="color:${color};"><c:if test="${INFOLIST.svrBlock eq '1'}">M</c:if></span>
		                        <span class="d-block d-sm-none" style="color:${color}"><c:if test="${INFOLIST.svrBlock eq '1'}">M</c:if></span>
		                      </label>
		            </c:if>
		                      <div><b>${INFOLIST.svrName}</b></div></br>
		            </div></a>
<fmt:parseNumber var="INFOLIST.cpu" type="number" value="${INFOLIST.cpu}" /><fmt:parseNumber var="INFOLIST.cpu" type="number" value="${INFOLIST.mem}" /><fmt:parseNumber var="INFOLIST.cpu" type="number" value="${INFOLIST.disk}" />
<c:if test="${INFOLIST.cpu < 50}"><c:set var="cpuColor" value="#1E89F8"/></c:if><c:if test="${INFOLIST.cpu>=50&&INFOLIST.cpu<70}"><c:set var="cpuColor" value="green"/></c:if><c:if test="${INFOLIST.cpu>=70&&INFOLIST.cpu<80}"><c:set var="cpuColor" value="yellow"/></c:if><c:if test="${INFOLIST.cpu>=80&&INFOLIST.cpu<90}"><c:set var="cpuColor" value="orange"/></c:if><c:if test="${INFOLIST.cpu>=90&&INFOLIST.cpu<100}"><c:set var="cpuColor" value="red"/></c:if>
 <c:if test="${INFOLIST.mem < 50}"><c:set var="memColor" value="#1E89F8"/></c:if><c:if test="${INFOLIST.mem>=50&&INFOLIST.mem<70}"><c:set var="memColor" value="green"/></c:if><c:if test="${INFOLIST.mem>=70&&INFOLIST.mem<80}"><c:set var="memColor" value="yellow"/></c:if><c:if test="${INFOLIST.mem>=80&&INFOLIST.mem<90}"><c:set var="memColor" value="orange"/></c:if><c:if test="${INFOLIST.mem>=90&&INFOLIST.mem<100}"><c:set var="memColor" value="red"/></c:if>
 <c:if test="${INFOLIST.disk < 50}"><c:set var="diskColor" value="#1E89F8"/></c:if><c:if test="${INFOLIST.disk>=50&&INFOLIST.disk<70}"><c:set var="diskColor" value="green"/></c:if><c:if test="${INFOLIST.disk>=70&&INFOLIST.disk<80}"><c:set var="diskColor" value="yellow"/></c:if><c:if test="${INFOLIST.disk>=80&&INFOLIST.disk<90}"><c:set var="diskColor" value="orange"/></c:if><c:if test="${INFOLIST.disk>=90&&INFOLIST.disk<100}"><c:set var="diskColor" value="red"/></c:if>
		            <div style="color:white;font-size:12px;float:left;margin-right:5px;width:30px">CPU</div>
                    <div class="progress pink" style="height:18px;margin-bottom:8px">
                        <div class="progress-bar progress-bar-striped progress-bar-animated" style="width:${INFOLIST.cpu}%; background-color:${cpuColor}">
                            <div class="progress-value"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${INFOLIST.cpu}%</font></font></div>
                        </div>
                    </div>
                    <div style="color:white;font-size:12px;float:left;margin-right:5px;width:30px">MEM</div>
                    <div class="progress pink" style="height:18px;margin-bottom:8px">
                        <div class="progress-bar progress-bar-striped progress-bar-animated" style="width:${INFOLIST.mem}%; background-color:${memColor}">
                            <div class="progress-value"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${INFOLIST.mem}%</font></font></div>
                        </div>
                    </div>
                    <div style="color:white;font-size:12px;float:left;margin-right:5px;width:30px">DISK</div>
                    <div class="progress pink" style="height:18px;margin-bottom:8px">
                        <div class="progress-bar progress-bar-striped progress-bar-animated" style="width:${INFOLIST.disk}%; background-color:${diskColor}">
                            <div class="progress-value"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${INFOLIST.disk}%</font></font></div>
                        </div>
                    </div>
<!-- 모듈(프로세스) 반복 부분 -->                 
 <c:forEach var="PROCESSLIST" items="${PROCESSLIST}" varStatus="state2"> 
  <c:if test="${PROCESSLIST.asIdx eq asIdx}">
 <c:if test="${PROCESSLIST.svrCode == 100}"><c:set var="svrCodeVal" value="SIF"/></c:if><c:if test="${PROCESSLIST.svrCode == 200}"><c:set var="svrCodeVal" value="SEF"/></c:if><c:if test="${PROCESSLIST.svrCode == 300}"><c:set var="svrCodeVal" value="DBF"/></c:if><c:if test="${PROCESSLIST.svrCode == 400}"><c:set var="svrCodeVal" value="EIF"/></c:if><c:if test="${PROCESSLIST.svrCode == 500}"><c:set var="svrCodeVal" value="TEST"/></c:if><c:if test="${PROCESSLIST.svrCode == 900}"><c:set var="svrCodeVal" value="EMS"/></c:if>
             
                <c:if test="${PROCESSLIST.alarmStatus eq '0'}">
                	<c:set var="border" value="" /><c:set var="width" value="2px" /><c:if test="${PROCESSLIST.moduleStatus eq '0'}"><c:set var="color" value="grey" /></c:if><c:if test="${PROCESSLIST.moduleStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  <c:if test="${PROCESSLIST.moduleStatus eq '2'}"><c:set var="color" value="green" /></c:if> 
				</c:if>
				<c:if test="${PROCESSLIST.alarmStatus ne '0'}">
					<c:set var="border" value="" /><c:set var="width" value="2px" /><c:if test="${PROCESSLIST.alarmStatus eq '0'}"><c:set var="color" value="green" /></c:if><c:if test="${PROCESSLIST.alarmStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  <c:if test="${PROCESSLIST.alarmStatus eq '2'}"><c:set var="color" value="yellow" /></c:if><c:if test="${PROCESSLIST.alarmStatus eq '3'}"><c:set var="color" value="orange" /></c:if><c:if test="${PROCESSLIST.alarmStatus eq '5'}"><c:set var="color" value="red" /></c:if> 
				</c:if>
				<c:if test="${disableColor eq 'grey'}"><c:set var="color" value="grey" /></c:if>
<!-- 원박스 나누기 설정 -->
		<c:if test="${svrCodeVal ne currentVal && state2.index != 0}">
			</label> 
		</c:if>
		<c:if test="${svrCodeVal ne currentVal}">
			
			<label class="btn btn-sm btn-primary btn-simple" id="oneLabel_${PROCESSLIST.svrCode}" style="background-color:#929CF8;width:300px;min-height:150px;border-color:white;border-style:;border-width:4px;" >
			<div style="color:white;">${svrCodeVal}</div>
			<c:set var="currentVal" value="${svrCodeVal}"/> 
		</c:if> 
		
	<!-- 레이어팝업 내용 -->
  		<div id="SearchLayer_${PROCESSLIST.svrCode}_${PROCESSLIST.moduleCode}" onclick='CloseSearch()' style="position:absolute;display:none;border-radius:6px;left:10%;width:75%; height:80%;z-index:99;background: none rgba(0, 0, 0, 0.9);filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#80000000', endColorstr='#80000000');" align='center' >
			<table valign="middle" height=100%><tr><td>
			<input id="SearchLayer_1" style="width:80px;" type='submit' value="start" onclick="location.href='./startup?viewCode=${PROCESSLIST.svrCode}.${PROCESSLIST.moduleCode}'">
			<input id="SearchLayer_2" style="width:80px;" type='submit' value="stop" onclick="location.href='./shutdown?viewCode=${PROCESSLIST.svrCode}.${PROCESSLIST.moduleCode}'"><br>
			...
			<br>
			<font size='3' color='white'>Close</font>
			</td></tr></table>
	   </div>
		<!-- <script>alert(${state2.index});</script> -->
		<a href="javascript:ViewSearch(${PROCESSLIST.svrCode},${PROCESSLIST.svrIndex},${PROCESSLIST.moduleCode});">
		                      <label onclick='CloseSearch()' class="btn btn-sm btn-primary btn-simple " id="module_${PROCESSLIST.svrCode}_${PROCESSLIST.svrIndex}_${PROCESSLIST.moduleCode}" style="border-radius:6px;width:100px;border-color:white;background-color:${color};border-style:${border};border-width:${width};" >
		                        <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block" id="module_${PROCESSLIST.svrCode}_${PROCESSLIST.svrIndex}_${PROCESSLIST.moduleCode}" style="color:white">${PROCESSLIST.moduleName}</span>
		                        <span class="d-block d-sm-none" id="module_${PROCESSLIST.svrCode}_${PROCESSLIST.svrIndex}_${PROCESSLIST.moduleCode}" style="color:${color}">${PROCESSLIST.moduleName}</span>
		                      </label>
		</a>
</c:if>
</c:forEach>
                    </div>
                  </div>
</c:if>
</c:if>
</c:forEach>  
</c:if>