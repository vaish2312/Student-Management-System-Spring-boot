package com.demo.Controller;

import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.Model.Student;
import com.demo.Repositry.StudentInfo;

import jakarta.servlet.http.HttpSession;

@Controller
public class student_handler {
	
//home 
	@Autowired
	private StudentInfo repo;
	
	@RequestMapping("/")
	public String home()
	{
		return "home";
	}
	
	//to add data
	@RequestMapping("/addstudent")
	public String addstudent(@ModelAttribute Student student) {
		System.out.println(student.getId());
		System.out.println(student.getName());
		System.out.println(student.getEmail());
		System.out.println(student.getPassword());
		
		
		repo.save(student);
		
		return "redirect:/get";
	}

	
	//to show data
	@RequestMapping("/get")
	public String getdata(Model m)
	{
		java.util.List<Student> al=repo.findAll();
		
		m.addAttribute("e_data",al);
		
		System.out.println(al);
		return "sucsess";
	}

	
	//to delete data
	@RequestMapping("/{id}")
	public String deleteuser(@PathVariable int id)
	{
		repo.deleteById(id);
		
		return "redirect:/get";
	}
	
	
	
	//to update data
	@RequestMapping("/edit/{id}")
	public String editform(@PathVariable int id,Model m)
	{
		Student ob=repo.findById(id).get();
		
		m.addAttribute("std1",ob);
		return "editform";
	}
	
	@RequestMapping("/update/{id}")
	public String updatedata(@PathVariable int id, @ModelAttribute Student us)
	{
		Student user=repo.findById(id).orElse(null);
		
		if(user!=null)
		{
			user.setName(us.getName());
			user.setEmail(us.getEmail());
			user.setPassword(us.getPassword());
			
			repo.save(user);
		}
		return "redirect:/get";
	}
	
	
	
	//login page
	@RequestMapping("/login")
	public String login(@RequestParam String email,@RequestParam String password,HttpSession login) {
		
		Student st =repo.findByemail(email);
		if(st != null &&  st.getEmail().equals(email) && st.getPassword().equals(password)) {
			login.setAttribute("login", st);
			return "redirect:/get"; //to land on student table
		}
		else {
		
		return "Registration";
		}
		
		
		
	}

	
}
