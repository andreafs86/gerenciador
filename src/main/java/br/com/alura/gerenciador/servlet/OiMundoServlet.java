package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/oi")
public class OiMundoServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -398178193117594167L;

	public OiMundoServlet() {
		System.out.println("Criand Oi Mundo Servlet");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PrintWriter out = resp.getWriter();
		out.println("<html><body>oi mundo, parabens vc escreveu o primeiro serlet.</body></html>");
		
		System.out.println("o servlet OiMundoServlet foi chamada");
	}
}
