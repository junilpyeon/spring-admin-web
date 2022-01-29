<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/jsp/header.jsp" %>
</head>
<body>
  <div class="wrapper">
    <div class="sidebar">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red"
    -->
<%@include file="/WEB-INF/jsp/sidebar.jsp" %>
    <div class="main-panel">
      <!-- Navbar -->
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
              <li>
	              <div class="col-md-4">
	                <button class="btn btn-primary btn-block" onclick="showNotification('top','center')">알람</button>
	              </div>
              </li>
              <li class="dropdown nav-item">
                <a href="javascript:void(0)" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="notification d-none d-lg-block d-xl-block"></div>
                  <i class="tim-icons icon-sound-wave"></i>
                  <p class="d-lg-none">
                    Notifications
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-menu-right dropdown-navbar">
                  <li class="nav-link"><a href="#" class="nav-item dropdown-item" style="color:#f5365c;">[2019-11-06 17:30:20-서울 server]EMS_A CCS : ALL LINK DISCONNECT</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item" style="color:#fb6340;">[2019-11-07 18:33:48-서울 server]Oracle TableSpace Overload(TS_STAT [94%])</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item" style="color:#ffd600;">[2019-11-06 17:29:26-서울 server]Oracle TableSpace Overload (TS_STAT_IDX [95%])</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item" style="color:#1d8cf8;">[2019-11-06 17:29:15-서울 server]OMS B DGM CCS 3:125.152.78.231 : DOWN</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item" style="color:#2dce89;">[2019-11-06 17:29:18-서울 server]아크로CSCF(125.152.0.163) : DOWN</a></li>
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
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Profile</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Settings</a></li>
                  <li class="dropdown-divider"></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Log out</a></li>
                </ul>
              </li>
              <li class="separator d-lg-none"></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- End Navbar -->
      <div class="content">
     <div class="col-md-12">
            <div class="card card-tasks" style="min-height:520px;">
              <div class="card-header ">
                <h4 class="card-title"> tblSysInfo : 시스템 상태 및 정보</h4>
                <div class="dropdown">
                  <button type="button" class="btn btn-link dropdown-toggle btn-icon" data-toggle="dropdown">
                    <i class="tim-icons icon-settings-gear-63"></i>
                  </button>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="#pablo">Action</a>
                    <a class="dropdown-item" href="#pablo">Another action</a>
                    <a class="dropdown-item" href="#pablo">Something else</a>
                  </div>
                </div>
              </div>
              <div class="card-body ">
                <div class="table-full-width table-responsive">
                  <table class="table">
                  <thead class=" text-primary">
                      <tr>
                        <!-- <th>asIdx </th> -->
                        <th>svrCode</th>
                        <th>svrIndex</th>
                        <th class="text-center">svrName</th>
                        <th class="text-center">svrIpV4</th>
                        <th class="text-center">svrIpV6</th>
                        <th class="text-center">cpu</th>
                        <th class="text-center">mem</th>
                        <th class="text-center">disk</th>
                        <th class="text-center">netRx</th>
                        <th class="text-center">netTx</th>
                        <th class="text-center">svrStatus</th>
                        <th class="text-center">svrBlock</th>
                        <th class="text-center">alarmStatus</th>
                        <th class="text-center">updateTime</th>
                      </tr>
                    </thead>
                    <tbody>
<c:forEach var="INFOLIST" items="${INFOLIST}" varStatus="state1">
                      <tr>
                        <%-- <td>${INFOLIST.asIdx}</td> --%>
                        <td>${INFOLIST.svrCode}</td>
                        <td>${INFOLIST.svrIndex}</td>
                        <td class="text-center">${INFOLIST.svrName}</td>
                        <td class="text-center">${INFOLIST.svrIpV4}</td>
                        <td class="text-center">${INFOLIST.svrIpV6}</td>
                        <td class="text-center">${INFOLIST.cpu}</td>
                        <td class="text-center">${INFOLIST.mem}</td>
                        <td class="text-center">${INFOLIST.disk}</td>
                        <td class="text-center">${INFOLIST.netRx}</td>
                        <td class="text-center">${INFOLIST.netTx}</td>
                        <td class="text-center">${INFOLIST.svrStatus}</td>
                        <td class="text-center">${INFOLIST.svrBlock}</td>
                        <td class="text-center">${INFOLIST.alarmStatus}</td>
                        <td class="text-center">${INFOLIST.updateTime}</td>
                      </tr>
