<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>

<head>
	<%@ include file="/WEB-INF/views/common/head.jsp" %>
	<link href="${pageContext.request.contextPath}/resources/assets/css/mobiscroll.javascript.min.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/resources/assets/js/mobiscroll.javascript.min.js"></script>
</head>
	<body>
		<script src="${pageContext.request.contextPath}/resources/assets/js/file.js"></script>
		
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<!-- =========================sideber=============================== -->
		<aside id="sidebar" class="sidebar">
			<ul class="sidebar-nav" id="sidebar-nav">
				<!--휴가 작성 -->
				<li class="nav-item" onclick="location.href='${pageContext.request.contextPath}/vacation/form'">
					<a class="btn btn-primary" type="button" href="#" style="width:100%">
					    <i class="bi bi-pencil-square"></i> 
					    <span>휴가 작성</span>
				  	</a>
				</li>
				<!--근무 현황 -->
				<li class="nav-item"  onclick="location.href='${pageContext.request.contextPath}/attendance/status/info'">
					<a class="nav-link collapsed" href="#">
				    	<i class="bi bi-eye"></i>
				    	<span>근무 현황</span>
				  	</a>
				</li>
			
				<!--부서 근무 현황 -->
				<li class="nav-item" onclick="location.href='${pageContext.request.contextPath}/attendance/dept'">
					<a class="nav-link collapsed" data-bs-target="#approval-nav" data-bs-toggle="collapse" href="#">
				    	<i class="bi bi-clipboard2-check"></i><span>부서 근무 현황</span>
				  	</a>
				</li>
			
				<!--내 휴가 문서 -->
				<li class="nav-item" onclick="location.href='${pageContext.request.contextPath}/vacation/my'" >
					<a class="nav-link collapsed" data-bs-target="#document2-nav" data-bs-toggle="collapse" href="#">
				    	<i class="bi bi-eye"></i>
				    	<span>내 휴가</span>
					</a>
					
				</li>
			
				<!--휴가 결제 문서 -->
				<li class="nav-item" onclick="location.href='${pageContext.request.contextPath}/vacation/document'"  >
					<a class="nav-link collapsed" data-bs-target="#document1-nav" data-bs-toggle="collapse" href="#">
				    	<i class="bi bi-eye"></i>
				    	<span>휴가 결제 문서</span>
					</a>
				</li>
			</ul>
		</aside>
		<!-- ======================================End Sidebar ============================================ -->
	  	<!-- ======================================Main==================================================== -->
		<main id="main" class="main">
			<!-- PageTitle -->
			<div class="pagetitle">
			  <h1>휴가 신청</h1>
			  <nav>
			    <ol class="breadcrumb">
			      <li class="breadcrumb-item"><a href="#">근태관리</a></li>
			      <li class="breadcrumb-item">휴가 신청</li>
			    </ol>
			  </nav>
			</div>
			
			<!-- PageContent -->
			<section class="section">
				<div class="row">
					<div class="col-lg-12">
						<table id="vertical-1" 
							style="width:50%; box-shadow: 0px 0 30px rgb(1 41 112 / 10%);border: none;  border-radius: 5px;">
				            <tr style="height: 50px; vertical-align:middle; ">
				                <th class="ps-2" style="background-color:#004389; width:10%; color:white">잔여 휴가 일수</th>
				                <td class="ps-2" style="width: 15%;background-color:white">18일</td>
				                <th class="ps-2" style="background-color:#004389; width:10%;color:white">대체 연차</th>
				                <td class="ps-2" style="width: 15%;background-color:white">출산(90일)</td>
				            </tr>
						</table>
						<div class="card mt-3">
							<div class="card-body m-4">
								
								<!-- Form -->
								<form>
									<!-- 제출하기 Button -->
									<div class="row mb-3">
										<div class="col-sm-12 d-flex justify-content-end">
											<button type="submit" class="btn btn-primary">제출하기</button>
										</div>
									</div>
									
									<!-- 휴가 -->
									<div class="row mb-3">
										<label class="col-sm-2 col-form-label"><b>휴가</b></label>
										<div class="col-sm-6">
											<script>
												$(function (){
													$('input[type=radio][name=tp_cd]').on('click', function() {
														var chkValue = $('input[type=radio][name=tp_cd]:checked').val();
														if (chkValue == '1') {
															$('#POP1').css('display', 'block');
															$('#POP2').css('display', 'none');
															$('#POP3').css('display', 'none');
														} else if(chkValue == '2') {
															$('#POP1').css('display', 'none');
															$('#POP2').css('display', 'block');
															$('#POP3').css('display', 'none');
														}
														else if(chkValue == '3') {
															$('#POP1').css('display', 'none');
															$('#POP2').css('display', 'none');
															$('#POP3').css('display', 'block');
														}
													});
												});
											</script>
											<input type="radio" name="tp_cd" value="1" checked="checked"> 정기휴가
											<input type="radio" name="tp_cd" value="2" > 경조사
											<input type="radio" name="tp_cd" value="3" > 공가
										</div>
									</div>
									
									<!-- 휴가 종류 -->
									<div class="row mb-3">
										<label class="col-sm-2 col-form-label"><b>휴가 종류</b></label>
									 
										<div id="POP1" class="col-sm-4">
											<select class="form-select" aria-label="Default select example">
												<option value="0">연차</option>
												<option value="1">오전 반차</option>
												<option value="2">오후 반차</option>
											</select>
										</div>
									  
										<div id="POP2" style="display: none;" class="col-sm-4">
											<select class="form-select" aria-label="Default select example">
												<option value="0">결혼</option>
												<option value="1">출산</option>
												<option value="2">사망</option>
											</select>
										</div>
									
										<div id="POP3" style="display: none;"  class="col-sm-4">
											<select class="form-select" aria-label="Default select example">
												<option value="0">병가</option>
												<option value="1">예비군</option>
											</select>
										</div>
									</div>
									
									<script >
										function input(){
										    const dday = document.querySelector("#input_date").value;
										    console.log(dday);
										}
									</script>
									<!-- 날짜 선택 -->
									<div class="row mb-3">
											
											<label for="text" class="col-sm-2 col-form-label"><b>날짜 선택</b></label>
											<div class="col-sm-10">
 												<label class="m-0">
												    Center
												    <input id="demo-center" mbsc-input data-input-style="outline" data-label-style="stacked" placeholder="Please select..." />
												</label>
												
												<div class='parent ice'>

												  <div>1</div>
												  <div>Trial</div>
											
												  
												</div>
												
												<div class='parent ice'>

												  <div>2</div>
												  <div>Trial</div>
											
												 
												</div>
												
												<div class='parent ice'>

												  <div>3</div>
												  <div>Trial</div>
											
												  
												</div>
												
												<div class='parent ice'>
			 									
												  <div>4</div>
												  <div>Trial</div>
											
												 
												</div>
												
												
												<input type='button' value='자식노드 삭제' onclick='remove_children()' />
												
												<script>
													function remove_children() {
														let element = $("div:contains('Trial')"); 
														let count = element.length;
														console.log(element);
														console.log(count);
													
														$('div').filter(":contains('Trial')")[count-1].remove();
														
														
														/* while(typeof element !='undefinded'){
															console.log(element);
															console.log(count);
															element = $('div').filter(":contains('Trial')");
															count = element.length;
															$('div').filter(":contains('Trial')")[count-1].remove();
															
															
														} */
														
													}
													
													mobiscroll.setOptions({
													    theme: 'ios',
													    themeVariant: 'light'
													});
	
													mobiscroll.datepicker('#demo-center', {
													    controls: ['calendar'],
													    selectMultiple: true,
													    selectCounter: true,
													    invalid: [
															{
																recurring: {
																	repeat: 'yearly',
																	day: 24,
																	month: 12
																}
															},
															{
																recurring: {
																	repeat: 'yearly',
																	day: 31,
																	month: 12
																}
															},
															{
																recurring: {
																	repeat: 'weekly',
																	weekDays: 'SA,SU'
																}
															}
														]
													    
													});
													
												</script>
											</div>
									</div>
									
									<!-- 사유 -->
									<div class="row mb-3">
										<label for="text" class="col-sm-2 col-form-label"><b>사유</b></label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									
									<!-- 첨부파일 -->
									<div class="row mb-3">
                						<label for="text" class="col-sm-2 col-form-label"><b>파일선택</b></label>	
											<div class="insert col-sm-10">
												<input id="input-file" type="file"  onchange="addFile(this);" style="display:none" multiple />
											    <label class="btn btn-secondary btn-sm mb-2 " for="input-file">파일선택</label>
											    <div class="file-list"></div>
											</div>
					                </div>
					                
									<!-- 결재선 -->
									<div class="row mb-3">
										<label for="inputText" class="col-sm-2 col-form-label"><b>결재선</b></label>
										<div class="col-sm-10">
											<!-- 결재선 선택 Button -->
											<div class="row mb-3">
												<div class="col-sm-10">
													<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verticalycentered">
                    								결재선 선택
              										</button>
												</div>
											</div>
											
										
										</div>
									</div>
									<%@ include file="/WEB-INF/views/vacation/form_modal.jsp" %>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main><!-- ======================================Main==================================================== -->
	  	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>