package com.a2z.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2z.domain.PhysicalDetails;
import com.a2z.domain.UserProfile;
import com.a2z.repo.UserProfileDetailsRepository;
import com.a2z.repo.UserProfileRepository;
import com.a2z.service.UserProfileService;

@Service
public class UserProfileServiceImpl implements UserProfileService {
	
	@Autowired
	private UserProfileDetailsRepository userProfileDetailsRepository;
	
	@Autowired
    private UserProfileRepository userProfileRepository;
	
	
	
	
	public void userPersonalInfo(UserProfile userProfile) {
		userProfileRepository.save(userProfile);
	}
	
	public void userPhysicalDetailsInfo(PhysicalDetails physicalDetails){
		userProfileDetailsRepository.save(physicalDetails);
	}
	/*@Transactional(readOnly = false)
	public String updateUserAccount(User user) {
		
		return userProfileDaoTO.updateUserAccount(user);
	}

	public UserProfile getUser(Long userId) {
		return userProfileDaoTO.getUser(userId);
	}*/
}
