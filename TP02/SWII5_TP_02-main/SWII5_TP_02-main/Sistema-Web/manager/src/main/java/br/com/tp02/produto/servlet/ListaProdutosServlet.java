/* SWII5- Trabalho Pr�tico 02
Bruna Helena Silva Santos CB3016111
Marcelo Modesto de Lima Junior CB3015823
*/

package br.com.tp02.produto.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

	@WebServlet("/ListaProdutos")
public class ListaProdutosServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		Produtos banco=new Produtos();
		List<Produto> lista=banco.getProdutos();
		
		request.setAttribute("produto", lista);
		
		RequestDispatcher rd=request.getRequestDispatcher("/listaProdutos.jsp");
		rd.forward(request, response);	
	}	
}