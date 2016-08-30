<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
 <title>Login</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style3.css" />
</head>
<body>
		<ul>
		  <li><a class="active" href="signup.html">Resister</a></li>
		  <li><a class="active" href="registration.html">Login</a></li>
		</ul>
</body>
</html>