package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

/**
 * Servlet implementation class ListaContatosServlt
 */
@WebServlet("/listaContatos")
public class ListaContatosServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<table>");

		ContatoDao dao = new ContatoDao();
		List<Contato> lista = dao.getLista();
		SimpleDateFormat dataFormat = new SimpleDateFormat("dd/MM/yyyy");
		for (Contato contato : lista) {
			out.println("<tr>");
			out.println("<td>" + contato.getNome() + "<td>");
			out.println("<td>" + contato.getEmail() + "<td>");
			out.println("<td>" + dataFormat.format(contato.getDataNascimento().getTime()) + "<td>");
			out.println("</tr>");
		}

		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
	}

}
