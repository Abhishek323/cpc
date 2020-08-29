package com.taxcpc.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.taxcpc.model.User;

public interface UserRepository extends JpaRepository<User,Integer> {

	@Query("select count(userId) from com.taxcpc.repo.UserRepository where userLogId = ?1 ")
	public Long isLoginIdExist(String userLoginId);
	
	Optional<User> findByUserLogId(String userLogId);
	Optional<User> findByResetToken(String resetToken);


}
