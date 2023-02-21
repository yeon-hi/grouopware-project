<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<%@ include file="/WEB-INF/views/common/head.jsp" %>
	<script>
		function getTeam() {
			var value = $("#departmentId > option:selected").val();
			console.log("value:"+value);
			let data = {deptId : value};
			console.log("getTeam() 실행");
			$.ajax({
				url: "${pageContext.request.contextPath}/employee/teamlist",
				method: "post",
				data: JSON.stringify(data)	
			}).done(function(data) {
				console.log(data);
			});
		}
	</script>
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-6 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <!-- Start Logo -->
              <div class="d-flex align-items-center justify-content-between">
      		  <img src="${pageContext.request.contextPath}/resources/assets/img/exaint_logo.png" width="100px" height="100px">
      			<a href="index2.html" class="logo d-flex align-items-center">
        		<span class="d-none d-lg-block">엑사아이엔티</span>
      			</a>
    	  	  </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-2 pb-3">
                    <h5 class="card-title text-center pb-0 fs-4 mb-3"><b>회원등록</b></h5>
                  </div>

                  <form class="row g-3 needs-validation" novalidate>
                  	<div class="row">
		                 <div class="col-9 form-floating mb-3"> 
			                  <input type="text" class="form-control" name="empId" id="floatingName" placeholder="아이디">
			                  <div class="invalid-feedback">아이디를 입력해주세요</div> 
			                  <label for="floatingName">아이디</label>
		                 </div>
		                 <div class="col-3" style="vertical-align:middle;" >
		                 	  <!-- onclick시 중복확인하는 javascript : ajax 실행 -->
		                      <button class="btn btn-secondary btn-sm" type="submit">중복확인</button>
		                 </div>
	                 </div>
	                 <div class="row">   
		                 <div class="col-9 form-floating mb-3"> 
			                  <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="비밀번호">
			                  <div class="invalid-feedback">비밀번호를 입력해주세요</div> 
			                  <label for="floatingName">비밀번호</label>
		                 </div>
	                 </div>
	                 
	                 <div class="col-23 form-floating mb-3"> 
		                  <input type="text" class="form-control" name="name" id="floatingName" placeholder="이름">
		                  <div class="invalid-feedback">이름을 입력해주세요</div> 
		                  <label for="floatingName">이름</label>
	                 </div>
	                 
	                 <div class="col-12 form-floating mb-3"> 
		                  <input type="text" class="form-control" name="phone" id="floatingPhone" placeholder="이름">
		                  <div class="invalid-feedback">번호를 입력해주세요</div> 
		                  <label for="floatingName">전화번호</label>
	                 </div>
                    
                    <div class="col-12">
                      <label for="yourBirthday" class="form-label">생년월일</label>
                      <div class="input-group has-validation" style="width:250px">
                        <input type="date" name="birth" class="form-control" id="birth"  required>
                        <div class="invalid-feedback">생년월일을 입력해주세요.</div>
                      </div>
                    </div>
                    
                     <div class="col-4" style="width:170px">
                      <label for="yourDepartment" class="form-label">부서</label>
                      <div class="input-group has-validation">
                        <select class="form-select" aria-label="Default select example" name="departmentId" onchange="javascript:getTeam()" id="departmentId">
						    <option value="선택">선택</option>
						    <c:forEach var="department" items="${departments}" varStatus="status">
						    	<option value="${departement.deptId}">${department.deptName}</option>
						    </c:forEach>
						</select>
                      </div>
                    </div>
                    
                     <div id="teamDiv" class="col-4" style="width:170px;" >
                      <label for="yourDepartment" class="form-label">팀</label>
                      <div class="input-group has-validation">
                        <select class="form-select" aria-label="Default select example" name="userdepartment" id="yourTeam">
						    <c:forEach var="team" items="${teams}" varStatus="status">
						    	<option value="${team.teamId}">${team.teamName}</option>
						    </c:forEach>
						</select>
                      </div>
                    </div>
                    
                     <div class="col-4 pb-2" style="width:140px">
                      	<label for="yourDepartment" class="form-label">직급</label>
                      	<div class="input-group has-validation">
                        	<select class="form-select" aria-label="Default select example" name="userteam" id="yourDepartment">
					    		<c:forEach var="grade" items="${grades}" varStatus="status">
						    		<option value="${grade.gradeId}">${grade.gradeName}</option>
						    	</c:forEach>
					 	 	</select>
                      	</div>
                    </div>
                    
                    <div class="col-12 form-floating mb-3"> 
		                  <input type="text" class="form-control" name="managerId" id="floatingPhone" placeholder="매니저사번">
		                  <label for="floatingName">매니저 사번</label>
	                 </div>

                  
                    <div class="col-12 mx-auto" style="width:250px;">
                      <button class="btn btn-primary w-100" type="submit" style="display:inline-block">회원등록</button>
                    </div>
                  </form>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <%@ include file="/WEB-INF/views/common/footer.jsp" %>

</body>

</html>