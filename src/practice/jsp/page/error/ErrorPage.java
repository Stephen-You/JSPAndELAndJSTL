package practice.jsp.page.error;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ��ת��in.jspҳ��
 * @author Yorick
 *
 */
@WebServlet("/ErrorPage")
public class ErrorPage extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("/JSPAndELAndJSTL/in.jsp");
	}

}
