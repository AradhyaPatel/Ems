package com.college.dao;
import java.sql.*;
import java.util.*;
import java.util.Date;

import com.college.dbutil.MyConnection;
import com.college.model.User;
public class UserDaoImp implements UserDao {
	private Connection conn=new MyConnection().getConn();
	private String dbPassword;
	private String dbEmail;
	public String insert(User user) {
		String res="Fail";
		String sql="insert into emptbl(FirstName,LastName,dob,Gender,ContactNumber,Department,Email,Password) values(?,?,?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			//Statement Creation
			ps=conn.prepareStatement(sql);
			//Set The parameter value
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setDate(3,new java.sql.Date(user.getdob().getTime()));
			ps.setString(4, user.getGender());
			ps.setString(5, user.getContactNumber());
			ps.setString(6, user.getDepartment());
			ps.setString(7, user.getEmail());
			ps.setString(8, user.getPassword());
			//Execute the Statement
			int r=ps.executeUpdate();
			if(r>0) {
				res="Success";
			}
		} catch(SQLException e) {
			System.out.println(e);
		}
		return res;
			}
public List<User>getAll(){
	List<User> list=new ArrayList<User>();
	String sql="select * from emp";
	Statement stmt=null;
	ResultSet rs=null;
	try {
		//Create the Statement----2
		stmt=conn.createStatement();
		//execute the statement-----3
		rs=stmt.executeQuery(sql);
		//process the result
		while(rs.next())
		{
		//read column value
			String FirstName=rs.getString("FirstName");
			String LastName=rs.getString("LastName");
			Date dob=rs.getDate("dob");
			String Gender=rs.getString("Gender");
			String ContactNumber=rs.getString("ContactNumber");
			String Department=rs.getString("Department");
			String Email=rs.getString("Email");
    		String Password=rs.getString("Password");
			//create employee
			User u= new User(FirstName,LastName,dob,Gender,ContactNumber,Department,Email,Password);
			//add to the list
			list.add(u);
		}
	}catch(SQLException e) {
		System.out.println(e);
	}
	return list;
}

public User getDetail(User user) {
	// TODO Auto-generated method stub
	return null;
}

public boolean isValidUser(User user) {
	boolean flag=false;
	String Email=user.getEmail();
	String Password=user.getPassword();
	dbEmail = null; 
	dbPassword = null;
	
	
	String sql="select Email,Password from emptbl where Email='" +Email+"';";
    Statement stmt=null;
    ResultSet rs=null;
	try {
		//Create the Statement----2
		stmt=conn.createStatement();
		//execute the statement-----3
		rs=stmt.executeQuery(sql);
		System.out.println("sql " + sql);
		//process the result
		if(rs.next())
		{
			dbEmail=rs.getString("Email");
			dbPassword=rs.getString("Password");
		}
		
          System.out.println(dbEmail +" :: "+dbPassword);
		if((dbEmail.contentEquals(Email)) && (dbPassword.contentEquals(Password))) {
			flag = true;
		}else {
			flag = false;
		}
	}
		catch(SQLException e) {
			System.out.println(e);
		}
		return flag;
	
}

}


