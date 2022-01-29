 <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<div id="greetings"></div>
<div id="greetings2"></div>
<div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card" >
              <div class="card-header">
                <h6 class="title d-inline">system manage</h6>
              </div>
              <div class="card-body all-icons">
                <div class="row">
<!-- 레이어팝업 내용 -->
                <!-- <div id="SearchLayer" onclick='CloseSearch()' style="position:absolute;z-index:999;display:none; width:100%; height:90%;background: none rgba(0, 0, 0, 0.9);filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#80000000', endColorstr='#80000000');" align='center' >
					<table valign="middle" height=100%><tr><td>
					<input id="SearchLayer_1" style="width:80px;" type='submit' value="start" >
					<input id="SearchLayer_2" style="width:80px;" type='submit' value="stop" onclick="location.href='./shutdown'"><br>
					...
					<br>
					<font size='3' color='white'>Close</font>
					</td></tr></table>
			   </div>-->
			   <div id="SearchLayer2" onclick='CloseSearch2()' style="position:absolute;z-index:999;display:none; left:35%;top:20%;width:40%;height:40%;border-radius:6px;background: none rgba(0, 0, 0, 0.9);filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#80000000', endColorstr='#80000000');" align='center'>
					<table valign="middle" height=100%><tr><td>
					<input id="SearchLayer2_1" style="width:100px;" type='submit' value="SshConnect">
					<input id="SearchLayer2_2" style="width:80px;" type='submit' value="ChangeHa"><br><br>
					<input id="SearchLayer2_3" style="width:80px;" type='submit' value="Start" onclick="location.href='./startup'">
					<input id="SearchLayer2_4" style="width:80px;" type='submit' value="Stop" onclick="location.href='./shutdown'"><br><br>
					<input id="SearchLayer2_5" style="width:80px;" type='submit' value="PowerOff">
					<input id="SearchLayer2_6" style="width:80px;" type='submit' value="ReBoot"><br>
					...
					<br>
					<font size='3' color='white'>Close</font>
					</td></tr></table>
			   </div> 
                
                
<%@include file="/WEB-INF/jsp/oneBox.jsp" %>
<!-- 시스템 반복 부분 -->
<c:forEach var="INFOLIST" items="${INFOLIST}" varStatus="state1">
<c:if test="${INFOLIST.svrCode ne '0'}">
<c:if test="${INFOLIST.svrStatus eq '0'}"><c:set var="disableColor" value="grey" /></c:if><c:if test="${INFOLIST.svrStatus ne '0'}"><c:set var="disableColor" value="" /></c:if>
<c:if test="${INFOLIST.asIdx eq asIdx}">
<c:if test="${INFOLIST.alarmStatus eq '0'}"> 
				<c:set var="border" value="" /><c:set var="width" value="2px" />
				  <c:if test="${INFOLIST.svrStatus eq '0'}"><c:set var="color" value="grey" /></c:if>
				  <c:if test="${INFOLIST.svrStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  
				  <c:if test="${INFOLIST.svrStatus eq '2'}"><c:set var="color" value="green" /></c:if> 
</c:if>
<c:if test="${INFOLIST.alarmStatus ne '0'}">
				<c:set var="border" value="" /><c:set var="width" value="2px" />
				  <c:if test="${INFOLIST.alarmStatus eq '0'}"><c:set var="color" value="#1d8cf8" /></c:if>
				  <c:if test="${INFOLIST.alarmStatus eq '1'}"><c:set var="color" value="green" /></c:if>
				  <c:if test="${INFOLIST.alarmStatus eq '2'}"><c:set var="color" value="yellow" /></c:if>
				  <c:if test="${INFOLIST.alarmStatus eq '3'}"><c:set var="color" value="orange" /></c:if>
				  <c:if test="${INFOLIST.alarmStatus eq '4'}"><c:set var="color" value="red" /></c:if>
