
<div class="" style="overflow:auto; width:235px; height:875px;">
        <div class="logo">
          <a href="javascript:void(0)" class="simple-text logo-mini">
            JI
          </a>
          <a href="javascript:void(0)" class="simple-text logo-normal">
            pyeon junil
          </a>
        </div>
        <ul class="nav">
        <li class="nav-item dropdown view">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <i class="fas fa-fw fa-folder"></i>
          <span onclick="location.href='./'">EA1</span>
        </a>
<c:forEach var="EXT_SYSTEMLIST" items="${EXT_SYSTEMLIST}" varStatus="state2">
<c:if test="${EXT_SYSTEMLIST.extSysBlock eq '0'}">
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '0'}">
<c:if test="${EXT_SYSTEMLIST.extSysStatus eq '0'}"><c:set var="color" value="red" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extSysStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  
<c:if test="${EXT_SYSTEMLIST.extSysStatus eq '2'}"><c:set var="color" value="orange" /></c:if>
</c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus ne '0'}">
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '1'}"><c:set var="color" value="green" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '2'}"><c:set var="color" value="yellow" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '3'}"><c:set var="color" value="orange" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '4'}"><c:set var="color" value="red" /></c:if>
</c:if>
<%-- <c:if test="${EXT_SYSTEMLIST.extSysCode eq '1'}"> --%>
        <p  id="nsep_${EXT_SYSTEMLIST.extSysCode}" style="background-color:${color}; width:200px; left:30px;">
          <a href = "javascript:void(0)" onclick = "white_open('${EXT_SYSTEMLIST.extSysName}')"><span style="color:white;">${EXT_SYSTEMLIST.extSysName}</span></a>
        </p>
<%-- </c:if> --%>
</c:if>
</c:forEach>

      </li>
      </ul>
      <ul class="nav">
        <li class="nav-item dropdown view">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <i class="fas fa-fw fa-folder"></i>
          <span onclick="location.href='./tas'">EA2</span>
        </a>
<c:forEach var="EXT_SYSTEMLIST" items="${EXT_SYSTEMLIST}" varStatus="state2">
<c:if test="${EXT_SYSTEMLIST.extSysBlock eq '1'}">
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '0'}">
<c:if test="${EXT_SYSTEMLIST.extSysStatus eq '0'}"><c:set var="color" value="red" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extSysStatus eq '1'}"><c:set var="color" value="#1d8cf8" /></c:if>  
<c:if test="${EXT_SYSTEMLIST.extSysStatus eq '2'}"><c:set var="color" value="orange" /></c:if>
</c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus ne '0'}">
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '1'}"><c:set var="color" value="green" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '2'}"><c:set var="color" value="yellow" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '3'}"><c:set var="color" value="orange" /></c:if>
<c:if test="${EXT_SYSTEMLIST.extAlarmStatus eq '4'}"><c:set var="color" value="red" /></c:if>
</c:if>
<%-- <c:if test="${EXT_SYSTEMLIST.extSysCode eq '1'}"> --%>
        <p  id="nsep_${EXT_SYSTEMLIST.extSysCode}" style="background-color:${color}; width:200px; left:30px;">
          <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block';document.getElementById('light').append='block'" style="color:white;"><span>${EXT_SYSTEMLIST.extSysName}</span></a>
        </p>
<%-- </c:if> --%>
</c:if>
</c:forEach>
      </li>
      </ul>
      <ul class="nav" onclick="location.href='./table' ">
        <li class="nav-item dropdown view">
        <a class="nav-link dropdown-toggle" href="./table" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <i class="tim-icons icon-align-center"></i>
          <span>Table</span>
        </a>
       </li>
      </ul>
      </div>
    </div>