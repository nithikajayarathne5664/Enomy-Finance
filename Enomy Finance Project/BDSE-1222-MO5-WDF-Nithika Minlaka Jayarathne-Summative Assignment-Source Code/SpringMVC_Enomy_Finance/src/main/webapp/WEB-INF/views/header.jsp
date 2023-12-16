<!-- Navbar -->

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<nav class="navbar navbar-primary">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<img
				src="/SpringMVC_Enomy_Finance/images/logo.png" width="120px" />
		</div>
<div class="collapse navbar-collapse" id="myNavbar">
		

					
					
					
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="!isAuthenticated()">
					<li><a href="login">Login</a></li>
					<li><a href="register_form">Register</a></li>
					
					
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Client')">
					 <li><a href="all_store">All Stores</a></li>
					 <li><a href="new">Add New Store</a></li>
					 <li><a href="converter">Currency conversion Module</a>
					 <li><a href="save_invest_plan">Savings and investments Module</a>
				</sec:authorize>
				
				<sec:authorize access="hasRole('Staff')">
			<!--  		 <li><a href="all_store">Store Management </a></li> -->
					 <li><a href="users">User Management</a></li>
				 <li><a href="converter">Currency conversion Module</a>
					 <li><a href="save_invest_plan">Savings and investments Module</a>	 
				</sec:authorize>
				
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn btn-primary"></input>
					</form>
					</li>
				</sec:authorize>
				



			</ul>
		</div>
	</div>
</nav>
