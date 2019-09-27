

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.college.dao.UserDao;
import com.college.dao.UserDaoImp;
import com.college.model.User;
/**
 * Servlet implementation class RegistrationController
 */

public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//read the data from HTTP Request
				String FirstName=request.getParameter("FirstName");
				String LastName=request.getParameter("LastName");
				String dob=request.getParameter("dob");
				String Gender=request.getParameter("Gender");
				String ContactNumber=request.getParameter("ContactNumber");
				String Department=request.getParameter("Department");
				String Email=request.getParameter("Email");
				String Password=request.getParameter("Password");
				//create the user object
				User user=new User();
				user.setFirstName(FirstName);
				user.setLastName(LastName);
				Date dateofBirth=null;
				SimpleDateFormat sdf=new SimpleDateFormat("dd/mm/yyyy");
				user.setGender(Gender);
				user.setContactNumber(ContactNumber);
				user.setDepartment(Department);
				user.setEmail(Email);
				user.setPassword(Password);
				try {
					dateofBirth=sdf.parse(dob);
				}
				catch(ParseException e) {
					//TODO Auto-generated catch block
					System.out.println(e);
				}
				user.setdob(dateofBirth);
				//set the data to user object
				//create the Dao object
				System.out.println("value entered");
				UserDao dao=new UserDaoImp();
				String res=dao.insert(user);
				System.out.println(res);
				//doGet(request, response);
			RequestDispatcher rd=request.getRequestDispatcher("Registration.jsp");
			rd.forward(request, response);
			if(res.equals("Success")) {
				request.setAttribute("msg","Inserted Success");
			}
			else {
				request.setAttribute("msg", "Inserted fail");
			}
			
			
			}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
		
	
	
	}
}


