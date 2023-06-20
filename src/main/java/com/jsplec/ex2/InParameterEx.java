package com.jsplec.ex2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class InParameterEx
 */
@WebServlet(urlPatterns={"/InParameterEx"},initParams= {@WebInitParam(name="dbId",value="abcde"),@WebInitParam(name="dbPwd",value="dbPwd")})
public class InParameterEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InParameterEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String dbId=getInitParameter("dbId");
		String dbPwd=getInitParameter("dbPwd");
		String dbSid=getInitParameter("dbSid");
		String testId=getInitParameter("testId");
		
		PrintWriter pw = response.getWriter();
        
        pw.println("<html>");
        pw.println("<head>");
        pw.println("</head>");
        pw.println("<body>");
        pw.println("<h1>Hello World!!</h1>");
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
