<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
 <head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style>


.navbar {
  background-color: #ffffff;
}
.navbar .navbar-brand {
  color: #9aadb2;
}
.navbar .navbar-brand:hover,
.navbar .navbar-brand:focus {
  color: #090909;
}
.navbar .navbar-text {
  color: #9aadb2;
}
.navbar .navbar-nav .nav-link {
  color: #9aadb2;
  border-radius: .25rem;
  margin: 0 0.25em;
}
.navbar .navbar-nav .nav-link:not(.disabled):hover,
.navbar .navbar-nav .nav-link:not(.disabled):focus {
  color: #090909;
}
.navbar .navbar-nav .nav-item.active .nav-link,
.navbar .navbar-nav .nav-item.active .nav-link:hover,
.navbar .navbar-nav .nav-item.active .nav-link:focus,
.navbar .navbar-nav .nav-item.show .nav-link,
.navbar .navbar-nav .nav-item.show .nav-link:hover,
.navbar .navbar-nav .nav-item.show .nav-link:focus {
  color: #090909;
  background-color: #a2a39f;
}
.navbar .navbar-toggle {
  border-color: #a2a39f;
}
.navbar .navbar-toggle:hover,
.navbar .navbar-toggle:focus {
  background-color: #a2a39f;
}
.navbar .navbar-toggle .navbar-toggler-icon {
  color: #9aadb2;
}
.navbar .navbar-collapse,
.navbar .navbar-form {
  border-color: #9aadb2;
}
.navbar .navbar-link {
  color: #9aadb2;
}
.navbar .navbar-link:hover {
  color: #090909;
}

@media (max-width: 575px) {
  .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #9aadb2;
  }
  .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #090909;
  }
  .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #090909;
    background-color: #a2a39f;
  }
}

@media (max-width: 767px) {
  .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #9aadb2;
  }
  .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #090909;
  }
  .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #090909;
    background-color: #a2a39f;
  }
}

@media (max-width: 991px) {
  .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #9aadb2;
  }
  .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #090909;
  }
  .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #090909;
    background-color: #a2a39f;
  }
}

@media (max-width: 1199px) {
  .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item {
    color: #9aadb2;
  }
  .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item:hover,
  .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item:focus {
    color: #090909;
  }
  .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item.active {
    color: #090909;
    background-color: #a2a39f;
  }
}

.navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item {
  color: #9aadb2;
}
.navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item:hover,
.navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item:focus {
  color: #090909;
}
.navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item.active {
  color: #090909;
  background-color: #a2a39f;
}


      td.entity{
        background-color : #E0F8F1;
        padding-left : 8px;
        padding-right : 8px;
        padding-top : 8px;
        padding-bottom : 8px;
        text-align : center;
      }
      td.context{
        padding-left : 8px;
        padding-right : 8px;
        padding-top : 8px;
        padding-bottom : 8px;
        text-align : left;
      }
      div.row{
        margin-left : auto;
        margin-right : auto;
      }

      .footer { border: 1px padding: 30px 10px; }
      .footer{ position: absolute; bottom: 0; text-align: center; width: 100% }
      .footer img { margin-right: 20px;  }
      .footer div:nth-child(2) { font: normal 9pt 굴림; color: #666;  }
      .footer div:nth-child(3) { font: normal 9pt arial; color: #aaa; }
      .container { margin-top: 30px;  }
      .mentoProfile{
        padding-top : 30px;
        padding-bottom : 20px;
        padding-left : 10px;
        padding-right : 10px;
      }
      .impossible{
        border : 1px solid #01DF3A;
        border-radius : 10px;
        text-align : center
      }
      .available{
        background-color : #81F79F;
        border : 1px solid #01DF3A;
        border-radius : 10px;
        text-align : center;
      }
      .information{
        padding-top : 10px;
        padding-bottom : 5px;
        background-color : #E6E6E6;
        border : 1px solid #D8D8D8;
        border-radius : 5px;
        text-align : left;
      }
   </style>
 </head>

 <body>

	<%@ include file="/WEB-INF/views/include/menu_for_user.jsp" %>
   
   <div>
      <img src="${R}img/topimage.jpg" class="img-responsive"/>
  </div>

  <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h1 class="my-4"><strong>멘토링</strong></h1>
          <div class="list-group">
            <a href="${R}user/menti_apli" class="list-group-item ">멘티 신청</a>
            <a href="${R}user/mento_apli" class="list-group-item">멘토 신청</a>
            <a href="${R}user/mento_list" class="list-group-item">멘토/멘티 목록</a>
            <a href="${R}user/groupBBS" class="list-group-item">멘토링 게시판</a>
            <a href="${R}user/mentoringSurvey" class="list-group-item active">설문조사</a>
          </div>
        </div>
        
        <!-- /.col-lg-3 -->
        <div class="col-md-9">
          <h1 class="my-4"><strong>설문조사</strong></h1>
          <hr/>
        <sec:authorize access="hasAnyRole({'ROLE_PROFESSOR', 'ROLE_EMPLOYEE'})">
			<div class="panel panel-warning">
			  <div class="panel-heading">
	    		<h3 class="panel-title">교수와 직원은 접근이 불가능합니다.</h3>
	  		  </div>
		      <div class="panel-body">
				 교수와 직원은 사이트 관리에서 설문조사 관리를 통해서 멘토와 멘티들의 설문조사 사이트를 설정할 수 있습니다.
			  </div>
			</div>
          </sec:authorize>
          <sec:authorize access="hasAnyRole({'ROLE_MENTO', 'ROLE_MENTI', 'ROLE_STUDCHAIRMAN'})">
          	<c:choose>
          		<c:when test="${ surveyChoose eq 0 }">
          		<div class="panel panel-warning">
				  <div class="panel-heading">
		    		<h3 class="panel-title">이번 학기에 멘토링을 참여하지 않으셨습니다.</h3>
		  		  </div>
			      <div class="panel-body">
					 멘토링을 참여하시지 않았습니다. 다음 학기에 멘토링을 하시면 설문조사를 할 수 있습니다.
				  </div>
				</div>
          		</c:when>
          		<c:when test="${ surveyChoose eq 1 }">
          		<div class="panel panel-info">
				  <div class="panel-heading">
		    		<h3 class="panel-title">${ survey.surveyType } 설문조사를 진행해주셔야 합니다.</h3>
		  		  </div>
			      <div class="panel-body">
					 아래 홈페이지를 이동하셔서 설문조사를 진행해주시길 바랍니다.(Google 계정 있어야 합니다.)
					 <hr/>
					 <a href="${survey.surveySite }" target="_blank"><button type="button" class="btn btn-info"><i class="glyphicon glyphicon-inbox"></i> 이동하기</button></a>
				  </div>
				</div>
          		</c:when>
          		<c:when test="${ surveyChoose eq 2 }">
          		<div class="panel panel-info">
          			<div class="panel-heading">
		    		<h3 class="panel-title">${ survey.surveyType } 설문조사를 진행해주셔야 합니다.</h3>
		  		  </div>
			      <div class="panel-body">
					 아래 홈페이지를 이동하셔서 설문조사를 진행해주시길 바랍니다.(Google 계정 있어야 합니다.)
					 <hr/>
					 <a href="${survey.surveySite }" target="_blank"><button type="button" class="btn btn-info"><i class="glyphicon glyphicon-inbox"></i> 이동하기</button></a>
				  </div>
				</div>
          		</c:when>
          		<c:when test="${ surveyChoose eq 3 }">
          			<c:forEach var="sv" items="${ survey }" varStatus="status">
          			<div class="panel panel-info">
	          		  <div class="panel-heading">
			    		<h3 class="panel-title">${ sv.surveyType } 설문조사를 진행해주셔야 합니다.</h3>
			  		  </div>
				      <div class="panel-body">
						 아래 홈페이지를 이동하셔서 설문조사를 진행해주시길 바랍니다.(Google 계정 있어야 합니다.)
						 <hr/>
						 <a href="${sv.surveySite }" target="_blank"><button type="button" class="btn btn-info"><i class="glyphicon glyphicon-inbox"></i> 이동하기</button></a>
					  </div>
					</div>
					<c:if test="${status.index eq 0 }"><hr/></c:if>
          			</c:forEach>
          		</c:when>
          	</c:choose>
          </sec:authorize>
          <hr/>
          <div class="row">
          	<div class="col-md-12 information">
          		<p> ⊙ 설문조사 기간은 ${ schedule.startDate } 부터 ${ schedule.endDate } 까지 입니다.</p>
          		<p> ⊙ 개인 별 설문조사 결과를 저장하기 위해서는 Google 계정이 있어야 합니다. 이 점 참고하시길 바랍니다.</p>
          		<p> ⊙ 컨퍼런스 행사에 대한 만족도 조사는 반영이 되지 않으나 SM 사업에 도움을 줄만한 컨퍼런스 행사가 있으시다면 첨가해주시면 감사하겠습니다.</p>
          		<p> ⊙ 기타 설문조사에 대해서 질문할 사항이 있으시다면 각 학과 학생 회장에게 연락 바랍니다. </p>
          	</div>
          </div>
          <!-- Introduction Row -->
        </div>
      </div>
    </div>
  
    <!-- /.container -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
 </body>
</html>