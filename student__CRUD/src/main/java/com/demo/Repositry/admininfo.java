package com.demo.Repositry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.Model.Admin;

public interface admininfo extends JpaRepository<Admin,Integer>{

	Admin findByName(String username);



}
