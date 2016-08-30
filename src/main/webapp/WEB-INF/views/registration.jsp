<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
 <!DOCTYPE html>
 <html>
    <head>
        <meta charset="UTF-8" />
        <title>Login and Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style3.css" />
		<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/animate-custom.css" />
    </head>
    <body>
        <div class="container">
            <section>				
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="${contextPath}/login" autocomplete="on" method="POST" class="form-signin"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname"> Your email or username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="User Name " />
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="Password" /> 
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
									<label><a href="#">Forgot password</a></label>
								</p>
                                <p class="login button "> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="signup.html" class="to_register">Register here!</a>
								</p>
                            </form>
                        </div>
                    </div>
            </section>
      </div>
    </body>
</html>