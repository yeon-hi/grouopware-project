<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>

<head>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<style>
td.form10b {
	background-color: #E9EFFE;
}

td.form10c {
	background-color: #c2d2f9;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<%@ include file="/WEB-INF/views/vacation/vacation_sidebar.jsp" %>	
	<!-- ======================================Main==================================================== -->
	<main id="main" class="main"> <!-- 페이지 제목 -->
	<div class="pagetitle">
		<h1>휴가 문서</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.html">근태관리</a></li>
				<li class="breadcrumb-item"><a href="index.html">휴가 문서</a></li>
			</ol>
		</nav>
	</div>

	<!-- 페이지 내용 -->
	<section class="section">
		<div class="row">
			<div class="col-lg-10">
				<div class="card mt-2">
					<div class="card-body mt-3" style="height: 800px">

						<!-- <div class="row mb-3">
						<div class="col-sm-12 d-flex justify-content-end">
                  			<button type="submit" class="btn btn-primary" name="isApproved" style="margin-right: 8px" value="y">승인</button>
                    		<button type="submit" class="btn btn-danger" name="isApproved" value="n">반려</button>
                  		</div>
					</div> -->

						<%-- <div class="row d-flex justify-content-end">
				        <div class="col-lg-5" >
					        <table class="line table table-bordered" style="height: 120px; border:black;">
					        	<thead>
					        	</thead>
					        	<tbody>
									<tr>
										<th style="background-color:#E9EFFE; color:black; width:30px;" rowspan="3">승인</th>
				        					<td style="height: 25%; padding:0px; margin:0px;">${approvalLine.gradeName}</td>
				        					<td style="height: 50%;">${approvalLine.empName}</td>
				        					<td style="height: 25%; padding:0px; margin:0px;">
				        				</td>
				        			</tr>
					        	</tbody>
					        </table>
				        </div>
			        </div> --%>

						<div class="row d-flex justify-content-center px-5">
							<div class="col-12">
								<table style="border-collapse: collapse;" 1" cellspacing="0"
									cellpadding="0" bordercolor="#000000 "
									class="form10 table table-bordered mt-5">

									<tbody style='vertical-align: middle'>
										<tr style="border: 2px solid #d0d4d9">
											<td height="50" colspan="3" align="center" class="form10c">결재
												담당자</td>
											<td align="center" class="form10">이지호(부장)<br>
											<hr>공공사업 / 솔루션개발팀
											</td>
											<td align="center" class="form10c">승인</td>
											<td align="center" class="form10">대기</td>
										</tr>
										<tr>
											<td height="50" colspan="3" align="center" class="form10b">문서번호</td>
											<td align="center" class="form10">${vacationDetail.vacationId}</td>
											<td align="center" class="form10b">작성일자</td>
											<td align="center" class="form10">${vacationDetail.writeDate}</td>
										</tr>

										<tr>
											<td height="50" colspan="3" align="center" class="form10b">이름</td>
											<td align="center" class="form10">${vacationDetail.name}</td>
											<td align="center" class="form10b">직급</td>
											<td align="center" class="form10">차장</td>
										</tr>

										<tr>
											<td height="50" colspan="3" align="center" class="form10b">부서</td>
											<td width="188" align="center" class="form10">${vacationDetail.deptName}</td>
											<td width="79" align="center" class="form10b">팀</td>
											<td width="182" align="center" class="form10">${vacationDetail.teamName}</td>

										</tr>
										<tr>
											<td width="38" rowspan="3" align="center" class="form10b">신<br>
												청<br> 내<br> 용
											</td>
											<td width="40" rowspan="2" align="center" class="form10b">휴<br>
												가<br> 신<br> 청<br>서
											</td>

											<td width="103" height="50" align="center" class="form10b">종류</td>
											<td align="left" class="form10">${vacationDetail.vacationName}</td>
											<td width="103" height="50" align="center" class="form10b">일수</td>
											<td align="left" class="form10">총
												${vacationDetail.countDay}일</td>

										</tr>
										<tr>
											<td height="50" align="center" class="form10b">일정</td>
											<td colspan="3" align="left" class="form10">
												<table width="100%" border="0" align="center"
													cellpadding="0" cellspacing="0" bordercolor="#ffffff"
													class="form2" style="border-collapse: collapse;">
													<tbody>
														<c:forEach var="vacationDate" items="${vacationDate}">
															<tr>
																<td width="33%" align="left" class="form2">
																	<div style="padding: 3px;">${vacationDate.startDateStr}</div>
																</td>

																<td width="6%" align="left" class="form2">~</td>

																<td width="33%" align="left" class="form2">
																	<div style="padding: 3px; cursor: hand;">${vacationDate.endDateStr}</div>
																</td>
																<td width="25%" align="left" class="form2">
															</tr>
														</c:forEach>


													</tbody>
												</table>
											</td>
										</tr>

										<tr>
											<td height="200" colspan="2" align="center" bgcolor="#D9E2F3"
												class="form10b">신청사유<br>
											</td>
											<td colspan="3" align="left" valign="top" class="form10">
												<div id="as2" style="padding: 3px;">${vacationDetail.content}</div>
											</td>
										</tr>
										<tr>
											<td height="50" colspan="3" align="center" class="form10b"
												style="cursor: hand;">첨부파일</td>
											<td colspan="3" align="left" class="form10">
												<div id="files" style="padding: 3px;"></div>
											</td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>


					</div>

				</div>
				<!-- End Card -->
			</div>
		</div>
	</section>
	</main>
	<!-- ======================================Main==================================================== -->

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>