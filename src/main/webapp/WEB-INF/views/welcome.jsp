<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextid" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" type="text/css" href="${contextid}/resources/css/profile.css" />
    <link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
    <style type="text/css">
        .myrow-container{
            margin: 5px;
        }
    </style>
    
</head>
<body class=".container-fluid">
    <div class="myrow-container">
        <div class="panel panel-success">
            <!-- <div class="panel-heading"> -->
            <div class="navbar topnavbar panel-heading">
            <div class="nav-wrapper">
            <h3 class="panel-title">
                    Welcome to : ${pageContext.request.userPrincipal.name}
                </h3>
	                <c:if test="${pageContext.request.userPrincipal.name != null}">
		                <form id="logoutForm" method="POST" action="${contextid}/logout">
		                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		                </form>
	                </c:if>
               <!-- START Right Navbar-->
               <ul class="nav navbar-nav navbar-right">
                <li class="dropdown dropdown-list" data-placement="bottom">
                    <a href="#" data-toggle="dropdown" aria-expanded="false" >
                        <img src="${contextid}/resources/images/rajeshsmall.JPG"
                             class="media-box-object img-circle thumb24 profile-pic" data-toggle="tooltip" title=""  data-placement="bottom">
                    </a>
                    <!-- START Dropdown menu-->
                    <ul class="dropdown-menu animated fadeIn">
                        <li>
                            <div class="list-group">
                                    <div class="media-box">
                                    <!-- <a href="" class="list-group-item" style="border-bottom: 0;"> -->
                                        <div class="pull-left"  data-toggle="tooltip"  data-placement="bottom" title="" data-original-title="View Profile">
                                            <img src="${contextid}/resources/images/rajeshsmall.JPG" class="media-box-object img-circle thumb32 profile-pic">
                                        </div>
                                        <div class="media-box-body clearfix" >
                                            <p class="m0 text-muted">
                                                <small class="ml5" data-toggle="tooltip"  data-placement="bottom" title="" data-original-title="View Profile">${pageContext.request.userPrincipal.name}</small>
                                            </p>
                                        </div> 
                                     <!--  </a> -->
                                          <a  href="javascript:void(0)" class="profilechangePic"> 
                                          <span class="ml25 label label-info pull-left" id="changePic" data-placement="bottom"  title="Click Here to Update Profile Picture" data-toggle="tooltip">Change Profile Pic</span> </a>
                                         <input type="file" id="inputprofileImage" accept=".png,.jpg,.jpeg,.PNG,.JPG,.JPEG" class="upload hide" title="Click Here to Change Pic" data-toggle="tooltip">
                                    </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <a type="submit" onclick="document.forms['logoutForm'].submit()">
                        <i class="fa fa-lock" style="font-size:24px;color:white"></i>
                    </a>
                </li>
                 <!--  <button type="submit" onclick="document.forms['logoutForm'].submit()" class="mb-sm btn btn-success pull-right">Logout</button> -->
                </ul>
             </div>
            </div>
        
        <div class="row">
           <div class="col-lg-12">
		     <div class="col-lg-6">
                <div class="panel panel-default">
                  <h4 class="text-muted text-thin text-center">Profile Details</h4>
	               <form id="userProfileForm" class="mb-lg" modelAttribute="userProfile" method="post" action="saveUserPersonalInfo">
                   
                    <fieldset>
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4" >Father Name</label> 
							<input id="fatherName" name="fatherName" class="form-control" placeholder="Father Name" required minlength="2" maxlength="50" value="">
						</div>
						
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4" >SurName</label> 
							<input id="surName" name="surName" class="form-control" placeholder="SurName" required minlength="2" maxlength="50" value="">
						</div>
						
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4">Gender</label>
								<label for="" class="text-muted">&nbsp;</label>
									
								<label class="radio-inline c-radio"> 
								<input type="radio" name="gender" value="Male" checked>Male</label>
								<label class="radio-inline c-radio"> 
								<input type="radio" name="gender" value="Female">Female</label>
								<label class="radio-inline c-radio">
								 <input type="radio" name="gender" value="Other">Other
								</label>
									
					    </div>
							
							
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4" >Date of Birth</label> 
							<input id="dob" name="dob" class="form-control" placeholder="DD-MM-YYYY" required minlength="2" maxlength="50" value="">
						</div>
					
					
					
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4" >Age</label> 
							<input id="age" name="age" class="form-control" placeholder="Age" required minlength="2" maxlength="50" value="">
						</div>
					
					
					
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4" >Whatsapp No</label> 
							<input id="whatsupNum" name="whatsupNum" class="form-control" placeholder="Whatsapp No" required minlength="2" maxlength="50" value="">
						</div>
					
					
				
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4" >Landline No</label> 
							<input id="landlineNum" name="landlineNum" class="form-control" placeholder="Landline No" required minlength="2" maxlength="50" value="">
						</div>
					
					
				
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4" >Education / Qualification</label> 
							<input id="education" name="education" class="form-control" placeholder="Education / Qualification" required minlength="2" maxlength="50" value="">
						</div>
					
					
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-4" >Course Done related to film/Drama/Modeling</label> 
							<input id="course" name="course" class="form-control" placeholder="Course Done related to film/Drama/Modeling" required minlength="2" maxlength="50" value="">
						</div>
			        </fieldset> 
				    <fieldset>       
						<div class="form-group has-feedback">
							  <label for="" class="text-muted col-lg-4">Languages You know</label>
							  <label for="" class="text-muted">Language</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label for="" class="text-muted">Read</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label for="" class="text-muted">Write</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label for="" class="text-muted">Speak</label>
						  </div>
						 <div class="form-group has-feedback">
							  <label for="" class="text-muted col-lg-4"></label>
							  <input id="language" name="language" class="form-control-widths col-lg-2" placeholder="" required minlength="2" maxlength="50" value="Hindi">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Read"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Write"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Speak"></label>
						  <!-- <button type="button" id="addLanguageSlot" class="btn btn-success"><i class="fa fa-plus-circle" aria-hidden="true"></i></button> -->
						  </div>								  
				    </fieldset>
				    
				    <fieldset>
	                      <div class="form-group has-feedback">
						      <label for="" class="text-muted col-lg-4"></label>
							  <input id="language" name="language" class="form-control-widths col-lg-2" placeholder="" required minlength="2" maxlength="50" value="English">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Read"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Write"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Speak"></label>
						  </div>	
			        </fieldset>
			        
			        <fieldset>
	                      <div class="form-group has-feedback">
						      <label for="" class="text-muted col-lg-4"></label>
							  <input id="language" name="language" class="form-control-widths col-lg-2" placeholder="" required minlength="2" maxlength="50" value="Telugu">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Telugu"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Telugu"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Telugu"></label>
						  </div>
								  	
			         </fieldset>
			              
			         <fieldset>
	                      <div class="form-group has-feedback">
						      <label for="" class="text-muted col-lg-4"></label>
							  <input id="language" name="language" class="form-control-widths col-lg-2" placeholder="" required minlength="2" maxlength="50" value="Kannada">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Kannada"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Kannada"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <label class=" text-muted"><input type="checkbox" name="language" value="Kannada"></label>&nbsp;&nbsp;&nbsp;&nbsp;
							  <button type="button" id="addLanguageSlot" class="btn btn-success"><i class="fa fa-plus-circle" aria-hidden="true"></i></button>
						  </div>
			         </fieldset>
			              
			              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		                    <div class="form-group">
		                        <div class="row">
		                            <div class="col-xs-7">
		                            </div>
		                            <div class="col-xs-4">
		                            <input type="submit" id="saveUserPersonalInfo" class="btn btn-success" value="Update"/>
		                            </div>
		                        </div>
		                    </div>
                    </form>
                </div>
                
                <div class="panel panel-default">
                    <h4 class="text-muted text-thin text-center">Present Address</h4>
                      <form id="userAddressForm" class="mb-lg" modelAttribute="userProfile" method="post" action="saveUserAddressInfo">
                              <fieldset>
								<div class="form-group has-feedback">
									<label for="" class="text-muted col-lg-4">Address</label>
									<textarea name="localAddress" id="localAddress" placeholder="Address" class="form-control" maxlength="500"
									style="overflow: auto; resize: none" rows="4"
									aria-invalid="false"></textarea>
								</div>
							
								 <div class="form-group has-feedback">
									  <label for="" class="text-muted col-lg-4">Country</label>
									  <select id="localCountry" name="localCountry" class="form-control m-b">
									        <option value="India" selected="selected">India</option>
									        <option value="Afghanistan" >Afghanistan</option>
											<option value="Aland Islands">Aland Islands</option>
											<option value="Albania">Albania</option>
											<option value="Algeria">Algeria</option>
											<option value="Andorra">Andorra</option>
											<option value="Angola">Angola</option>
									  </select>
								 </div>
							
								<div class="form-group has-feedback">
								    <label for="" class="text-muted col-lg-4" >State</label> 
								    <input id="localState" name="localState" class="form-control" placeholder="State" required minlength="2" maxlength="50" value="">
						        </div>
					        
						        <div class="form-group has-feedback">
								    <label for="" class="text-muted col-lg-4" >District</label> 
								    <input id="localCity" name="localCity" class="form-control" placeholder="District" required minlength="2" maxlength="50" value="">
						        </div>
					        
						        <div class="form-group has-feedback">
								    <label for="" class="text-muted col-lg-4" >Zipcode/Postalcode</label> 
								    <input id="localZipPostalCode" name="localZipPostalCode" class="form-control" placeholder="Zipcode/Postalcode" required minlength="2" maxlength="50" value="">
						        </div>
					   	</fieldset>
					   	
						   <h4 class="text-muted text-thin text-center">Permanent  Address</h4> 
					   	
					   	<fieldset>
					    	<div class="form-group has-feedback">
								<label for="" class="text-muted col-lg-4">Address</label>
								<textarea name="permaAddress" id="permaAddress" placeholder="Address" class="form-control" maxlength="500"
								style="overflow: auto; resize: none" rows="4"
								aria-invalid="false"></textarea>
							</div>
							
							
							 <div class="form-group has-feedback">
								  <label for="" class="text-muted col-lg-4">Country</label>
								  <select id="parmaCountry" name="parmaCountry" class="form-control m-b ">
								        <option  value="India" selected="selected">India</option>
								        <option value="Afghanistan" >Afghanistan</option>
										<option value="Aland Islands">Aland Islands</option>
										<option value="Albania">Albania</option>
										<option value="Algeria">Algeria</option>
										<option value="Andorra">Andorra</option>
										<option value="Angola">Angola</option>
								  </select>
							</div>
							
							<div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-4" >State</label> 
							    <input id="permaState" name="permaState" class="form-control" placeholder="State" required minlength="2" maxlength="50" value="">
					        </div>
					        
					        <div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-4" >District</label> 
							    <input id="permaCity" name="permaCity" class="form-control" placeholder="District" required minlength="2" maxlength="50" value="">
					        </div>
					        
					         <div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-4" >Zipcode/Postalcode</label> 
							    <input id="permaZipPostalCode" name="permaZipPostalCode" class="form-control" placeholder="Zipcode/Postalcode" required minlength="2" maxlength="50" value="">
					        </div>
					        
					        <div class="form-group has-feedback">
								<label for="" class="text-muted col-lg-4">Comment</label>
								<textarea name="comment" id="comment" placeholder="Comment" class="form-control" maxlength="500"
								style="overflow: auto; resize: none" rows="3"
								aria-invalid="false"></textarea>
							</div>
					        
					        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					     </fieldset>
                         <div class="form-group">
	                        <div class="row">
	                            <div class="col-xs-7">
	                            </div>
	                            <div class="col-xs-4">
	                            <input type="submit" id="saveUserPersonalInfo" class="btn btn-success" value="Update"/>
	                            </div>
	                        </div>
                       </div>
                   </form>
               </div>
                
		     </div>
			         
			<!-- ========================================Physical Details================================          -->
			         
			<div class="col-lg-6">
			   <div class="panel panel-default">
                 <h4 class="text-muted text-thin text-center">Physical Details</h4>
			     <form id="userPhyDetailsForm" cssClass="form-horizontal" modelAttribute="userPhyDetails" method="post" action="saveUserPhyDetailsInfo">
                    <fieldset>
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-2 ">Complexion</label> 
						     <select id="complexion" name="complexion" class="form-control-width col-lg-3 m-b ">
							        <option  value="Normal" selected="selected">Normal</option>
							        <option value="Oily" >Oily</option>
									<option value="Drys">Dry</option>
									<option value="Sensitive">Sensitive</option>
									<option value="Combination">Combination</option>
						    </select>
						
						
							<label for="" class="text-muted col-lg-2" >SkinQuality</label> 
							<select id="skinQuality" name="skinQuality" class="form-control-width col-lg-3 m-b ">
							        <option  value="Normal" selected="selected">Normal Skin</option>
							        <option value="Oily" >Oily Skin</option>
									<option value="Drys">Dry Skin</option>
									<option value="Sensitive">Sensitive Skin</option>
									<option value="Combination">Combination Skin</option>
						    </select>
						
						</div>
					
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-2 ">Eye Color</label> 
						    <select id="eyeColor" name="eyeColor" class="form-control-width col-lg-3 m-b ">
							        <option  value="Lightblue" selected="selected">Light blue</option>
							        <option value="Iceblue" >Ice blue</option>
									<option value="Blue">Blue</option>
									<option value="Grey-blue">Grey-blue</option>
									<option value="White">White</option>
									<option value="Black">Black</option>
									<option  value="Grey">Grey</option>
									<option  value="Teal">Teal</option>
							        <option value="Icegreen" >Ice green</option>
									<option value="Green">Green</option>
									<option value="Grey-green">Grey-green</option>
									<option value="Palegold">Pale gold</option>
									<option  value="Yellow">Yellow</option>
							        <option value="Gold" >Gold</option>
									<option value="Orange">Orange</option>
									<option value="Brown">Brown</option>
									<option value="Darkbrow">Dark brown</option>
									<option value="Red">Red</option>
									<option value="Palepurple">Pale purple</option>
									<option  value="Purple">Purple</option>
							        <option value="Magenta" >Magenta</option>
									<option value="Orange">Brown & green</option>
								    <option value="Orange">Gold & green</option>
									<option value="Darkbrow">Albino</option>
									<option value="Darkbrow">Blind</option>
						    </select>
						
							<label for="" class="text-muted col-lg-2" >Height</label> 
							<input id="heightUnit" name="heightUnit" class="form-control-width col-lg-3" placeholder="Height" required minlength="2" maxlength="50" value="">
						</div>	
						
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-2 ">Weight</label> 
							<input id="weightUnit" name="weightUnit" class="form-control-width col-lg-3" placeholder="Weight" required minlength="2" maxlength="50" value="">
						
							<label for="" class="text-muted col-lg-2" >Physique</label> 
						    <select id="physique" name="physique" class="form-control-width col-lg-3 m-b ">
							        <option  value="Ectomorph" selected="selected">Ectomorph</option>
							        <option value="Mesomorph" >Mesomorph</option>
									<option value="Endomorph">Endomorph</option>
						    </select>
						
						</div>
						
						<div class="form-group has-feedback">
							<label for="" class="text-muted col-lg-2 ">Facial Hair</label> 
						    <select id="facialHair" name="facialHair" class="form-control-width col-lg-3 m-b ">
							        <option  value="Hollywoodian" selected="selected">Hollywoodian</option>
							        <option value="Muttonchops" >Mutton chops</option>
									<option value="Alasouvaror" >A la Souvaror</option>
									<option value="Frenchfork" >French Fork</option>
									<option value="Ducktail" >Ducktail</option>
									<option value="Fumanchu" >Fu Manchu</option>
									<option value="Olddutch" >Old Dutch</option>
									<option value="Dali" >Dali</option>
						    </select>
						
						
							<label for="" class="text-muted col-lg-2" >Hair Style</label> 
						   <select id="hairStyle" name="hairStyle" class="form-control-width col-lg-3 m-b ">
							        <option  value="Pompadourhaircut" selected="selected">Pompadour Haircut</option>
							        <option value="Comboverhaircut" >Comb Over Haircut</option>
									<option value="Crewcut" >Crew Cut</option>
									<option value="Caesarcut" >Caesar Cut</option>
									<option value="Tapercut" >Taper Cut</option>
									<option value="Inductioncut" >Induction Cut</option>
									<option value="Burrcut" >Burr Cut</option>
									<option value="Buzzcut" >Buzz Cut</option>
						    </select>
						
						</div>	
						
						<div class="form-group has-feedback">
						  <label for="" class="text-muted col-lg-2 ">Hair Color</label> 
						  <select id="hairColor" name="hairColor" class="form-control-width col-lg-3 m-b ">
							        <option  value="Natural" selected="selected">Natural</option>
							        <option value="Mahogany" >Mahogany</option>
									<option value="Ash" >Ash</option>
									<option value="Copper" >Copper</option>
									<option value="Golden" >Golden</option>
						    </select>
						
							<label for="" class="text-muted col-lg-2" >HairLength</label> 
						<select id="hairLength" name="hairLength" class="form-control-width col-lg-3 m-b ">
							        <option  value="Shaved" selected="selected">Shaved</option>
							        <option value="Short" >Short</option>
									<option value="Medium" >Medium</option>
									<option value="Long" >Long</option>
						    </select>
						</div>		
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				    </fieldset>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-7">
                            </div>
                            <div class="col-xs-4">
                            <input type="submit" id="saveUserDetailsInfo" class="btn btn-success" value="Update"/>
                            </div>
                        </div>
                    </div>
                </form>
			   </div>
			   
			    <div class="panel panel-default">
                 <h4 class="text-muted text-thin text-center">Work Experience Details</h4>
	                  <form id="userPhyExpForm" cssClass="form-horizontal" modelAttribute="userExpDetails" method="post" action="saveUserExpDetailsInfo">
	                 <fieldset>
					        <div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-6" >The Film Industry Worked in previously</label> 
							    <input id="filmIndworkPre" name="filmIndworkPre" class="form-control-text col-lg-2" placeholder="The Film Industry Worked in previously" required minlength="2" maxlength="50" value="">
							</div>
							
							<div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-6" >Name the Director you worked with</label> 
							    <input id="directorPre" name="directorPre" class="form-control-text col-lg-2" placeholder="Name the Director you worked with" required minlength="2" maxlength="50" value="">
							</div>
							
							<div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-6" >Name the Films worked in</label> 
							    <input id="filmName" name="filmName" class="form-control-text col-lg-2" placeholder="Name the Films worked in" required minlength="2" maxlength="50" value="">
							</div>
							
							<div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-6" >Name the Production House you worked for</label> 
							    <input id="phouseName" name="phouseName" class="form-control-text col-lg-2" placeholder="Name the Production House you worked for" required minlength="2" maxlength="50" value="">
							</div>
					    </fieldset>
					    
					    <fieldset>
							<div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-6" >Film Industry Intested in now</label> 
							    <input id="filmIndInterest" name="filmIndInterest" class="form-control-text col-lg-2" placeholder="Film Industry Intested in now" required minlength="2" maxlength="50" value="">
							</div>
							
							<div class="form-group has-feedback">
							    <label for="" class="text-muted col-lg-6" >Why do you want to work in Film Industry</label> 
							    <input id="whyFlimindWork" name="whyFlimindWork" class="form-control-text col-lg-2" placeholder="Why do you want to work in Film Industry" required minlength="2" maxlength="50" value="">
							</div>
							 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					    </fieldset>
	                 <div class="form-group">
	                        <div class="row">
	                            <div class="col-xs-7">
	                            </div>
	                            <div class="col-xs-4">
	                            <input type="submit" id="saveUserExpDetailsInfo" class="btn btn-success" value="Update"/>
	                            </div>
	                        </div>
	                    </div>
	                  </form>
	                </div>
				   </div>
		        </div>
		      </div>
	         </div>
	       </div>
	   
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
	</body>
	</html>

<!-- =====================================1======================================== -->
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextid" value="${pageContext.request.contextid}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextid}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextid}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if> --%>
    
    <!-- =====================================2======================================== -->
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="contextid" value="${pageContext.request.contextid}"/>
 
 <!DOCTYPE html>
<html>
<head>
<link href="${contextid}/resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${contextid}/resources/css/style3.css" />
</head>
<body>
<ul>
	 <div>
		 <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextid}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h1>Welcome to : ${pageContext.request.userPrincipal.name}</h1>
 		<li> <a class="active" onclick="document.forms['logoutForm'].submit()">Logout</a></li>
      </c:if>
	</div>
	</ul>
</body>
</html> --%>

