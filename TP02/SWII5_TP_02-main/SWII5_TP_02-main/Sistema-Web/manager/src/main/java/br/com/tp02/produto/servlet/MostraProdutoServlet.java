/* SWII5- Trabalho Pr�tico 02
Bruna Helena Silva Santos CB3016111
Marcelo Modesto de Lima Junior CB3015823
*/

package br.com.tp02.produto.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MostraProduto")
public class MostraProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
		String paramId=request.getParameter("id");
		Integer id= Integer.valueOf(paramId);
		
		Produtos banco=new Produtos();
		
		Produto produto=banco.buscarProdutoPeloId(id);
		
		System.out.println(produto.getNome());
		
		request.setAttribute("produto", produto);
		
		RequestDispatcher rd= request.getRequestDispatcher("/formAlteraProduto.jsp");
		rd.forward(request, response);
	}
}