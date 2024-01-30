package com.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.Model.Admin;
import com.demo.Repositry.StudentInfo;
import com.demo.Repositry.admininfo;

import jakarta.servlet.http.HttpSession;

@Controller
public class admin_handler {
	@Autowired
	private admininfo repo;
	
	@GetMapping("/")
	public String home()
	{
		return "home";
	}
	
	 private static final String FIXED_ADMIN_USERNAME = "admin";
	    private static final String FIXED_ADMIN_PASSWORD = "admin";

	    @RequestMapping("/adminlogin")
	    public String adminLogin(@RequestParam String username, @RequestParam String password, HttpSession session) {
	 
	        Admin admin = repo.findByName(username);

	        if (admin != null && admin.getPassword().equals(password) &&
	            admin.getUsername().equals(FIXED_ADMIN_USERNAME) && password.equals(FIXED_ADMIN_PASSWORD)) {
	            session.setAttribute("admin", admin);
	            return "redirect:/home"; 
	        } else {
	            return "admin_view"; 
	        }
	    }


}
