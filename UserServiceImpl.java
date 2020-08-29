package com.taxcpc.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taxcpc.model.User;
import com.taxcpc.repo.UserRepository;
import com.taxcpc.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserRepository userRepo;
	
	@Override
	public Optional<User> fetchUserById(Integer id) {
		return userRepo.findById(id);
	}

	@Override
	public void saveUser(User user) {
		userRepo.save(user);
		
	}
	
	@Override
	public Boolean isLoginIdExist(String userLoginId) {
		Long count = userRepo.isLoginIdExist(userLoginId);
		return count>0?true:false ;
	}

	@Override
	public Optional<User> findUserByUserLogId(String userLogId) {
		return userRepo.findByUserLogId(userLogId);
	}

	@Override
	public Optional<User> findUserByResetToken(String resetToken) {
		return userRepo.findByResetToken(resetToken);
	}
	
	

}
