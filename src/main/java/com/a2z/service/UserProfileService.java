package com.a2z.service;

import com.a2z.domain.PhysicalDetails;
import com.a2z.domain.UserProfile;

public interface UserProfileService {
	public void userPersonalInfo(UserProfile userProfile);
	public void userPhysicalDetailsInfo(PhysicalDetails physicalDetails);
	//String updateUserAccount(User user);
	//UserProfile getUser(Long userId);
}
