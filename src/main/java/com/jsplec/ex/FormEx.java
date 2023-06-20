package com.jsplec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx
 */
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    response.getWriter().append("Served at: ").append(request.getContextPath());
//	      request.setCharacterEncoding("UTF-8"); post방식의 문자 set방식
	      
	      String name = request.getParameter("name");
	      String id = request.getParameter("id");
	      String paswd = request.getParameter("paswd");
	      String hobby = request.getParameter("hobby");
	      response.setContentType("text/html; charset=UTF-8");
	      PrintWriter pw = response.getWriter();
	      
	      pw.println("<html>");
	       pw.println("<head>");
	       pw.println("</head>");
	       pw.println("<body>");
	       pw.println("<h1>Hello World!!</h1>");
	       pw.println("<p>Name: " + name + "</p>");
	       pw.println("<p>ID: " + id + "</p>");
	       pw.println("<p>Password: " + paswd + "</p>");
	       pw.println("<p>Hobby: " + hobby + "</p>");
	       pw.println("</body>");
	       pw.println("</html>");
	   }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	    System.out.println("doPost");
//	    request.setCharacterEncoding("UTF-8");
	      
	      String name = request.getParameter("name");
	        String id = request.getParameter("id");
	        String paswd = request.getParameter("paswd");
	        String[] hobby = request.getParameterValues("hobby");
	        System.out.println("name: " + name + "|  id: " + id + "|  paswd: " + paswd);
	        System.out.println("hobby: " + Arrays.toString(hobby));
	        
	        response.setContentType("text/html; charset=UTF-8");
	        PrintWriter pw = response.getWriter();
	        
	        pw.println("<html>");
	        pw.println("<head>");
	        pw.println("</head>");
	        pw.println("<body>");
	        pw.println("<h1>Hello World!!</h1>");
	        pw.println("<p>Name: " + name + "</p>");
	        pw.println("<p>ID: " + id + "</p>");
	        pw.println("<p>Password: " + paswd + "</p>");
	        pw.println("<p>Hobby: " + hobby + "</p>");
	        pw.println("</body>");
	        pw.println("</html>");
	   }
	}