</c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="card card-tasks" style="min-height:520px;">
              <div class="card-header ">
                <h4 class="card-title"> tblSysProcess : 시스템별 프로세스(모듈) 상태</h4>
                <div class="dropdown">
                  <button type="button" class="btn btn-link dropdown-toggle btn-icon" data-toggle="dropdown">
                    <i class="tim-icons icon-settings-gear-63"></i>
                  </button>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="#pablo">Action</a>
                    <a class="dropdown-item" href="#pablo">Another action</a>
                    <a class="dropdown-item" href="#pablo">Something else</a>
                  </div>
                </div>
              </div>
              <div class="card-body ">
                <div class="table-full-width table-responsive">
                  <table class="table">
                  <thead class=" text-primary">
                      <tr>
                        <!-- <th>asIdx </th> -->
                        <th>svrCode</th>
                        <th>svrIndex</th>
                        <th class="text-center">moduleIndex</th>
                        <th class="text-center">moduleCode</th>
                        <th class="text-center">moduleName</th>
                        <th class="text-center">moduleStatus</th>
                        <th class="text-center">alarmStatus</th>
                        <th class="text-center">updateTime</th>
                      </tr>
                    </thead>
                    <tbody>
<c:forEach var="PROCESSLIST" items="${PROCESSLIST}" varStatus="state1">
                      <tr>
                        <%-- <td>${PROCESSLIST.asIdx}</td> --%>
                        <td>${PROCESSLIST.svrCode}</td>
                        <td>${PROCESSLIST.svrIndex}</td>
                        <td class="text-center">${PROCESSLIST.moduleIndex}</td>
                        <td class="text-center">${PROCESSLIST.moduleCode}</td>
                        <td class="text-center">${PROCESSLIST.moduleName}</td>
                        <td class="text-center">${PROCESSLIST.moduleStatus}</td>
                        <td class="text-center">${PROCESSLIST.alarmStatus}</td>
                        <td class="text-center">${PROCESSLIST.updateTime}</td>
                      </tr>
</c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="card card-tasks" style="min-height:520px;">
              <div class="card-header ">
                <h4 class="card-title"> tblExtSystem : 외부연동 서버</h4>
                <div class="dropdown">
                  <button type="button" class="btn btn-link dropdown-toggle btn-icon" data-toggle="dropdown">
                    <i class="tim-icons icon-settings-gear-63"></i>
                  </button>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="#pablo">Action</a>
                    <a class="dropdown-item" href="#pablo">Another action</a>
                    <a class="dropdown-item" href="#pablo">Something else</a>
                  </div>
                </div>
              </div>
              <div class="card-body ">
                <div class="table-full-width table-responsive">
                  <table class="table">
                  <thead class=" text-primary">
                      <tr>
                        <!-- <th>extSysCode</th> -->
                        <th class="text-center">extSysIndex</th>
                        <th class="text-center">extSysName</th>
                        <th class="text-center">extSysIp</th>
                        <th class="text-center">extSysStatus</th>
                        <th class="text-center">extSysBlock</th>
                        <th class="text-center">extAlarmStatus</th>
                        <th class="text-center">extDetailMsg</th>
                        <th class="text-center">updateTime</th>
                      </tr>
                    </thead>
                    <tbody>
<c:forEach var="EXT_SYSTEMLIST" items="${EXT_SYSTEMLIST}" varStatus="state1">
                      <tr>
                        <%-- <td>${EXT_SYSTEMLIST.extSysCode}</td> --%>
                        <td class="text-center">${EXT_SYSTEMLIST.extSysIndex}</td>
                        <td class="text-center">${EXT_SYSTEMLIST.extSysName}</td>
                        <td class="text-center">${EXT_SYSTEMLIST.extSysIp}</td>
                        <td class="text-center">${EXT_SYSTEMLIST.extSysStatus}</td>
                        <td class="text-center">${EXT_SYSTEMLIST.extSysBlock}</td>
                        <td class="text-center">${EXT_SYSTEMLIST.extAlarmStatus}</td>
                        <td class="text-center">${EXT_SYSTEMLIST.extDetailMsg}</td>
                        <td class="text-center">${EXT_SYSTEMLIST.updateTime}</td>
                      </tr>
