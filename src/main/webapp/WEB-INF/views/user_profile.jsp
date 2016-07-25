<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
 
 <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style3.css" />
<script type="text/javascript">
</script>
<section>
	<!-- Page content-->
<div class="content-wrapper">
	<div class="content-heading">
		<span data-localize="setting.pagename"></span>
	</div>
	<div class="row">
		<!-- START Settings -->
<div class="col-lg-12">
	<div class="panel">
		<div role="tabpanel">
			<!-- Nav tabs-->
<!-- Tab panes-->
<div class="tab-content">
	<div id="personalDetails" role="tabpanel"
		class="tab-pane fade in active">
		<div class="row">
			<div class="col-lg-12">
				<div class="col-lg-6">
					<div class="panel panel-default">
						<h3 class="text-thin text-center"
							data-localize="setting.tab_Account.pagename"></h3>
						<h5 class="text-muted text-thin text-center"
							data-localize="setting.tab_Account.youcanmakechangestoyourprofilehere"></h5>
						<div class="row">
							<div class="col-lg-12">
								<div class="col-lg-12">
									<form role="form" data-parsley-validate="" novalidate=""
										class="mb-lg" id="accountSettingsForm"
										name="accountSettingsForm">
										<input type="hidden" id="hdfdob" name="dob" value="${loginUserProfile.user.userPersonalInfo.dob}" />
										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.userName"></label>
												<input id="userName" name="username"
													onChange="this.value=this.value.toLowerCase();"
													class="form-control col-lg-6" required minlength="2"
													maxlength="50"
													value="${loginUserProfile.user.username}">
											</div>
										</fieldset>
										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.firstName">First
													Name</label> <input id="firstName" name="firstName"
													class="form-control" required minlength="2"
													maxlength="50"
													value="${loginUserProfile.user.firstName}">
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.lastName">Last
													Name</label> <input id="lastName" name="lastName"
													class="form-control" required minlength="2"
													maxlength="50"
													value="${loginUserProfile.user.lastName}">
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.dateofBirth">Date
													of Birth</label>
												<div id="datetimepicker1" class="input-group date">
													<span id="txtdobLable"
														class="form-control txtDobFocus">${loginUserProfile.user.userPersonalInfo.fdob}</span>
													<span class="input-group-addon txtDob"> <span
														class="fa fa-calendar"></span>
													</span>
												</div>
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.eMail">Email</label>
												<input id="emailId" name="emailId"
													data-parsley-type="email"
													data-parsley-required-message="Please enter a valid email address."
													data-parsley-type-message="Please enter a valid email address."
													class="form-control" required minlength="2"
													maxlength="100"
													value="${loginUserProfile.user.emailId}">
											</div>
										</fieldset>
										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.gender">Gender</label>
												<label for="" class="text-muted">&nbsp;</label>
												<c:if
													test="${loginUserProfile.user.userPersonalInfo.gender=='Male'}">
													<label class="radio-inline c-radio"> <input
														type="radio" name="gender" value="Male" checked>
														<span class="fa fa-circle"></span>Male
													</label>
													<label class="radio-inline c-radio"> <input
														type="radio" name="gender" value="Female"> <span
														class="fa fa-circle"></span>Female
													</label>
												</c:if>
												<c:if
													test="${loginUserProfile.user.userPersonalInfo.gender=='Female'}">
													<label class="radio-inline c-radio"> <input
														type="radio" name="gender" value="Male"> <span
														class="fa fa-circle"></span>Male
													</label>
													<label class="radio-inline c-radio"> <input
														type="radio" name="gender" value="Female" checked>
														<span class="fa fa-circle"></span>Female
													</label>
												</c:if>
												<c:if
													test="${loginUserProfile.user.userPersonalInfo.gender!='Male' && loginUserProfile.user.userPersonalInfo.gender!='Female'}">
													<label class="radio-inline c-radio"> <input
														type="radio" name="gender" value="Male"> <span
														class="fa fa-circle"></span>Male
													</label>
													<label class="radio-inline c-radio"> <input
														type="radio" name="gender" value="Female" checked>
														<span class="fa fa-circle"></span>Female
													</label>
												</c:if>
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.department">Department</label>
												<span class="form-control" readonly="readonly">${loginUserProfile.department}</span>
											</div>
											<%-- <div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.serviceDate">Service
													Date</label> <span class="form-control" readonly="readonly">${loginUserProfile.serviceDate}</span>
											</div> --%>
										</fieldset>
										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.address">Address</label>
												<textarea name="address" id="accountaddress"
													class="form-control" maxlength="500"
													style="overflow: auto; resize: none" rows="4"
													aria-invalid="false">${loginUserProfile.user.userPersonalInfo.address}</textarea>
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.country">Country</label>
												<select name="country" class="form-control m-b">
													<c:forEach items="${country}" var="country">
														<c:choose>
															<c:when
																test="${country.countryCode == loginUserProfile.user.userPersonalInfo.country}">
																<option value="${country.countryCode}"
																	selected="selected">${country.countryName}</option>
															</c:when>
															<c:otherwise>
																<option value="${country.countryCode}">${country.countryName}
																</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</select>
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.state">State</label>
												<input id="state" name="state" type="text"
													class="form-control"
													value="${loginUserProfile.user.userPersonalInfo.state}">
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.city">City</label>
												<input id="city" name="city" type="text"
													class="form-control"
													value="${loginUserProfile.user.userPersonalInfo.city}">
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.interests">Interests</label>
												<input id="interests" name="interests" type="text"
													class="form-control"
													value="${loginUserProfile.user.userPersonalInfo.interests}">
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted"
													data-localize="setting.tab_Account.zipcode">Zipcode</label>
												<input id="zipPostalCode" name="zipPostalCode"
													type="text" class="form-control"
													value="${loginUserProfile.user.userPersonalInfo.zipPostalCode}">
											</div>
										</fieldset>
										<fieldset>
											<label for="" class="text-muted"
												data-localize="setting.tab_Account.aboutme">About
												me</label>
											<textarea name="aboutMe" id="accountAboutme"
												class="form-control" maxlength="500"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false">${loginUserProfile.user.userPersonalInfo.aboutMe}</textarea>
										</fieldset>
										<fieldset>
											<button type="submit"
												class="mb-sm btn btn-success pull-right"
												data-localize="Button.Update">Update</button>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
						<!-- Extra items-->
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-default">
						<h3 class="text-center text-thin  text-center"
							data-localize="setting.tab_PersonalDetails.pagename">Personal
							Information</h3>
						<div class="row">
							<div class="col-lg-12">
								<div class="col-lg-12">
									<form role="form" data-parsley-validate="" novalidate=""
										id="personal_details_form" name="personal_details_form">
										<fieldset>
											<div class="form-group">
												<label class="col-sm-5 control-label"
													data-localize="setting.tab_PersonalDetails.height">Height</label>
												<div class="col-sm-10">
													<div class="row">
														<c:choose>
															<c:when
																test="${loginUserProfile.user.userPreferenceses.heightUnit == 'CM'}">
																<div class="col-md-3" id="divheightcm">
																	<input type="text" id="heightcm" placeholder="cm"
																		required class="form-control"
																		data-parsley-type="number" min="30" max="333"
																		value="${loginUserProfile.user.bodyInfo.height}">
																</div>
																<div class="col-md-3 hide" id="divheightfeet">
																	<input type="text" id="heightfeet"
																		placeholder="ft" required class="form-control"
																		data-parsley-type="integer" min="1" max="10"
																		value="${loginUserProfile.user.bodyInfo.heightFeet }">
																</div>
																<div class="col-md-3 hide" id="divheightinch">
																	<input type="text" id="heightinch"
																		placeholder="in" required class="form-control"
																		data-parsley-type="integer" min="0" max="11"
																		value="${loginUserProfile.user.bodyInfo.heightInch }">
																</div>
																<div class="col-md-5">
																	<select id="height-unit" name="height-unit"
																		class="form-control m-b">
																		<option value="FEET">Feet-Inch</option>
																		<option value="CM" selected="selected">cm</option>
																	</select>
																</div>
															</c:when>
															<c:otherwise>
																<div class="col-md-3 hide" id="divheightcm">
																	<input type="text" id="heightcm" placeholder="cm"
																		min="30" max="333" required class="form-control"
																		data-parsley-type="number"
																		value="${loginUserProfile.user.bodyInfo.height}">
																</div>
																<div class="col-md-3" id="divheightfeet">
																	<input type="text" id="heightfeet"
																		placeholder="ft" min="1" max="10" required
																		class="form-control" data-parsley-type="integer"
																		value="${loginUserProfile.user.bodyInfo.heightFeet }">
																</div>
																<div class="col-md-3" id="divheightinch">
																	<input type="text" id="heightinch"
																		placeholder="in" min="0" max="11" required
																		class="form-control" data-parsley-type="integer"
																		value="${loginUserProfile.user.bodyInfo.heightInch }">
																</div>
																<div class="col-md-5">
																	<select id="height-unit" name="height-unit"
																		class="form-control m-b">
																		<option value="FEET" selected="selected">Feet-Inch</option>
																		<option value="CM">cm</option>
																	</select>
																</div>
															</c:otherwise>
														</c:choose>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-5 control-label"
													data-localize="setting.tab_PersonalDetails.strideLength">Stride
													Length</label>
												<div class="col-sm-10">
													<div class="row">
														<c:choose>
															<c:when
																test="${loginUserProfile.user.userPreferenceses.heightUnit == 'CM'}">
																<div class="col-md-3" id="divlengthcm">
																	<input type="text" id="lengthcm" placeholder="cm"
																		min="1" max="100" required class="form-control"
																		data-parsley-type="number"
																		value="${loginUserProfile.user.bodyInfo.strideLength}">
																</div>
																<div class="col-md-3 hide" id="divlengthfeet">
																	<input type="text" id="lengthfeet"
																		placeholder="ft" min="0" max="3" required
																		class="form-control" data-parsley-type="integer"
																		value="${loginUserProfile.user.bodyInfo.strideLengthFeet}">
																</div>
																<div class="col-md-3 hide" id="divlengthinch">
																	<input type="text" id="lengthinch"
																		placeholder="in" min="0" max="11" required
																		class="form-control" data-parsley-type="integer"
																		value="${loginUserProfile.user.bodyInfo.strideLengthInch}">
																</div>
															</c:when>
															<c:otherwise>
																<div class="col-md-3 hide" id="divlengthcm">
																	<input type="text" id="lengthcm" placeholder="cm"
																		min="1" max="100" required class="form-control"
																		data-parsley-type="number"
																		value="${loginUserProfile.user.bodyInfo.strideLength}">
																</div>
																<div class="col-md-3" id="divlengthfeet">
																	<input type="text" id="lengthfeet"
																		placeholder="ft" min="0" max="3" required
																		class="form-control" data-parsley-type="integer"
																		value="${loginUserProfile.user.bodyInfo.strideLengthFeet}">
																</div>
																<div class="col-md-3" id="divlengthinch">
																	<input type="text" id="lengthinch"
																		placeholder="in" min="0" max="11" required
																		class="form-control" data-parsley-type="integer"
																		value="${loginUserProfile.user.bodyInfo.strideLengthInch}">
																</div>
															</c:otherwise>
														</c:choose>
													</div>
												</div>
											</div>
											
										</fieldset>
										<fieldset>
											<div class="form-group">
												<label class="col-sm-5 control-label"
													data-localize="setting.tab_PersonalDetails.weight">Weight</label>
												<div class="col-sm-10">
													<div class="row">
														<div class="col-md-3">
															<input type="text" id="Weightkglbs" min="10"
																max="1000" placeholder=""
																data-parsley-type="number" required
																class="form-control"
																value="${loginUserProfile.user.bodyInfo.displayWeight}">
														</div>
														<div class="col-md-4">
															<select id="weight_unit" name="weight_unit"
																class="form-control m-b">
																<c:choose>
																	<c:when
																		test="${loginUserProfile.user.userPreferenceses.weightUnit == 'LBS'}">
																		<option value="LBS" selected="selected">lbs</option>
																		<option value="KG">kg</option>
																	</c:when>
																	<c:otherwise>
																		<option value="LBS">lbs</option>
																		<option value="KG" selected="selected">
																			kg</option>
																	</c:otherwise>
																</c:choose>
															</select>
														</div>

													</div>
												</div>
											</div>
										</fieldset>
										<fieldset>
											<div class="form-group">
												<label class="col-sm-5 control-label"
													data-localize="setting.tab_PersonalDetails.distanceUnit">Distance
													Unit</label>
												<div class="col-sm-10">
													<div class="row">
														<div class="col-md-4">
															<select id="ddlDistenceUnit" name="ddlDistenceUnit"
																class="form-control m-b">
																<c:choose>
																	<c:when
																		test="${loginUserProfile.user.userPreferenceses.distanceUnit == 'KM'}">
																		<option value="MILES">miles</option>
																		<option value="KM" selected="selected">km</option>
																	</c:when>
																	<c:otherwise>
																		<option value="MILES" selected="selected">miles</option>
																		<option value="KM">km</option>
																	</c:otherwise>
																</c:choose>
															</select>
														</div>
													</div>
												</div>
											</div>
										</fieldset>
										<fieldset>
											<div class="form-group">
												<label class="col-sm-5 control-label"
													data-localize="setting.tab_PersonalDetails.timezone">Timezone</label>
												<div class="col-sm-10">
													<div class="row">
														<div class="col-md-12">
															<select class="form-control required input-sm"
																id="ddlTimeZone" placeholder="Time Zone"
																name="ddlTimeZone" aria-required="true"
																aria-invalid="false">
																<c:forEach items="${timezone}" var="cnt">
																	<c:choose>
																		<c:when
																			test="${cnt.tname == loginUserProfile.user.userPreferenceses.timezone}">
																			<option value="${cnt.tname}"
																				selected="selected">${cnt.time}
																				${cnt.zoneName}</option>
																		</c:when>
																		<c:otherwise>
																			<option value="${cnt.tname}">${cnt.time
																				} ${ cnt.zoneName}</option>
																		</c:otherwise>
																	</c:choose>
																</c:forEach>
															</select>
														</div>
													</div>
												</div>
											</div>
										</fieldset>
										<fieldset>
											<div class="form-group">
												<label class="col-sm-5 control-label"
													data-localize="setting.tab_PersonalDetails.fooddatabase">Food
													database</label>
												<div class="col-sm-10">
													<div class="row">
														<div class="col-md-12">
															<select class="form-control required input-sm"
																id="ddlFoodDataBase" name="ddlFoodDataBase"
																aria-required="true" aria-invalid="false">
																<c:choose>
																	<c:when
																		test="${loginUserProfile.user.userPreferenceses.foodDatabase=='US'}">
																		<option value="US" selected="selected">Core
																			Foods</option>
																		<option value="UK">Brand Name Search</option>
																		<option value="UKUS">Core + Brand Name
																			Search</option>
																	</c:when>
																	<c:when
																		test="${loginUserProfile.user.userPreferenceses.foodDatabase=='UK'}">
																		<option value="US">Core Foods</option>
																		<option value="UK" selected="selected">Brand
																			Name Search</option>
																		<option value="UKUS">Core + Brand Name
																			Search</option>
																	</c:when>
																	<c:otherwise>
																		<option value="US">Core Foods</option>
																		<option value="UK">Brand Name Search</option>
																		<option value="UKUS" selected="selected">Core
																			+ Brand Name Search</option>
																	</c:otherwise>
																</c:choose>

															</select>
														</div>
													</div>
												</div>
											</div>
										</fieldset>
										<fieldset>
											<button type="submit" id="save-personalSettings-btn"
												class="mb-sm btn btn-success pull-right"
												data-localize="Button.Update">Update</button>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div id="changePassword" role="tabpanel" class="tab-pane fade">
		<h3 class="text-center text-thin  text-center"
			data-localize="setting.tab_ChangePassword.tabname">Change
			Password</h3>
		<h5 class="text-muted text-thin  text-center"
			data-localize="setting.tab_ChangePassword.youcanmakechangestoyourPasswordhere">You
			can make changes to your Password here</h5>
		<div class="row">
			<div class="col-lg-12">
				<div class="col-lg-3">&nbsp;</div>
				<div class="col-lg-6">
					<form role="form" data-parsley-validate="" novalidate=""
						class="mb-lg" id="passwordForm" name="passwordForm">
						<fieldset>
							<div class="form-group has-feedback">
								<label for="" class="text-muted"
									data-localize="setting.tab_ChangePassword.currentPassword">Current
									Password</label> <input type="password" id="password"
									name="password" fieldname="Current Password"
									data-localize="setting.tab_ChangePassword.placeholder.currentPassword"
									placeholder="" class="form-control col-lg-6"
									autocomplete="off" readonly
									onfocus="this.removeAttribute('readonly');" required>
							</div>
						</fieldset>
						<fieldset>
							<div class="form-group has-feedback">
								<label for="" class="text-muted"
									data-localize="setting.tab_ChangePassword.newPassword">New
									Password</label> <input id="newPassword" name="newPassword"
									class="form-control" minlength="6" maxlength="20"
									fieldname="New Password" type="password"
									data-localize="setting.tab_ChangePassword.placeholder.newPassword"
									autocomplete="off" readonly
									onfocus="this.removeAttribute('readonly');"
									placeholder="" required>
							</div>
							<div class="form-group has-feedback">
								<label for="" class="text-muted"
									data-localize="setting.tab_ChangePassword.confirmPassword">Confirm
									Password</label> <input id="confirmNewPassword"
									name="confirmNewPassword" type="password" minlength="6"
									maxlength="20" class="form-control"
									fieldname="Confirm Password"
									data-localize="Signup.PlaceHolder.RePassword"
									autocomplete="off" readonly
									onfocus="this.removeAttribute('readonly');"
									placeholder="" required
									data-parsley-equalto="#newPassword">
							</div>
						</fieldset>
						<fieldset>
							<button type="button" id="resetPassword"
								class="mb-sm btn btn-default" data-localize="Button.Reset">Reset</button>
							<button type="submit"
								class="mb-sm btn btn-success pull-right"
								data-localize="Button.ChangePassword">Change
								Password</button>
						</fieldset>
					</form>
				</div>
				<div class="col-lg-3">&nbsp;</div>
			</div>
		</div>
	</div>
	<div id="privacySettings" role="tabpanel" class="tab-pane fade">
		<div class="row">
			<div class="col-lg-12">
			<form id="privacySettingsForm" name="privacySettingsForm">
				<div class="col-lg-6">
					<div id="panelPortlet1" class="panel panel-default">
						<div
							class="panel-heading portlet-handler ui-sortable-handle">
							<h3 class="text-thin "
								data-localize="setting.tab_PrivacySettings.personalSettings_level">Personal
								Settings</h3>
						</div>
						<div class="panel-wrapper">
							<div class="panel-body">
								
									<fieldset>
										<div class="form-group">
											<label class="control-label"
												data-localize="setting.tab_PrivacySettings.aboutme">About
												me</label> <br />

											<c:choose>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.aboutMe=='ANY_ONE'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="aboutMe"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
													
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="aboutMe"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="aboutMe"
														value="ANY_ONE" checked> <span
														class="fa fa-check"></span>Public
													</label>
												</c:when>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.aboutMe=='FRIENDS'}">
												    <label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="aboutMe"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="aboutMe"
														value="FRIENDS" checked> <span
														class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="aboutMe"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
												</c:when>
												<c:otherwise>
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="aboutMe"
														value="YOU" checked> <span
														class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="aboutMe"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="aboutMe"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
												</c:otherwise>
											</c:choose>


										</div>
									</fieldset>
									 
									<%-- <fieldset>
										<div class="form-group">
											<label class="control-label">Age and Height</label> <br />
											<c:choose>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.ageAndHeight=='ANY_ONE'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="ageAndHeight"
														value="ANY_ONE" checked> <span
														class="fa fa-check"></span>Public
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="ageAndHeight"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="ageAndHeight"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
												</c:when>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.ageAndHeight=='FRIENDS'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="ageAndHeight"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="ageAndHeight"
														value="FRIENDS" checked> <span
														class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="ageAndHeight"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
												</c:when>
												<c:otherwise>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="ageAndHeight"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="ageAndHeight"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="ageAndHeight"
														value="YOU" checked> <span
														class="fa fa-check"></span>Private
													</label>
												</c:otherwise>
											</c:choose>

										</div>
									</fieldset>--%>
									<fieldset>
										<div class="form-group">
											<label class="control-label">Location</label> <br />
											<c:choose>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.location=='ANY_ONE'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="location"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="location"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="location"
														value="ANY_ONE" checked> <span
														class="fa fa-check"></span>Public
													</label>
												</c:when>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.location=='FRIENDS'}">
														<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="location"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="location"
														value="FRIENDS" checked> <span
														class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="location"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
												</c:when>
												<c:otherwise>
												<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="location"
														value="YOU" checked> <span
														class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="location"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="location"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
												</c:otherwise>
											</c:choose>

										</div>
									</fieldset>
									
									<fieldset>
										<div class="form-group">
											<label class="control-label">Profile Picture</label> <br />
											<c:choose>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.profilePicture=='ANY_ONE'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="profilePicture"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="profilePicture"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="profilePicture"
														value="ANY_ONE" checked> <span
														class="fa fa-check"></span>Public
													</label>
												</c:when>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.profilePicture=='FRIENDS'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="profilePicture"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="profilePicture"
														value="FRIENDS" checked> <span
														class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="profilePicture"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
												</c:when>
												<c:otherwise>
												    <label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="profilePicture"
														value="YOU" checked> <span
														class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="profilePicture"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="profilePicture"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
												</c:otherwise>
											</c:choose>

										</div>
									</fieldset>
									
									<fieldset>
										<div class="form-group">
											<label class="control-label">Interests</label> <br />
											<c:choose>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.interests=='ANY_ONE'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="interests"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="interests"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="interests"
														value="ANY_ONE" checked> <span
														class="fa fa-check"></span>Public
													</label>
												</c:when>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.interests=='FRIENDS'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="interests"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="interests"
														value="FRIENDS" checked> <span
														class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="interests"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
												</c:when>
												<c:otherwise>
												   <label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="interests"
														value="YOU" checked> <span
														class="fa fa-check"></span>Private
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="interests"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="interests"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
												</c:otherwise>
											</c:choose>

										</div>
									</fieldset>
									<%-- <fieldset>
										<div class="form-group">
											<label class="control-label">Picture</label> <br />
											<c:choose>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.pictures=='ANY_ONE'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="pictures"
														value="ANY_ONE" checked> <span
														class="fa fa-check"></span>Public
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="pictures"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="pictures"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
												</c:when>
												<c:when
													test="${loginUserProfile.user.userPrivacySettingses.pictures=='FRIENDS'}">
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="pictures"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="pictures"
														value="FRIENDS" checked> <span
														class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="pictures"
														value="YOU"> <span class="fa fa-check"></span>Private
													</label>
												</c:when>
												<c:otherwise>
													<label class="radio-inline c-radio"> <input
														id="inlineradio10" type="radio" name="pictures"
														value="ANY_ONE"> <span class="fa fa-check"></span>Public
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio20" type="radio" name="pictures"
														value="FRIENDS"> <span class="fa fa-check"></span>Friends
													</label>
													<label class="radio-inline c-radio"> <input
														id="inlineradio30" type="radio" name="pictures"
														value="YOU" checked> <span
														class="fa fa-check"></span>Private
													</label>
												</c:otherwise>
											</c:choose>

										</div>
									</fieldset> --%>
							</div>
						</div>
					</div>

					<div id="panelPortlet1" class="panel panel-default">
						<div
							class="panel-heading portlet-handler ui-sortable-handle">
							<h3 class="text-thin">Last 7 Days Graph</h3>
						</div>
						<div class="panel-wrapper">
							<div class="panel-body">
								<fieldset>
									<div class="form-group">
										<label class="control-label">Calorie Intake vs
											Burn</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.calorieIntakeBurn=='ANY_ONE'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="calorieIntakeBurn" value="YOU"> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="calorieIntakeBurn" value="FRIENDS"> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="calorieIntakeBurn" value="ANY_ONE" checked>
													<span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.calorieIntakeBurn=='FRIENDS'}">
													<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="calorieIntakeBurn" value="YOU"> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="calorieIntakeBurn" value="FRIENDS" checked>
													<span class="fa fa-check"></span>Friends
												</label>
											
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="calorieIntakeBurn" value="ANY_ONE"> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="calorieIntakeBurn" value="YOU" checked>
													<span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="calorieIntakeBurn" value="FRIENDS"> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="calorieIntakeBurn" value="ANY_ONE"> <span
													class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset>
								<fieldset>
									<div class="form-group">
										<label class="control-label">Steps and Distance</label>
										<br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.stepsAndDistance=='ANY_ONE'}">
											<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="stepsAndDistance" value="YOU"> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="stepsAndDistance" value="FRIENDS"> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="stepsAndDistance" value="ANY_ONE" checked>
													<span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.stepsAndDistance=='FRIENDS'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="stepsAndDistance" value="YOU"> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="stepsAndDistance" value="FRIENDS" checked>
													<span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="stepsAndDistance" value="ANY_ONE"> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="stepsAndDistance" value="YOU" checked>
													<span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="stepsAndDistance" value="FRIENDS"> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="stepsAndDistance" value="ANY_ONE"> <span
													class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset>
								<fieldset>
									<div class="form-group">
										<label class="control-label">Active Minutes</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.activeMinutes=='ANY_ONE'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="activeMinutes"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="activeMinutes"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="activeMinutes"
													value="ANY_ONE" checked> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.activeMinutes=='FRIENDS'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="activeMinutes"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="activeMinutes"
													value="FRIENDS" checked> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="activeMinutes"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="activeMinutes"
													value="YOU" checked> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="activeMinutes"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="activeMinutes"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset>
								<%-- <fieldset>
									<div class="form-group">
										<label class="control-label">Weight</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.weightVsTargetWeight=='ANY_ONE'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="weightVsTargetWeight" value="ANY_ONE" checked>
													<span class="fa fa-check"></span>Public
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="weightVsTargetWeight" value="FRIENDS">
													<span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="weightVsTargetWeight" value="YOU"> <span
													class="fa fa-check"></span>Private
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.weightVsTargetWeight=='FRIENDS'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="weightVsTargetWeight" value="ANY_ONE">
													<span class="fa fa-check"></span>Public
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="weightVsTargetWeight" value="FRIENDS" checked>
													<span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="weightVsTargetWeight" value="YOU"> <span
													class="fa fa-check"></span>Private
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio"
													name="weightVsTargetWeight" value="ANY_ONE">
													<span class="fa fa-check"></span>Public
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio"
													name="weightVsTargetWeight" value="FRIENDS">
													<span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio"
													name="weightVsTargetWeight" value="YOU" checked>
													<span class="fa fa-check"></span>Private
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset> --%>
								<fieldset>
									<div class="form-group">
										<label class="control-label">Sleep</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.sleep=='ANY_ONE'}">
											<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="sleep"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="sleep"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="sleep"
													value="ANY_ONE" checked> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.sleep=='FRIENDS'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="sleep"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="sleep"
													value="FRIENDS" checked> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="sleep"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="sleep"
													value="YOU" checked> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="sleep"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="sleep"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div id="panelPortlet1" class="panel panel-default">
						<div
							class="panel-heading portlet-handler ui-sortable-handle">
							<h3 class="text-thin ">Others Settings</h3>
						</div>
						<div class="panel-wrapper">
							<div class="panel-body">

							
								<%-- <fieldset>
									<div class="form-group">
										<label class="control-label">My Body</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.myBody=='ANY_ONE'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="myBody"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="myBody"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="myBody"
													value="ANY_ONE" checked> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.myBody=='FRIENDS'}">
											<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="myBody"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="myBody"
													value="FRIENDS" checked> <span
													class="fa fa-check"></span>Friends
												</label>
											    <label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="myBody"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="myBody"
													value="YOU" checked> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="myBody"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="myBody"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset> --%>
								<fieldset>
									<div class="form-group">
										<label class="control-label">My Achievements</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.myAchievements=='ANY_ONE'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="myAchievements"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="myAchievements"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="myAchievements"
													value="ANY_ONE" checked> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.myAchievements=='FRIENDS'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="myAchievements"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="myAchievements"
													value="FRIENDS" checked> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="myAchievements"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="myAchievements"
													value="YOU" checked> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="myAchievements"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="myAchievements"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset>
								<fieldset>
									<div class="form-group">
										<label class="control-label">Foods</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.foods=='ANY_ONE'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="foods"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="foods"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="foods"
													value="ANY_ONE" checked> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.foods=='FRIENDS'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="foods"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="foods"
													value="FRIENDS" checked> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="foods"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="foods"
													value="YOU" checked> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="foods"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="foods"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset>
								<fieldset>
									<div class="form-group">
										<label class="control-label">Activities</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.activities=='ANY_ONE'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="activities"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="activities"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="activities"
													value="ANY_ONE" checked> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.activities=='FRIENDS'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="activities"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="activities"
													value="FRIENDS" checked> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="activities"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="activities"
													value="YOU" checked> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="activities"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="activities"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset>
								<fieldset>
									<div class="form-group">
										<label class="control-label">Friends</label> <br />
										<c:choose>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.friends=='ANY_ONE'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="friends"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="friends"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="friends"
													value="ANY_ONE" checked> <span
													class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:when
												test="${loginUserProfile.user.userPrivacySettingses.friends=='FRIENDS'}">
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="friends"
													value="YOU"> <span class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="friends"
													value="FRIENDS" checked> <span
													class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="friends"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:when>
											<c:otherwise>
												<label class="radio-inline c-radio"> <input
													id="inlineradio30" type="radio" name="friends"
													value="YOU" checked> <span
													class="fa fa-check"></span>Private
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio20" type="radio" name="friends"
													value="FRIENDS"> <span class="fa fa-check"></span>Friends
												</label>
												<label class="radio-inline c-radio"> <input
													id="inlineradio10" type="radio" name="friends"
													value="ANY_ONE"> <span class="fa fa-check"></span>Public
												</label>
											</c:otherwise>
										</c:choose>

									</div>
								</fieldset>
							<fieldset>
															<div class="form-group">
																<label class="control-label">Challenges</label> <br />
																<c:choose>
																	<c:when
																		test="${loginUserProfile.user.userPrivacySettingses.challenge=='ANY_ONE'}">
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio30" type="radio" name="challenge"
																			value="YOU"> <span class="fa fa-check"></span>Private
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio20" type="radio" name="challenge"
																			value="FRIENDS"> <span class="fa fa-check"></span>Friends
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio10" type="radio" name="challenge"
																			value="ANY_ONE" checked> <span
																			class="fa fa-check"></span>Public
																		</label>
																	</c:when>
																	<c:when
																		test="${loginUserProfile.user.userPrivacySettingses.challenge=='FRIENDS'}">
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio30" type="radio" name="challenge"
																			value="YOU"> <span class="fa fa-check"></span>Private
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio20" type="radio" name="challenge"
																			value="FRIENDS" checked> <span
																			class="fa fa-check"></span>Friends
																		</label>
																		
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio10" type="radio" name="challenge"
																			value="ANY_ONE"> <span class="fa fa-check"></span>Public
																		</label>
																	</c:when>
																	<c:otherwise>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio30" type="radio" name="challenge"
																			value="YOU" checked> <span
																			class="fa fa-check"></span>Private
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio20" type="radio" name="challenge"
																			value="FRIENDS"> <span class="fa fa-check"></span>Friends
																		</label>
																		
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio10" type="radio" name="challenge"
																			value="ANY_ONE"> <span class="fa fa-check"></span>Public
																		</label>
																	</c:otherwise>
																</c:choose>

															</div>
														</fieldset>
														<fieldset>
															<div class="form-group">
																<label class="control-label">Badges</label> <br />
																<c:choose>
																	<c:when
																		test="${loginUserProfile.user.userPrivacySettingses.badges=='ANY_ONE'}">
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio30" type="radio" name="badges"
																			value="YOU"> <span class="fa fa-check"></span>Private
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio20" type="radio" name="badges"
																			value="FRIENDS"> <span class="fa fa-check"></span>Friends
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio10" type="radio" name="badges"
																			value="ANY_ONE" checked> <span
																			class="fa fa-check"></span>Public
																		</label>
																	</c:when>
																	<c:when
																		test="${loginUserProfile.user.userPrivacySettingses.badges=='FRIENDS'}">
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio30" type="radio" name="badges"
																			value="YOU"> <span class="fa fa-check"></span>Private
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio20" type="radio" name="badges"
																			value="FRIENDS" checked> <span
																			class="fa fa-check"></span>Friends
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio10" type="radio" name="badges"
																			value="ANY_ONE"> <span class="fa fa-check"></span>Public
																		</label>
																	</c:when>
																	<c:otherwise>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio30" type="radio" name="badges"
																			value="YOU" checked> <span
																			class="fa fa-check"></span>Private
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio20" type="radio" name="badges"
																			value="FRIENDS"> <span class="fa fa-check"></span>Friends
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio10" type="radio" name="badges"
																			value="ANY_ONE"> <span class="fa fa-check"></span>Public
																		</label>
																	</c:otherwise>
																</c:choose>

															</div>
														</fieldset>
														
														<fieldset>
															<div class="form-group">
																<label class="control-label">Leaderboard</label> <br />
																<c:choose>
																	<c:when
																		test="${loginUserProfile.user.userPrivacySettingses.leaderboard=='FRIENDS'}">
																		<label class="radio-inline c-radio ml83"> <input
																			id="inlineradio20" type="radio" name="leaderboard"
																			value="FRIENDS" checked> <span class="fa fa-check"></span>Friends
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio10" type="radio" name="leaderboard"
																			value="ANY_ONE"> <span
																			class="fa fa-check"></span>Public
																		</label>
																	</c:when>
																	<c:otherwise>
																		<label class="radio-inline c-radio ml83"> <input
																			id="inlineradio20" type="radio" name="leaderboard"
																			value="FRIENDS"> <span class="fa fa-check"></span>Friends
																		</label>
																		<label class="radio-inline c-radio"> <input
																			id="inlineradio10" type="radio" name="leaderboard"
																			value="ANY_ONE" checked> <span class="fa fa-check"></span>Public
																		</label>
																	</c:otherwise>
																</c:choose>

															</div>
														</fieldset>

							</div>
						</div>
					</div>
				</div>
				
				
			<button id="saveprivacybtn" type="button"
				class="mb-sm btn btn-success btn-sm pull-right align-bottom">Save
				privacy settings</button>
			</div>
			</form>
		</div>
	</div>
	<!-- coach privacy start -->
	
	<div id="coachprivacySettings" role="tabpanel" class="tab-pane fade">

		<h3 class="text-center text-thin  text-center">Coach Privacy Settings</h3>
		<h5 class="text-center">You are in control of what information you would like to share
			with your health coaches. Health coaches may need this information to offer you personalized health
			advice.</h5>
		<div class="row">
			<div class="col-lg-12">
			<div class="dt_example table-responsive example_alt_pagination clearfix">
								<table class="table-condensed table-striped table-hover table-bordered pull-left responsive" style="width:100%" id="tblcoachprivacy">
									<thead>
										<tr>
											<th>Coach Name</th>
		                                    <th>About Me</th>
		                                    <th>Profile Picture</th>
		                                     <th>Activity Logs</th>
		                                    <th>Nutrition Logs</th>
		                                    <th>Health Logs (HRA & Screening results)</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
			<!--  <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="tblorder">
                                    <thead>
                                      <th>Coach Name</th>
                                    <th>About Me</th>
                                    <th>Profile Picture</th>
                                     <th>Activity Logs</th>
                                    <th>Nutrition Logs</th>
                                    <th>Health Logs (HRA & Screening results)</th>
                                    </thead>
                                    <tbody>
                                   
                                    </tbody>
                                </table>
                            </div> -->
			
			
			
			
			
			
			
			
			
			<%-- 
				<div class="col-lg-3">&nbsp;</div>
				<div class="col-lg-6">
					<form role="form" data-parsley-validate="" novalidate=""
						class="mb-lg" id="coachprivacyForm"
						name="coachprivacyForm">
						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">About Me</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
										<c:when
												test="${coachpermission.aboutMe=='true'}">
											<input name="aboutMe"
												   type="checkbox" checked="checked">
										</c:when>
										<c:otherwise>
											<input name="aboutMe"
												   type="checkbox">
										</c:otherwise>
									</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Profile Picture</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
										<c:when
												test="${coachpermission.profilePic=='true'}">
											<input name="profilePic" type="checkbox"
												   checked="checked">
										</c:when>
										<c:otherwise>
											<input name="profilePic" type="checkbox">
										</c:otherwise>
									</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Activity Logs</label>

								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${coachpermission.activity=='true'}">
												<input name="activity"
													type="checkbox" checked="checked" id ="coachactvity">
											</c:when>
											<c:otherwise>
												<input name="activity"
													type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Nutrition Logs</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${coachpermission.nutrition=='true'}">
												<input name="nutrition"
													type="checkbox" checked="checked">
											</c:when>
											<c:otherwise>
												<input name="nutrition"
													type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Health Logs (HRA & Screening results)</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
										<c:when
												test="${coachpermission.phi=='true'}">
											<input name="phi" type="checkbox" id="coachphi"
												   checked="checked">
										</c:when>
										<c:otherwise>
											<input name="phi" type="checkbox" id="coachphi">
										</c:otherwise>
									</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<button type="submit"
							class="mb-sm btn btn-success btn-sm pull-right">Save coach settings</button>
					</form>

				</div>
				<div class="col-lg-3">&nbsp;</div>
 --%>
			</div>
			
		</div>
		<button type="button" id="savecoachprivacy" style="margin-top: 50px!important;" class="mb-sm btn btn-success btn-sm pull-right">Save coach settings</button>
	</div>
	<!--               coach privacy end here   -->
	<div id="notifications" role="tabpanel" class="tab-pane fade">

		<h3 class="text-center text-thin  text-center">Notifications</h3>
		<h5 class="text-muted text-thin  text-center">You can set
			email notifications here</h5>
		<div class="row">
			<div class="col-lg-12">
				<div class="col-lg-3">&nbsp;</div>
				<div class="col-lg-6">
					<form role="form" data-parsley-validate="" novalidate=""
						class="mb-lg" id="notificationsForm"
						name="notificationsForm">
						<fieldset class="hide">
							<div class="form-group">
								<label class="col-sm-7 control-label">Badges
									Notification</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${userNotifications.badgeNotification=='true'}">
												<input name="badgeNotification" type="checkbox"
													checked="checked">
											</c:when>
											<c:otherwise>
												<input name="badgeNotification" type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>

						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Monthly
									Summary Notification</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${userNotifications.monthlySummaryNotification=='true'}">
												<input name="monthlySummaryNotification"
													type="checkbox" checked="checked">
											</c:when>
											<c:otherwise>
												<input name="monthlySummaryNotification"
													type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>

						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Weekly
									Summary Notification</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${userNotifications.weeklySummaryNotification=='true'}">
												<input name="weeklySummaryNotification"
													type="checkbox" checked="checked">
											</c:when>
											<c:otherwise>
												<input name="weeklySummaryNotification"
													type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Challenge
									Notifications</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${userNotifications.acknowledgeNotification=='true'}">
												<input name="acknowledgeNotification" type="checkbox"
													checked="checked">
											</c:when>
											<c:otherwise>
												<input name="acknowledgeNotification" type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Friend
									Request Notification</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${userNotifications.friendRequestNotification=='true'}">
												<input name="friendRequestNotification"
													type="checkbox" checked="checked">
											</c:when>
											<c:otherwise>
												<input name="friendRequestNotification"
													type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<div class="form-group">
								<label class="col-sm-7 control-label">Direct Messages Notification</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${userNotifications.directMessagesNotification=='true'}">
												<input name="directMessagesNotification"
													type="checkbox" checked="checked">
											</c:when>
											<c:otherwise>
												<input name="directMessagesNotification"
													type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset class="hide">
							<div class="form-group">
								<label class="col-sm-7 control-label">Login
									Notification</label>
								<div class="col-sm-5">
									<label class="switch switch-lg"> <c:choose>
											<c:when
												test="${userNotifications.loginNotification=='true'}">
												<input name="loginNotification" type="checkbox"
													checked="checked">
											</c:when>
											<c:otherwise>
												<input name="loginNotification" type="checkbox">
											</c:otherwise>
										</c:choose> <span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<button type="submit"
							class="mb-sm btn btn-success btn-sm pull-right">Save
							settings</button>
					</form>

				</div>
				<div class="col-lg-3">&nbsp;</div>

			</div>
		</div>
	</div>
	<div id="themeSettings" role="tabpanel" class="tab-pane fade">
		<div class="row">
			<div class="col-lg-12">
				<div class="col-lg-4">&nbsp;</div>

				<div class="col-lg-4">
					<div id="panelPortlet6" class="panel panel-default"
						style="opacity: 1; z-index: 0;">
						<div class="panel-body">
							<div class="p">
								<h3 class="text-center text-thin">Theme Settings</h3>
								<div class="table-grid mb">
									<div class="col mb">
										<div class="setting-color">
											<label data-load-css="assets/css/theme-a.css">
												<c:choose>
													<c:when
														test="${loginUserProfile.user.userPreferenceses.theme=='theme-a.css'}">
														<input type="radio" name="setting-theme"
															checked="checked">
													</c:when>
													<c:otherwise>
														<input type="radio" name="setting-theme">
													</c:otherwise>
												</c:choose> <span class="icon-check"></span> <span class="split">
													<span class="color bg-info"></span> <span
													class="color bg-info-light"></span>
											</span> <span class="color bg-white"></span>
											</label>
										</div>
									</div>
									<div class="col mb">
										<div class="setting-color">
											<label data-load-css="assets/css/theme-b.css">
												<c:choose>
													<c:when
														test="${loginUserProfile.user.userPreferenceses.theme=='theme-b.css'}">
														<input type="radio" name="setting-theme"
															checked="checked">
													</c:when>
													<c:otherwise>
														<input type="radio" name="setting-theme">
													</c:otherwise>
												</c:choose><span class="icon-check"></span> <span class="split">
													<span class="color bg-green"></span> <span
													class="color bg-green-light"></span>
											</span> <span class="color bg-white"></span>
											</label>
										</div>
									</div>
									<div class="col mb">
										<div class="setting-color">
											<label data-load-css="assets/css/theme-c.css">
												<c:choose>
													<c:when
														test="${loginUserProfile.user.userPreferenceses.theme=='theme-c.css'}">
														<input type="radio" name="setting-theme"
															checked="checked">
													</c:when>
													<c:otherwise>
														<input type="radio" name="setting-theme">
													</c:otherwise>
												</c:choose> <span class="icon-check"></span> <span class="split">
													<span class="color bg-purple"></span> <span
													class="color bg-purple-light"></span>
											</span> <span class="color bg-white"></span>
											</label>
										</div>
									</div>
									<div class="col mb">
										<div class="setting-color">
											<label data-load-css="assets/css/theme-d.css">
												<c:choose>
													<c:when
														test="${loginUserProfile.user.userPreferenceses.theme=='theme-d.css'}">
														<input type="radio" name="setting-theme"
															checked="checked">
													</c:when>
													<c:otherwise>
														<input type="radio" name="setting-theme">
													</c:otherwise>
												</c:choose> <span class="icon-check"></span> <span class="split">
													<span class="color bg-danger"></span> <span
													class="color bg-danger-light"></span>
											</span> <span class="color bg-white"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="table-grid mb">
									<div class="col mb">
										<div class="setting-color">
											<label data-load-css="assets/css/theme-e.css">
												<c:choose>
													<c:when
														test="${loginUserProfile.user.userPreferenceses.theme=='theme-e.css'}">
														<input type="radio" name="setting-theme"
															checked="checked">
													</c:when>
													<c:otherwise>
														<input type="radio" name="setting-theme">
													</c:otherwise>
												</c:choose> <span class="icon-check"></span> <span class="split">
													<span class="color bg-info-dark"></span> <span
													class="color bg-info"></span>
											</span> <span class="color bg-gray-dark"></span>
											</label>
										</div>
									</div>
									<div class="col mb">
										<div class="setting-color">
											<label data-load-css="assets/css/theme-f.css">
												<c:choose>
													<c:when
														test="${loginUserProfile.user.userPreferenceses.theme=='theme-f.css'}">
														<input type="radio" name="setting-theme"
															checked="checked">
													</c:when>
													<c:otherwise>
														<input type="radio" name="setting-theme">
													</c:otherwise>
												</c:choose> <span class="icon-check"></span> <span class="split">
													<span class="color bg-green-dark"></span> <span
													class="color bg-green"></span>
											</span> <span class="color bg-gray-dark"></span>
											</label>
										</div>
									</div>
									<div class="col mb">
										<div class="setting-color">
											<label data-load-css="assets/css/theme-g.css">
												<c:choose>
													<c:when
														test="${loginUserProfile.user.userPreferenceses.theme=='theme-g.css'}">
														<input type="radio" name="setting-theme"
															checked="checked">
													</c:when>
													<c:otherwise>
														<input type="radio" name="setting-theme">
													</c:otherwise>
												</c:choose> <span class="icon-check"></span> <span class="split">
													<span class="color bg-purple-dark"></span> <span
													class="color bg-purple"></span>
											</span> <span class="color bg-gray-dark"></span>
											</label>
										</div>
									</div>
									<div class="col mb">
										<div class="setting-color">
											<label data-load-css="assets/css/theme-h.css">
												<c:choose>
													<c:when
														test="${loginUserProfile.user.userPreferenceses.theme=='theme-h.css'}">
														<input type="radio" name="setting-theme"
															checked="checked">
													</c:when>
													<c:otherwise>
														<input type="radio" name="setting-theme">
													</c:otherwise>
												</c:choose> <span class="icon-check"></span> <span class="split">
															<span class="color bg-danger-dark"></span> <span
															class="color bg-danger"></span>
													</span> <span class="color bg-gray-dark"></span>
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="col-lg-4">&nbsp;</div>

					</div>
				</div>
			</div>
			
			<div id="manageDependents" role="tabpanel" class="tab-pane fade">
				<div class="row">
					<div class="col-lg-12">
					<c:if test="${compSetting.userDependents=='true'}">
					<div class="panel panel-default">
						<div class="row">
							<div class="col-lg-12">
									<button type="button" class=" m10 mb-sm btn btn-success newDependents"  data-localize="Button.add"></button>
							</div>
						</div>
					</div>
					</c:if>
					
					<div class="panel panel-default">
						<div class="row">
						
							<div class="col-lg-12" id="tblManageDependentsdiv">
							<div class="m10">
										<span data-localize="setting.tab_ManageDependents.Whocanparticipate">Who can participate?</span>
										<ul>
											<li data-localize="setting.tab_ManageDependents.Spouse">Spouse</li>
											<li data-localize="setting.tab_ManageDependents.childrenAge">Dependent children who are at least 18 year of age</li>
											<li data-localize="setting.tab_ManageDependents.parentinlaw">Parents and parent-in-law</li>
										</ul>
									</div>
								<div class="table-responsive table-bordered">
									
				                   <table id="tblManageDependents" class="table table-striped table-bordered table-hover">
				                     <thead>
				                         <tr>
				                             <th data-localize="setting.tab_ManageDependents.table.user_dependant_code"></th>
				                             <th data-localize="setting.tab_ManageDependents.table.first_name"></th>
				                             <th data-localize="setting.tab_ManageDependents.table.last_name"></th>
				                             <th data-localize="setting.tab_ManageDependents.table.relationship"></th>
				                             <th data-localize="setting.tab_ManageDependents.table.gender"></th>
				                             <th data-localize="setting.tab_ManageDependents.table.dob"></th>
				                             <th data-localize="setting.tab_ManageDependents.table.email_id"></th>
				                             <th data-localize="setting.tab_ManageDependents.table.status"></th>
				                             <th data-localize="setting.tab_ManageDependents.table.action"></th>
				                         </tr>
				                     </thead>
				                     <tbody>
				                     </tbody>
				                   </table>
				               </div>
							</div>
						</div>
					</div>
					</div>
				</div>
			</div>
			
			
		</div>
	</div>
