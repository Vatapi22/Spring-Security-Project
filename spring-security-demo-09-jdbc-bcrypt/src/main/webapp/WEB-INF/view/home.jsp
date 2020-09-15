<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<title>Welcome to home page</title>
</head>
<body>
<h1>Welcome to the home page...</h1><hr>
<h2>User	:	<security:authentication property="principal.username"/></h2>
<h2>Role	:	<security:authentication property="principal.authorities"/></h2>

<hr>
<security:authorize access="hasRole('MANAGER')">
<p>
	<a href="${pageContext.request.contextPath }/leaders">Leadership Meeting</a>
	(Only for Managers)
</p>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
<p>
	<a href="${pageContext.request.contextPath }/systems">Admin Meeting</a>
	(Only for Admins)
</p>
	<hr> 
</security:authorize>
<form:form action="${pageContext.request.contextPath }/logout" method="POST">
	<input type="submit" value = "Logout" >

</form:form>

</body>
</html>