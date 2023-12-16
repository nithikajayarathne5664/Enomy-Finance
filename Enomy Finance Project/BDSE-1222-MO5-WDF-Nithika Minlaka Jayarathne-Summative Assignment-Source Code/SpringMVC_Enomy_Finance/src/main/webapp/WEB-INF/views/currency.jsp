<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>currency converter</title>

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


<%@ page isELIgnored="false"%>

</head>
<body>

	<div class="container">

		<%@ include file="header.jsp"%>



		<div class="row text-center">

			<h3>Converter Module</h3>
			
			<h5> From USD To Myanamr Kyats</h5>

			<form:form action="converter" method="post">
				<label>Rate: </label>
				<input type="text" name="rate" placeholder="Rate" value="2200">
				<br>
				<label>USD: </label>
				<input type="text" name="usd" placeholder="USD" value="0">
				<br>
				<input type="submit" id="submit" value="Converter">
			</form:form>



			<c:if test="${not empty result1}">

				<h1>RESULT:</h1>
				<h1>${result1} MMK</h1>
			</c:if>


		</div>


		<%@ include file="footer.jsp"%>


	</div>
</html>