<nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle d-inline">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="/">EA MANAGER</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse" id="navigation">
            <ul class="navbar-nav ml-auto">
              <li class="dropdown nav-item">
                <a href="javascript:void(0)" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="notification d-none d-lg-block d-xl-block"></div>
                  <i class="tim-icons icon-sound-wave"></i>
                  <p class="d-lg-none">
                    Notifications
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-menu-right dropdown-navbar">
                <c:forEach var="ALL_ALARMS" items="${tblAlarmTop5}" varStatus="state1">
<c:if test="${ALL_ALARMS.alarmLv eq '4'}"><c:set var="color" value="red" /></c:if><c:if test="${ALL_ALARMS.alarmLv eq '3'}"><c:set var="color" value="orange" /></c:if><c:if test="${ALL_ALARMS.alarmLv eq '2'}"><c:set var="color" value="yellow" /></c:if><c:if test="${ALL_ALARMS.alarmLv eq '1'}"><c:set var="color" value="green" /></c:if>
                        <td>
                          <li class="nav-link"><a href="#" class="nav-item dropdown-item" style="color:${color};">[${ALL_ALARMS.svrCode}, ${ALL_ALARMS.updateTime}]${ALL_ALARMS.alarmMessage}</a></li>
                        </td>
</c:forEach>
                </ul>
              </li>
              <li class="dropdown nav-item">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="photo">
                    <img src="../assets/img/anime3.png" alt="Profile Photo">
                  </div>
                  <b class="caret d-none d-lg-block d-xl-block"></b>
                  <p class="d-lg-none">
                    Log out
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-navbar">
               <sec:authorize access="hasRole('ADMIN')">
               </sec:authorize>
                  <li class="nav-link"><a href="/manage" class="nav-item dropdown-item">manage</a></li>
               
                  <li class="dropdown-divider"></li>
                  <li class="nav-link"><a href="/login" class="nav-item dropdown-item">Log out</a></li>
                </ul>
              </li>
              <li class="separator d-lg-none"></li>
            </ul>
          </div>
        </div>
      </nav>