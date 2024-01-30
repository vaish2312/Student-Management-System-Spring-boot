package com.demo.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;   
	    private String name;
		private String email;
		private String phone;
		private String age;
		private String city;
	    private String branch;
	    private double fee;
	    private String year;
	    
	    
	    private String username;
	    private String password;
	    
	    
		@Override
		public String toString() {
			return "Admin [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", age=" + age
					+ ", city=" + city + ", branch=" + branch + ", fee=" + fee + ", year=" + year + ", username="
					+ username + ", password=" + password + "]";
		}
		public Admin(int id, String name, String email, String phone, String age, String city, String branch,
				double fee, String year, String username, String password) {
			super();
			this.id = id;
			this.name = name;
			this.email = email;
			this.phone = phone;
			this.age = age;
			this.city = city;
			this.branch = branch;
			this.fee = fee;
			this.year = year;
			this.username = username;
			this.password = password;
		}
		public Admin() {
			super();
			// TODO Auto-generated constructor stub
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getAge() {
			return age;
		}
		public void setAge(String age) {
			this.age = age;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getBranch() {
			return branch;
		}
		public void setBranch(String branch) {
			this.branch = branch;
		}
		public double getFee() {
			return fee;
		}
		public void setFee(double fee) {
			this.fee = fee;
		}
		public String getYear() {
			return year;
		}
		public void setYear(String year) {
			this.year = year;
		}
		
	    

	    
	

	
	
}
