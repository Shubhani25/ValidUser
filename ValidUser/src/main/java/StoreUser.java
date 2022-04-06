

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class StoreUser extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String s1 = request.getParameter("t1");
		String s2 = request.getParameter("t2");
		
		HttpSession session = request.getSession();
		boolean invalid=false;
		
		if(s1.length()==0) {
			invalid=true;
			session.setAttribute("errName", "Missing Name");
		}
		
		try {
			int x = Integer.parseInt(s2);
		}
		catch(Exception e) {
			invalid = true;
			session.setAttribute("errAge", "Invalid Age");
		}
		
		if(invalid==true) {
			response.sendRedirect("index.jsp");
		}
		
		out.println("Details of user:");
		out.println("Name: "+s1);
		out.println("Age: "+s2);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
