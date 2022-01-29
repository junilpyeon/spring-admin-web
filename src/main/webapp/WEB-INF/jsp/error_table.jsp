 <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
int pageIndex = (int)session.getAttribute("pageIndex");
int pageSize = (int)session.getAttribute("pageSize");
int count = (int)session.getAttribute("count");
int pageGroupSize = (int)session.getAttribute("pageGroupSize");
int nowPageGroup = (int)session.getAttribute("nowPageGroup");
int pageGroupCount = (int)session.getAttribute("pageGroupCount");
%> 
 <script type="text/javascript">
 function pagingScript(pageIndex, pageSize, form, url) {
	 var form_id = '#'+form;
	 $(form_id).find("#pageIndex").val(pageIndex);
	 $(form_id).find("#pageSize").val(pageSize);
	 $(form_id).attr('action', url).submit(); 
	 return false;
	 };
 </script>
<div class="row">
          <div class="col-md-12">
            <div class="card card-tasks" style="height:300px;">
            <form class="form" id="boardSearchVO" name="boardSearchVO">
              <input type="hidden" id="pageIndex" name="pageIndex" value="${pageIndex}"/>
	          <input type="hidden" id="pageSize" name="pageSize" value="${pageSize}"/>
	          <input type="hidden" id="bbs_sno" name="bbs_sno" value="${boardSearchVO.bbs_sno}"/>
	          <input type="hidden" id="blt_rsrc_sno" name="blt_rsrc_sno" value="0"/>
	        </form>  
	          
              <div class="card-header ">
                <h6 class="title d-inline">Error/Fault</h6>
              </div>
              <div class="card-body ">
                <div class="table-full-width table-responsive" style="overflow:auto; width:1500px; height:250px;">
                  <table class="table">
                    <tbody id="error_body">
<c:forEach var="ALL_ALARMS" items="${tblAlarmPaging}" varStatus="state1">
<c:if test="${ALL_ALARMS.alarmLv eq '4'}"><c:set var="color" value="red" /></c:if><c:if test="${ALL_ALARMS.alarmLv eq '3'}"><c:set var="color" value="orange" /></c:if><c:if test="${ALL_ALARMS.alarmLv eq '2'}"><c:set var="color" value="yellow" /></c:if><c:if test="${ALL_ALARMS.alarmLv eq '1'}"><c:set var="color" value="green" /></c:if>
                      <tr>
                        <td>
                          <p style="color:${color};">[${ALL_ALARMS.svrCode}, ${ALL_ALARMS.updateTime}]${ALL_ALARMS.alarmMessage}</p>
                        </td>
                      </tr>
</c:forEach>
                    </tbody>
                  </table>
                 <c:if test="{$FaultValue eq 'Y'}">
                 </c:if>
<!-- Paging : S -->
			<c:if test="${count > 0}">
				<c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}" />
				<c:set var="startPage" value="${pageGroupSize*(nowPageGroup-1)+1}" />
				<c:set var="endPage" value="${startPage + pageGroupSize-1}" />
				
				<c:if test="${endPage > pageCount}">
					<c:set var="endPage" value="${pageCount}" />
				</c:if>

				<div class="jb-center" >
			
		            <ul class="pagination">
		            <script>
		            console.log("startPage"+${startPage});
		            console.log("endPage"+${endPage});
		            </script>
		            	<c:if test="${nowPageGroup > 1}">
							<li><a href="javascript:pagingScript('${(nowPageGroup-2)*pageGroupSize+1 }','${pageSize}','boardSearchVO','/');"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<li <c:if test="${pageIndex == i}"> class="active" </c:if>><a href="javascript:pagingScript('${i}','${pageSize}','boardSearchVO','/');">${i}</a></li>
						</c:forEach>
		              
		             	 <c:if test="${nowPageGroup < pageGroupCount}">
							<li><a href="javascript:pagingScript(${nowPageGroup*pageGroupSize+1},${pageSize},'boardSearchVO','/');"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
						</c:if>
		            </ul>
         	 </div>
          
			</c:if>
<!-- Pageing : E -->
                </div>
              </div>
            </div>
          </div>
          
        </div>