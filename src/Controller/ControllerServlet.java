package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Service.Service;
import bean.babySitter;
import bean.toddler;
/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Registration"))
		{
			ArrayList<String> al=new ArrayList<String>();
			try {
				al=Service.getBabySitterName();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(al);
			request.setAttribute("BabySitterName", al);
			RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
		else if(action.equalsIgnoreCase("registerDetails"))
		{
			int id=Integer.parseInt(request.getParameter("toddlerid"));
			String name=request.getParameter("toddlerName");
			int age=Integer.parseInt(request.getParameter("toddlerAge"));
			String babySitterName=request.getParameter("BabySitter");
			toddler td=new toddler();
			td.setId(id);
			td.setAge(age);
			td.setToddlerName(name);
			int status=0;
			try {
				status=Service.register(td, babySitterName);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(status>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("SuccessRegistration.jsp");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
				rd.forward(request, response);
			}
			
			
			
		}
		else if(action.equalsIgnoreCase("ViewDetails"))
		{
			HashMap<toddler, babySitter> hm=new HashMap<toddler, babySitter>();
			try {
				hm=Service.view();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("HashMap", hm);
			RequestDispatcher rd=request.getRequestDispatcher("ViewDetails.jsp");
			rd.forward(request, response);
		}
		else if(action.equalsIgnoreCase("updateLink"))
		{
			String name=request.getParameter("name");
			int id=Integer.parseInt(request.getParameter("id"));
			int age=Integer.parseInt(request.getParameter("age"));
			String babySitterName=request.getParameter("babySitterName");
			request.setAttribute("name", name);
			request.setAttribute("id", id);
			request.setAttribute("age", age);
			request.setAttribute("babySitterName", babySitterName);
			RequestDispatcher rd=request.getRequestDispatcher("ViewUpdateDetails.jsp");
			rd.forward(request, response);
			
		}
		else if(action.equalsIgnoreCase("updateSta"))
		{
			String toddlerName=request.getParameter("toddlerName");
			String babySitterName=request.getParameter("babySitterName");
			int id=Integer.parseInt(request.getParameter("id"));
			int status=0;
			try {
				status=Service.updateFinal(id, toddlerName, babySitterName);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(status>0)
			{
				request.setAttribute("id", status);
				RequestDispatcher rd=request.getRequestDispatcher("UpdateSuccess.jsp");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
				rd.forward(request, response);
			}
			
		}
		
		
		}

}
