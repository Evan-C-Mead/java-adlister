import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DadJokeServlet", urlPatterns = "/dadjoke")
public class DadJokeServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

//		http://localhost:8080/dadjoke?joke=awesome
		String joke = request.getParameter("joke");

		if (joke == null) {
			joke = "Hungry";
		}

		out.println("<h1>Hi " + joke + ", I'm Dad!</h1>");
	}

}