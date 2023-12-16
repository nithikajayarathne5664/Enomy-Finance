<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page isELIgnored="false" %>

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/style.css" var="myCss" />
<spring:url value="/js/custom.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->


</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	


	<!-- First Container -->
	<div class="container">
	
	<%@ include file="header.jsp"%>
	
	
		<h3 class="margin">Register Here ! </h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="login"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="register_process" method="post" modelAttribute="user">
				<div class="form-group">
					<label for="fullname">Your Full Name:</label>
					<form:input path="name" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="loginname">Your Login User Name:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				
				
				<div class="form-group">
					<label for="password">Your Password:</label>
					<form:password path="password" class="form-control" required="true"/>
					
				</div>
				
				<input type="submit" value="Register" class="btn btn-primary"/>
					
			</form:form>

			</div>


			<div class="col-md-4"></div>

		</div>
		
		
		<%@ include file="footer.jsp"%>

	</div>


	

</body>
</html>
