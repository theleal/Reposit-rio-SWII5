/* SWII5- Trabalho Pr�tico 02
Bruna Helena Silva Santos CB3016111
Marcelo Modesto de Lima Junior CB3015823
*/

package br.com.tp02.produto.servlet;
	import java.io.IOException;
	import java.io.PrintWriter;

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;


	@WebServlet("/Creditos")
	public class Creditos extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1>Instituto Federal de S�o Paulo - Cubat�o</h1>");
			out.println("<h2>Disciplina SISTEMAS WEB I - TP02</h2>");
			out.println("<h1>Alunos:</h1>");
			out.println("<h2>Luiz Gustavo Leal Cortez CB3015386</h2>");
			out.println("<h2>Rodrigo Rebelo da Costa CB3016871</h2>");
			out.println();
			out.println("<a href='produto.html'>Inicio</a>");
			out.close();
		}
	}
	
