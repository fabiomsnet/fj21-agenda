package br.com.caelum.agenda.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HoraAtualSistema", urlPatterns = {"/hora", "/hour"})
public class HoraServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
		Date d = new Date();
		String html = "<html>";
			html += "<body>";
			html += "<h1>Hora atual: </h1>";
			String horaFormatada = sdf.format(d);
			html += "<p>" + horaFormatada + "</p>";
			html += "</body>";
			html += "</html>";
			
		PrintWriter pw = res.getWriter();
		pw.println(html);
	}
}
