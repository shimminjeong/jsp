package com.jsplec.ex2;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InParameterEx2
 */
public class InParameterEx2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InParameterEx2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String dbId=getServletContext().getInitParameter("dbId");
        String dbPwd=getServletContext().getInitParameter("dbPwd");
        String dbSid=getServletContext().getInitParameter("dbSid");
        String testId=getServletContext().getInitParameter("testId");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter pw = response.getWriter();

        
        pw.println("<html>");
        pw.println("<head>");
        pw.println("</head>");
        pw.println("<body>");
        pw.println("<h1> contextparam servlet 페이지 입니다.!!</h1>");
        pw.println("<p>dbId: " + dbId + "</p>");
        pw.println("<p>dbPwd: " + dbPwd + "</p>");
        pw.println("<p>dbSid: " + dbSid + "</p>");
        pw.println("<p>testId: " + testId + "</p>");
        pw.println("</body>");
        pw.println("</html>");
        
        pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
