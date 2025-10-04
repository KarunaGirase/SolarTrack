package com.solarTrack.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solarTrack.dao.AdminDao;
import com.solarTrack.model.Admin;
@Controller
public class AdminController {
	
	@RequestMapping("/")
	public String openWelcome() {
		System.out.println("Opening login page..");
		return "index";
	}
	@RequestMapping("/index")
	public String openLogin(){
		return "index";
	}
	
	@RequestMapping("/admin")
	public String AdminLogin(){
		return "admin";
	}
	@RequestMapping(path="/AdminLogin", method=RequestMethod.POST)
	public String submitLogin(HttpServletRequest request){
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if(email.equals("admin@gmail.com")&& password.equals("admin")){
			return "admindashboard";
		}
		else{
		return "index";
	}
	}
	

	
}