</div>
<!-- END Settings -->
			</div>

		</div>
	</div>
	
	
</section>

<!-- Create/Update client Employee Modal Dailog Box Block Starts -->
   <div class="modal fade width60" id="addeditclientEmployeePopupModal" tabindex="-1" role="dialog"  aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content" id="addeditclientEmployeediv">
         <div class="modal-header">
           <button type="button" class="close closeEmployee" data-dismiss="modal" aria-hidden="true">&times;</button>
           <h4 class="modal-title">Add Dependents Information</h4>
         </div>
         <div class="modal-body">
           <div class="row">
	           <form role="form" data-parsley-validate="" novalidate=""
					id="clientEmployee_details_form" name="clientEmployee_details_form">
					<fieldset>
					<input type="hidden" id="hdfdobclientEmployee" name="dob"/>
					<input type="hidden" id="hdfclientEmployeeId" />
						<div class="form-group">
							<!-- <div class="control-group col-lg-12 mb5">
						      <label class="control-label col-lg-3"  for="UserDependentsID">User Dependents ID</label>
						      <div class="controls col-lg-8">
						        <input type="text" id="txtUserDependentsID" name="txtUserDependentsID" placeholder="User Dependents ID" minlength="2" maxlength="50" onblur="this.value=removeSpaces(this.value)"; class="col-lg-12 form-control required">
						      </div>
						    </div> -->
						    <div class="control-group col-lg-12 mb5">
						      <label class="control-label col-lg-3 mt10" for="FisrtName">First Name</label>
						      <div class="controls col-lg-8">
						        <input type="text" id="txtFirstName" name="txtFirstName" placeholder="First Name" minlength="2" maxlength="50" class="col-lg-12 form-control required mt10">
						      </div>
						    </div>
						    <div class="control-group col-lg-12 mb5">
						      <label class="control-label col-lg-3 mt10" for="LastName">Last Name</label>
						      <div class="controls col-lg-8">
						        <input type="text" id="txtLastName" name="txtLastName" placeholder="Last Name" minlength="2" maxlength="50" class="col-lg-12 form-control number required mt10">
						      </div>
						    </div>
						    <div class="control-group col-lg-12 mb5">
						      <label class="control-label col-lg-3 mt10" for="Relationship">Relationship</label>
						      <div class="controls col-lg-8">
						        <select id="ddlRelationship" name="ddlRelationship" class="col-lg-12 form-control mt10">
						          <option value="S">Spouse</option>
						          <option value="C">Child</option>
						          <option value="P">Parent</option>
						          <option value="PL">Parent-In-Law</option>
						        </select>
						      </div>
						    </div>
						     <div class="control-group col-lg-12 mb5">
						      <label class="control-label col-lg-3 mt10" for="gender">Gender</label>
						      <div class="controls col-lg-8">
						        <select id="ddlGender" name="ddlGender" class="col-lg-12 form-control mt10">
						          <option value="Male">Male</option>
						          <option value="Female">Female</option>
						        </select>
						      </div>
						    </div>
						    <div class="control-group col-lg-12 mb5">
						      <label class="control-label col-lg-3 mt10" for="DateOfBirth">Date Of Birth</label>
								<div class="controls col-lg-8">
						      		<div class="has-feedback">
										<div id="datetimepicker1" class="input-group date">
											<span id="txtdobclientEmployeeLable"
												class="form-control txtDobFocusclientEmployee"></span>
											<span class="input-group-addon txtDobclientEmployee"> <span
												class="fa fa-calendar"></span>
											</span>
										</div>
									</div>
								</div>
						    </div>
						    <!-- <div class="control-group col-lg-12 mb5">
						      <label class="control-label col-lg-3 mt10" for="PhoneNumber">Phone Number</label>
						      <div class="controls col-lg-8">
						        <input type="number" id="txtPhoneNumber" name="txtPhoneNumber" minlength="10" maxlength="15" data-parsley-type="number" placeholder="Phone Number" class="col-lg-12 form-control required popoverCss mt10"  data-toggle="popover" data-trigger="hover" data-container="body" >
						      </div>
						    </div> -->
						    
						    <div class="control-group col-lg-12 mb5">
						      <label class="control-label col-lg-3 mt10" for="Email">Email ID</label>
						      <div class="controls col-lg-8">
						        <input type="text" id="txtEmail" name="txtEmail" onblur="this.value = this.value.toLowerCase();" placeholder="Email ID" data-parsley-type="email"   minlength="2" maxlength="50" class="col-lg-12 form-control required email mt10">
						      </div>
						    </div>
						 </div>
					</fieldset>
					<fieldset>
					 <button data-dismiss="modal" class="btn btn-danger  pull-right closeEmployee m10" type="button">Close</button>
						<button type="submit" id="btnSavenewDependents"
							class="mb-sm btn btn-success pull-right m10"
							data-localize="Button.Save">Save</button>
					</fieldset>
				</form>
           </div>
         </div>
       </div>
     </div>
   </div>
   <!-- Create/Update client Employee Modal Dailog Box Block Ends -->
   
   <!-- delete dependant confirm  Modal Dailog Box Block Starts -->
   <div class="modal fade width60" id="deletedependconfirmPopupModal" tabindex="-1" role="dialog"  aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content" id="deletedependconfirmdiv">
         <div class="modal-header">
           <button type="button" class="close closeEmployee" data-dismiss="modal" aria-hidden="true">&times;</button>
           <h4 class="modal-title" data-localize="setting.tab_ManageDependents.confirm">conformation</h4>
         </div>
         <div class="modal-body">
           <div class="row">
	           <div class="text-center" data-localize="setting.tab_ManageDependents.areusure">Are you sure, you want to delete dependant.</div>
           </div>
         </div>
         <div class="modal-footer">
           <button data-dismiss="modal" class="btn btn-danger" type="button">Cancel</button>
           <button  id="btnDeleteDependent"  class="btn btn-primary" data-localize="Button.Delete">Delete</button>
         </div>
       </div>
     </div>
   </div>
   <!-- delete dependant confirm Modal Dailog Box Block Ends -->
   
   <!-- send mail dependant confirm  Modal Dailog Box Block Starts -->
   <div class="modal fade width60" id="senddependconfirmPopupModal" tabindex="-1" role="dialog"  aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content" id="senddependconfirmPopupModaldiv">
         <div class="modal-header">
           <button type="button" class="close closeEmployee" data-dismiss="modal" aria-hidden="true">&times;</button>
           <h4 class="modal-title" data-localize="setting.tab_ManageDependents.confirm">conformation</h4>
         </div>
         <div class="modal-body">
           <div class="row">
	           <div class="text-center" data-localize="setting.tab_ManageDependents.sendmailareusure">Are you sure, you want to send email.</div>
           </div>
         </div>
         <div class="modal-footer">
           <button data-dismiss="modal" class="btn btn-danger" type="button">Cancel</button>
           <button  id="btnsendmailDependent"  class="btn btn-primary" data-localize="Button.Send">Send</button>
         </div>
       </div>
     </div>
   </div>
   <!-- send mail dependant confirm Modal Dailog Box Block Ends -->
   
   <div class="modal fade width60" id="coachdetailpopup" tabindex="-1" role="dialog"  aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content" id="deletedependsconfirmdiv">
         <div class="modal-header">
           <button type="button" class="close closeEmployee" data-dismiss="modal" aria-hidden="true">&times;</button>
           <h4 class="modal-title" data-localize="setting.tab_ManageDependents.confirm">Coach details</h4>
         </div>
         <div class="modal-body">
           <div class="row">
	           <div class="col-lg-12">
		           <div class="col-lg-3"><strong>Speciality In :</strong></div>
		           <div class="col-lg-3"><label id="specialitytext"></label></div>
		           <div class="col-lg-4"><strong>Experince In Speciality :</strong></div>
		           <div class="col-lg-2"><label id="specialityexp"></label></div>
              </div>
              <div class="col-lg-12">
		           <div class="col-lg-3"><strong>Speciality Type:</strong></div>
		           <div class="col-lg-9"><label id="specialitytype"></label></div>
              </div>
              <div class="col-lg-12">
		           <div class="col-lg-12"><strong>About Me :</strong></div>
		           <div class="col-lg-12"><p id="descriptiontext"></p></div>
              </div>
              
         </div>
         <div class="modal-footer">
           <button data-dismiss="modal" class="btn btn-danger" type="button">Close</button>
         </div>
       </div>
     </div>
   </div>
   </div>
																