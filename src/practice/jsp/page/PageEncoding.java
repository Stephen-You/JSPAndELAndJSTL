package practice.jsp.page;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Ìø×ªµ½pageEncoding.jsp
 * @author Yorick
 *
 */
@WebServlet("/PageEncoding")
public class PageEncoding extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("/JSPAndELAndJSTL/pageEncoding.jsp");
	}

}