</c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          <ul class="nav">
            <li class="nav-item">
              <a href="javascript:void(0)" class="nav-link">
                https://gotiel.tistory.com/
              </a>
            </li>
            <li class="nav-item">
              <a href="javascript:void(0)" class="nav-link">
                Tel 02.111.2222
              </a>
            </li>
            <li class="nav-item">
              <a href="javascript:void(0)" class="nav-link">
                Junil pyeon
              </a>
            </li>
          </ul>
          <div class="copyright">
            ©
            <script>
              document.write(new Date().getFullYear())
            </script>2019 made with <i class="tim-icons icon-heart-2"></i> by
            <a href="javascript:void(0)" target="_blank">Junil pyeon</a> for management web.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <!-- 좌측 alert bar -->
      <ul class="dropdown-menu" style="min-width: 50rem;">
        <li class="header-title"> 서울 server 현재 장애 내역</li>
        <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                        <th style="min-width:100px">
                          장애코드
                        </th>
                        <th style="min-width:50px">
                          알람
                        </th>
                        <th class="text-center">
                          장애내용
                        </th>
                        <th class="text-center">
                          발생시간
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          300
                        </td>
                        <td>
                          
                        </td>
                        <td>
                          Chassis[0] Blade[10th] : DOWN
                        </td>
                        <td class="text-center">
                          2019-11-11 오후 4:31:25
                        </td>
                      </tr>
                      <tr>
                        <td>
                          300
                        </td>
                        <td>
                          
                        </td>
                        <td>
                          Chassis[0] Blade[ 9th] : DOWN
                        </td>
                        <td class="text-center">
                          2019-11-11 오후 4:31:24
                        </td>
                      </tr>
                      <tr>
                        <td>
                          300
                        </td>
                        <td>
                          
                        </td>
                        <td>
                          Chassis[0] Blade[ 8th] : DOWN
                        </td>
                        <td class="text-center">
                          2019-11-11 오후 4:31:24
                        </td>
                      </tr>
                      <tr>
                        <td>
                          300
                        </td>
                        <td>
                          
                        </td>
                        <td>
                          Chassis[0] Blade[ 7th] : DOWN
                        </td>
                        <td class="text-center">
                          2019-11-11 오후 4:31:24
                        </td>
                      </tr>
                      <tr>
                        <td>
                          317
                        </td>
                        <td>
                          
                        </td>
                        <td>
                          EMS : DAS_0 Unmount[/backup/oradata1/oradata2/oradata3/oradata4/oradata5]
                        </td>
                        <td class="text-center">
                          2019-11-11 오후 4:31:13
                        </td>
                      </tr>
                      <tr>
                        <td>
                          441
                        </td>
                        <td>
                          
                        </td>
                        <td>
                          testmyung() : DOWN (OPTIONS 무응답)
                        </td>
                        <td class="text-center">
                          2019-11-11 오후 4:37:43
                        </td>
                      </tr>
                      <tr>
                        <td>
                          441
                        </td>
                        <td>
                          
                        </td>
                        <td>
                          mrftest4() : DOWN (OPTIONS 무응답)
                        </td>
                        <td class="text-center">
                          2019-11-11 오후 4:37:43
                        </td>
                      </tr>
                    </tbody>
                  </table>
      </ul> 
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    --> 
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/black-dashboard.min.js?v=1.0.0"></script><!-- Black Dashboard DEMO methods, don't include it in your project! 
  <script src="../assets/demo/demo.js"></script>-->
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');
        $navbar = $('.navbar');
        $main_panel = $('.main-panel');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');
        sidebar_mini_active = true;
        white_color = false;

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();



        $('.fixed-plugin a').click(function(event) {
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .background-color span').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data', new_color);
          }

          if ($main_panel.length != 0) {
            $main_panel.attr('data', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data', new_color);
          }
        });

        $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            sidebar_mini_active = false;
            blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
          } else {
            $('body').addClass('sidebar-mini');
            sidebar_mini_active = true;
            blackDashboard.showSidebarMessage('Sidebar mini activated...');
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);
        });

        $('.switch-change-color input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (white_color == true) {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').removeClass('white-content');
            }, 900);
            white_color = false;
          } else {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').addClass('white-content');
            }, 900);

            white_color = true;
          }


        });

        $('.light-badge').click(function() {
          $('body').addClass('white-content');
        });

        $('.dark-badge').click(function() {
          $('body').removeClass('white-content');
        });
      });
    });
  </script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      //demo.initDashboardPageCharts();

    });
  </script> 
</body>

</html>
