<%-- <%@page import="org.omg.CORBA.Request"%>
<%@page import="org.springframework.web.servlet.support.RequestContext"%> --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/a2z.css" />
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/animate-custom.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
    $("select").change(function(){
        $(this).find("option:selected").each(function(){
            if($(this).attr("value")=="actors"){
            	 $(".box").not(".backSupport").hide();
 				$(".box").not(".agency").hide();
 				$(".actor").show();
            }
            else if($(this).attr("value")=="backSupports"){
            	$(".box").not(".actor").hide();
				$(".box").not(".agency").hide();
				 $(".backSupport").show();
                
            }
            else if($(this).attr("value")=="regAgencys"){
            	$(".box").not(".backSupport").hide();
                $(".box").not(".actor").hide();
				 $(".agency").show();
            }
            else if($(this).attr("value")==""){
			    $(".box").not(".backSupport").hide();
                 $(".box").not(".actor").hide();
                 $(".box").not(".agency").hide();
            }
        });
    }).change();
});


	function register_complete() {
		$("input[name='actorType']").val('');
		$("input[name='backSupportTeam']").val('');
		$("input[name='regAgency']").val('');
	
		var proffession = $("#profession").val();
		$("input[name='profession']").val(
		$("select[name='profession']").val());
	
		if (proffession == 'actors') {
			$("input[name='actorType']").val(
			$("select[name='actorType']").val());
			$("input[name='backSupportTeam']").hide();
			$("input[name='regAgency']").hide();
		} else if (proffession == 'backSupports') {
			$("input[name='backSupportTeam']").val(
			$("select[name='backSupportTeam']").val());
			$("input[name='actorType']").hide();
			$("input[name='regAgency']").hide();
		} else if (proffession == 'regAgencys') {
			$("input[name='regAgency']").val(
			$("select[name='regAgency']").val());
			$("input[name='actorType']").hide();
			$("input[name='backSupportTeam']").hide();
		}
		window.location.href = '#toregister';
		}

</script>
</head>
<body>
	<div class="container">
		<section>
			<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
				<div id="login" class="animate form" data-onsuccess="onSignIn">
					<form name="myForm" action="register" autocomplete="on"
						method="POST" class="form-signin">
						<h1>Sign Up</h1>
						<p>
							<label>Register As a</label> 
							    <select name="profession" id="profession">
								<option value=""> -- Select Your profession -- </option>
								<option value="actors">Actor/Actress/Model</option>
								<option value="backSupports">Back Support Team</option>
								<option value="regAgencys">Registration Of Agency</option>
							</select>
						</p>
						
						<p class="actor box">
							<select name="actorType">
								<option>Lead Actor</option>
								<option>Lead Actress</option>
								<option>Supporting Actor</option>
								<option>Supporting Actress</option>
								<option>Modelling</option>
							</select>
						</p>
						
						<p class="backSupport box">
							<select name="backSupportTeam">
								<option>Director</option>
								<option>Producer</option>
								<option>Distributor</option>
								<option>Story Writer</option>
								<option>Music Director</option>
								<option>Lyrist</option>
								<option>Playback Singer</option>
								<option>Light Dept</option>
								<option>Hair and Make Up</option>
								<option>Costumer Designer</option>
								<option>Editor</option>
								<option>Stunt Guru</option>
								<option>Screen Play Writer</option>
								<option>Cinema Autograpgher</option>
								<option>Art Director</option>
								<option>Choreographer</option>
								<option>Script Writer</option>
								<option>Production Manager</option>
								<option>Public</option>
							</select>
						</p>
						<p class="agency box">
							<select name="regAgency">
								<option>Studios</option>
								<option>VFX - Graphics Companies</option>
								<option>Jr. Artists Agency</option>
								<option>Dance Troop Agency</option>
								<option>Carry Van</option>
								<option>Poster,Banner Design & Printing</option>
								<option>Equipments</option>
								<option>Water Supplleir for Articial Rain</option>
								<option>Vehicles</option>
								<option>Catering</option>
								<option>Threatres</option>
								<option>Other Agencies</option>
							</select>
						<p>
					</form>
					<button class="button1 button1" onclick="window.location.href='social/facebook/signin'">Facebook</button>
					<button class="button2 button2" onclick="window.location.href='social/google/signin'">Google+</button>
					<button class="button3 button3" onclick="register_complete()">Email</button>
					
					 <p class="change_link">Already a member ? 
						<a href="registration.html" class="to_register"> Go and log in ! </a>
					</p>
					
				</div>

				<div id="register" class="animate form">

					<form action="${contextPath}/saveUser" autocomplete="on"
						method="POST" modelAttribute="userForm" class="form-signin">
						<h1>Register</h1>
						<%-- <input type="hidden" name="profession" value="${profession}">
						<input type="hidden" name="actorType" value="${actorType}">
						<input type="hidden" name="backSupportTeam" value="${backSupportTeam}">
						<input type="hidden" name="regAgency" value="${regAgency}"> --%>
						<p>
							<label for="usernamesignup" class="firstName">First Name</label>
							<input id="usernamesignup" name="firstName" required="required"
								type="text" placeholder="First Name" /> <label
								for="usernamesignup" class="lastName">Last Name</label> <input
								id="usernamesignup" name="lastName" required="required"
								type="text" placeholder="Last Name" />
						</p>
						<p>
							<label for="usernamesignup" class="uname">Your username</label> <input
								id="usernamesignup" name="username" required="required"
								type="text" placeholder="User Name" />
						</p>
						
						<p>
							<label for="professionCat" class="professionCat">Profession Category</label>
							<input type="text" name="profession" id='profession' value="${profession}">
						</p>
						
						<p>
							<label for="profession" class="profession">Profession</label>
							<input type="text" name="actorType" id='actorType' value="${actorType}">
							<p><input type="text" name="backSupportTeam" id='backSupportTeam' value="${backSupportTeam}"></p>
							<p><input type="text" name="regAgency" id='regAgency' value="${regAgency}"></p>
						</p>
						
						
						
						<p>
							<label for="emailsignup" class="email"> Your email</label> <input
								id="emailsignup" name="email" required="required" type="email"
								placeholder="Enter your email" />
						</p>
						<p>
							<label for="mobileNo" class="mobile">Your Mobile No</label> <input
								id="mobileNo" name="mobile" required="required" type="text"
								placeholder="Enter your Mobile No" />
						</p>
						<p>
							<label for="passwordsignup" class="youpasswd">Your
								password </label> <input id="passwordsignup" name="password"
								required="required" type="password" placeholder="Enter your password" />
						</p>
						<p>
							<label for="passwordsignup_confirm" class="youpasswd">Please
								confirm your password </label> <input id="passwordsignup_confirm"
								name="passwordConfirm" required="required" type="password"
								placeholder="Enter your Re-password" /> 
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</p>
						<p class="signin button">
							<input type="submit" id="submit" value="Sign up" />
						</p>
						<!-- <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p> -->
					</form>
				</div>
			</div>
		</section>
	</div>
</body>
</html>