</c:if> 
                  <div class="font-icon-list col-lg-1 col-md-3 col-sm-4 col-xs-3">
                    <div class="font-icon-detail"  id="system_${INFOLIST.svrCode}_${INFOLIST.svrIndex}" style="background-color:${color};border-color:${color};border-style:${border};border-width:${width};min-height:220px;padding:1em">
                    <a href="javascript:ViewSearch2();"><div id="system_${INFOLIST.svrCode}_${INFOLIST.svrIndex}" style="color:white;margin-bottom:8px">
                   <c:if test="${INFOLIST.svrBlock ne '0'}">
		                        <span style="padding-left:4px;padding-right:4px;border-radius:6px;border:solid 2px white;color:white;font-weight:bold;"><c:if test="${INFOLIST.svrBlock eq '1'}">M</c:if></span>
		            </c:if>
		            <c:if test="${fn:contains(INFOLIST.svrName, 'DBF')||fn:contains(INFOLIST.svrName, 'EMS')||fn:contains(INFOLIST.svrName, 'CMS')||fn:contains(INFOLIST.svrName, 'OMS')}">
                    		  <span style="padding-left:4px;padding-right:4px;border-radius:6px;border:solid 2px white;color:white;font-weight:bold;"><c:if test="${INFOLIST.svrStatus eq '1'}">A</c:if><c:if test="${INFOLIST.svrStatus ne '1'}">S</c:if></span>
		            </c:if> 
		                      <span style="font-weight:bold;">${INFOLIST.svrName}</span>
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
  		<c:if test="${PROCESSLIST.svrCode eq INFOLIST.svrCode}">  
          <c:if test="${PROCESSLIST.svrIndex eq INFOLIST.svrIndex}">   
                <c:if test="${PROCESSLIST.alarmStatus eq '0'}">
                	<c:set var="border" value="" /><c:set var="width" value="2px" /><c:if test="${PROCESSLIST.moduleStatus eq '0'}"><c:set var="color" value="grey" /></c:if><c:if test="${PROCESSLIST.moduleStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  <c:if test="${PROCESSLIST.moduleStatus eq '2'}"><c:set var="color" value="green" /></c:if> 
				</c:if>
				<c:if test="${PROCESSLIST.alarmStatus ne '0'}">
					<c:set var="border" value="" /><c:set var="width" value="2px" /><c:if test="${PROCESSLIST.alarmStatus eq '0'}"><c:set var="color" value="green" /></c:if><c:if test="${PROCESSLIST.alarmStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  <c:if test="${PROCESSLIST.alarmStatus eq '2'}"><c:set var="color" value="yellow" /></c:if><c:if test="${PROCESSLIST.alarmStatus eq '3'}"><c:set var="color" value="orange" /></c:if><c:if test="${PROCESSLIST.alarmStatus eq '5'}"><c:set var="color" value="red" /></c:if> 
				</c:if>
				<c:if test="${disableColor eq 'grey'}"><c:set var="color" value="grey" /></c:if>  
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
							<a href="javascript:ViewSearch(${PROCESSLIST.svrCode},${PROCESSLIST.svrIndex},${PROCESSLIST.moduleCode});">
		                      <label class="btn btn-sm btn-primary btn-simple"  id="module_${PROCESSLIST.svrCode}_${PROCESSLIST.svrIndex}_${PROCESSLIST.moduleCode}" style="border-radius:6px;background-color:${color};border-color:white;border-style:${border};border-width:2px;">
		                        <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block" id="module_${PROCESSLIST.svrCode}_${PROCESSLIST.svrIndex}_${PROCESSLIST.moduleCode}" style="color:white;">${PROCESSLIST.moduleName}</span>
		                        <span class="d-block d-sm-none" id="module_${PROCESSLIST.svrCode}_${PROCESSLIST.svrIndex}_${PROCESSLIST.moduleCode}" style="color:white">${PROCESSLIST.moduleName}</span>
		                      </label>
		                     </a>
		                      
		  </c:if>
	</c:if>
</c:if>
</c:forEach>
                    </div>
                  </div>
</c:if>
</c:if>
</c:forEach> 
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>