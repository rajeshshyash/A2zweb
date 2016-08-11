package com.a2z.controller;
/*
 *  UserProfileService Controller  */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a2z.domain.PhysicalDetails;
import com.a2z.domain.User;
import com.a2z.domain.UserProfile;
import com.a2z.service.UserProfileService;
import com.a2z.service.UserService;

@Controller
public class UserProfileController {
	
	/*
     *  UserProfileService for All UsesProfileDetails methods  */
	@Autowired
	private UserProfileService userProfileServiceTO;
	
	
	/*
     *  SaveuserProfile personal info Methods  */
	@RequestMapping(value = "/saveUserPersonalInfo", method = RequestMethod.POST)
    public String saveUserPersonalInfo(@ModelAttribute("userProfileForm") UserProfile userProfile, Model model) {
		userProfileServiceTO.userPersonalInfo(userProfile);
        return "redirect:/login";
    }
	
	/*
     *  SaveuserProfile Address info Methods  */
	@RequestMapping(value = "/saveUserAddressInfo", method = RequestMethod.POST)
    public String saveUserAddressInfo(@ModelAttribute("userAddressForm") UserProfile userProfile, Model model) {
		userProfileServiceTO.userPersonalInfo(userProfile);
        return "redirect:/login";
    }
	
	/*
     *  SaveuserProfile PhyDetailsInfo Methods  */
	@RequestMapping(value = "/saveUserPhyDetailsInfo", method = RequestMethod.POST)
    public String saveUserPhyDetailsInfo(@ModelAttribute("userPhyDetailsForm") PhysicalDetails physicalDetails, Model model) {
		userProfileServiceTO.userPhysicalDetailsInfo(physicalDetails);
        return "redirect:/login";
    }
	
	/*
     *  SaveuserProfile PhyDetailsInfo for  Experienced Methods  */
	@RequestMapping(value = "/saveUserExpDetailsInfo", method = RequestMethod.POST)
    public String saveUserExpDetailsInfo(@ModelAttribute("userPhyExpForm") PhysicalDetails physicalDetails, Model model) {
		userProfileServiceTO.userPhysicalDetailsInfo(physicalDetails);
        return "redirect:/login";
    }

}
