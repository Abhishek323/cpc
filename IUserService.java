package com.taxcpc.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taxcpc.model.User;
import com.taxcpc.repo.UserRepository;

public interface IUserService {
		
	public Optional<User> fetchUserById(Integer id);
	public void saveUser(User user);
	public Boolean isLoginIdExist(String userLoginId);
	
    public Optional<User> findUserByUserLogId(String userLogId);
    public Optional<User> findUserByResetToken(String resetToken);
    

}
