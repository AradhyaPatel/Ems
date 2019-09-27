

import java.io.IOException;

import java.util.List;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.college.dao.UserDaoImp;
import com.college.model.User;

/**
 * Servlet implementation class adminlogincontroller
 */

public class adminlogincontroller extends HttpServlet  {
	private static final long serialVersionUID = 1L;
       
    
    public adminlogincontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   String Email=	request.getParameter("Email").toString();
   String Password = request.getParameter("Password").toString();
   UserDaoImp dao=new UserDaoImp();
   User user=new User(Email,Password);
 
   
   RequestDispatcher rd;
   boolean flag = dao.isValidUser(user); 
   System.out.println(flag);
   
   if(flag==true) {
	   request.setAttribute("msg","login Success");
	   rd = request.getRequestDispatcher("details.jsp");
	  //rd.include(request, response);
//	   UserDaoImp gd=new UserDaoImp();
//	   User usr= new User();
//	   usr.setEmail(Email);
//	   User res=gd.getDetail(usr);
//	   request.setAttribute("usr", res);
   }
   else
   {
	   request.setAttribute("msg","login fail");
	   System.out.println("login failed");
	   rd= request.getRequestDispatcher("EmployeeLogin.jsp");
   }
	   rd.forward(request, response);
   }
	
	
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

}
