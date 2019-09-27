package com.college.dao;

import java.util.*;

import com.college.model.User;

public interface UserDao {
	 
		public  String insert(User user);
		public  List<User> getAll();
	    public User getDetail(User user);
		public boolean isValidUser(User user);
}
