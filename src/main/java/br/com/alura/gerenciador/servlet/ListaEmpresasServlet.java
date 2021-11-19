package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

@WebServlet(urlPatterns = "/listaEmpresas")
public class ListaEmpresasServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4816248529445466605L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Banco banco = new Banco();
		List<Empresa> lista = banco.getEmpresas();
		
		req.setAttribute("empresas", lista);
		RequestDispatcher rd = req.getRequestDispatcher("/listaEmpresas.jsp");
		rd.forward(req, resp);
	} 
}
