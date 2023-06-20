package com.jsplec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet("/HWorld")
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorld() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("HelloWorld!!!");
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter pw=response.getWriter();
		
		pw.println("<html>");
		pw.println("<head>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h1>GET 방식으로 호출되었습니다. HelloWorld</h1>");
		pw.println("</body>");
		pw.println("</html>");
		
		pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	    System.out.println("doPost");
	       
       response.setContentType("text/html; charset=euc-kr");
       PrintWriter pw = response.getWriter();
       
       pw.println("<html>");
       pw.println("<head>");
       pw.println("</head>");
       pw.println("<body>");
       pw.println("<h1>POST 방식으로 호출되었습니다. HelloWorld!!!</h1>");
       pw.println("</body>");
       pw.println("</html>");
       
       pw.close();
	}

}
