package com.college.model;
import java.util.*;
public class User {
	private String FirstName;
	private String LastName;
	private Date dob;
	private String Gender;
	private String ContactNumber;
	private String Department;
	private String Email;
	private String Password;
	
	
 public User(String Email, String Password) {
	 super();
	 this.Email=Email;
	 this.Password=Password;
 }
   public User() {
	   super();
   }
   public User(String FirstName,String LastName,Date dob, String Gender, String ContactNumber, String Department, String Email, String Password) {
	   super();
	   this.FirstName=FirstName;
	   this.LastName=LastName;
	   this.dob=dob;
	   this.Gender=Gender;
	   this.ContactNumber=ContactNumber;
	   this.Department=Department;
	   this.Email=Email;
	   this.Password=Password;
	  }
   public String getFirstName() {
	   return FirstName;
   }
   public void setFirstName(String FirstName) {
	 this.FirstName=FirstName;  
   }
   public String getLastName() {
	   return LastName;
   }
   public void setLastName(String LastName) {
	 this.LastName=LastName;  
   }
   public Date getdob() {
	   return dob;
   }
   public void setdob(Date dob) {
	 this.dob=dob;  
   }
   public String getGender() {
	   return Gender;
   }
   public void setGender(String Gender) {
	 this.Gender=Gender;  
   }
   public String getContactNumber() {
	   return ContactNumber;
   }
   public void setContactNumber(String ContactNumber) {
	 this.ContactNumber=ContactNumber;  
   }
   public String getDepartment() {
	   return Department;
   }
   public void setDepartment(String Department) {
	 this.Department=Department;  
   }
   public String getEmail() {
	   return Email;
   }
   public void setEmail(String Email) {
	 this.Email=Email;  
   }
   public String getPassword() {
	   return Password;
   }
   public void setPassword(String Password) {
	 this.Password=Password;  
   }
   public User(String Email) {
	   super();
	   this.Email=Email;
   }
   
}
