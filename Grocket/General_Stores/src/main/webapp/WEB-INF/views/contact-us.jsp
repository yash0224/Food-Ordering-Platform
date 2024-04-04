<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Grocket | Contact </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
	<style type="text/css">
		
	</style>
</head>
<body>
	<c:choose>
	<c:when test="${not empty email}">
		<jsp:include page="layouts/user-navigation.jsp"></jsp:include>
		<jsp:include page="layouts/user-menu.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="layouts/navigation-bar.jsp"></jsp:include>
		<jsp:include page="layouts/menu.jsp"></jsp:include>
	</c:otherwise>
</c:choose>
	<!-- banner-2 -->

	</div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="${pageContext.request.contextPath}/home">Home</a>
						<i>|</i>
					</li>
					<li>Contact Us</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
	<!-- contact -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>C</span>ontact
				<span>U</span>s
			</h3>
			<!-- //tittle heading -->
			
			<!-- form -->
			<form id="form" method="post">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
					<c:choose>
						<c:when test="${not empty email}">
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Name</label>
							<input type="text" class="form-control" placeholder="Name" disabled="disabled" value="${name}" name="name" id="name" required="required">
							<p class="error" id="error_name"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">E-mail</label>
							<input type="email" class="form-control" placeholder="Email" disabled="disabled" value="${email}" name="email" id="email" required="required">
							<p class="error" id="error_email"></p>
						</div>
						</c:when>
						<c:otherwise>
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Name</label>
							<input type="text" class="form-control" placeholder="Name" name="name" id="name" required="required">
							<p class="error" id="error_name"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">E-mail</label>
							<input type="email" class="form-control" placeholder="Email" name="email" id="email" required="required">
							<p class="error" id="error_email"></p>
						</div>
						</c:otherwise>
					</c:choose>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Subject</label>
							<input type="text" class="form-control" placeholder="Subject" name="subject" id="subject" required="required">
							<p class="error" id="error_subject"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Message</label>
							<textarea name="message" class="form-control" placeholder="Message" cols="45" rows="5" id="message" required="required"></textarea>
							<p class="error" id="error_message"></p>
						</div>
					</div>
					<div class="right-w3l col-md-6">
						<input type="button" class="btn btn-primary form-control" id="submit" value="Submit">
					</div>
				</div>
			</form>
			<!-- //form -->
			<br>
					<center><div id="success" style="color: green;font-weight: bold;font-size: 15px;"></div></center>
					<center><div id="error" style="color: green;font-weight: bold;font-size: 15px;"></div></center>
  <center>
  <img src="${pageContext.request.contextPath}/images/loader.gif" alt="loader" style="width: 150px;height: 120px;" id="loader">
  </center>
		</div>
	</div>
	<!-- //contact -->
	<!---728x90--->
	<!-- map -->

	<!-- //map -->	
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/contact.js"></script>
</body>
</html>