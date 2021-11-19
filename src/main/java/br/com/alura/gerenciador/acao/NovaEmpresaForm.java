package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NovaEmpresaForm implements Acao{

	public String executa(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("ação nova empresa formulário");
		
		return "forward:formNovaEmpresa.jsp";
	}
}
