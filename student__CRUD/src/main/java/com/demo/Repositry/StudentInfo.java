package com.demo.Repositry;

import org.springframework.data.jpa.repository.JpaRepository;


import com.demo.Model.Student;

public interface StudentInfo extends JpaRepository<Student,Integer>{
	public Student findByemail( String email);

}
