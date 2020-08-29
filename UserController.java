package com.taxcpc.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taxcpc.config.EmailConfig;
import com.taxcpc.model.User;
import com.taxcpc.service.IClientMastService;
import com.taxcpc.service.IRoleService;
import com.taxcpc.service.IUserService;
import com.taxcpc.util.CommonUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IRoleService roleService;
	
	@Autowired
	private IClientMastService clientMastService;
	
	@Autowired
	private EmailConfig emailConfig;
	
	
	// Drop Down for roles model
	private void commonUi(Model model) {
		// Fetch roleId and roleName from Role table
		List<Object[]> roleList = roleService.findRoleIdAndRoleNameFromRole();
		// Converting List into Map 
		Map<Integer,String> roleMap = CommonUtil.convert(roleList);
		// Send Map to Ui
		model.addAttribute("roleMap", roleMap);
	}
	
	//  Show User Register form
	@GetMapping("/show")
	public String showRegisterPage(Model model,@ModelAttribute User user) {
		// Send user object on ui
		model.addAttribute("user", new User());
		// Calling method for role drop down
		commonUi(model);
		// List of client code fetch from db
		List<String> clientList = clientMastService.getClientCode();
		// Send client list on ui
		model.addAttribute("clientList",clientList);
		return "userRegister";
	}
	
	// Save User Register form
	@PostMapping("/save")
	public String saveUser(Model model, @ModelAttribute User user) {
		// Calling save method to save user details
		userService.saveUser(user);
		// Sending success msg to ui
		model.addAttribute("msg",  "'"+user.getUserName()+"' has been successfully created");
		return "userRegister";
	}
	
	@GetMapping("/checkloginid")
	public @ResponseBody String validateUserLoginId(
			     @RequestParam("loginId") String userLoginId) {
		String msg = "";
		if(userService.isLoginIdExist(userLoginId)) {
			msg = "Login Id '"+userLoginId+"' already exist";
		}
		return msg;
	}
	
	@GetMapping("/forgot")
	public String showForgetPassPage(Model model,@ModelAttribute User user) {
		model.addAttribute("user", new User());
		return "ForgotPassword";
	}
		
	@PostMapping("/checkadd")
	public String processForgotPasswordForm(Model model, @RequestParam("email") String userEmail,@ModelAttribute User user1, HttpServletRequest req ) {
	
		// check user in database by email
		Optional<User> optional = userService.findUserByUserLogId(userEmail);
		if(!optional.isPresent()) {
			model.addAttribute("errorMessage", "We didn't find an account for that e-mail address.");
		}else {
			// Generate random 36-character string token for reset password
			User user = optional.get();
			user.setResetToken(UUID.randomUUID().toString());
			
			// Save token to database
			userService.saveUser(user);
			
			String appUrl = req.getScheme() + "://" + req.getServerName();
			
			//send mail
			emailConfig.sendMail("", userEmail, "Password Reset" , "To reset your password, click the link below:\n" + appUrl
					+ "/reset?token=" + user.getResetToken());
			model.addAttribute("successMessage", "A password reset link has been sent to " + userEmail);
				
			}
		return "ForgotPassword";
		}
	
	}
	


