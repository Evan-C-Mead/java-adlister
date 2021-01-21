import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="IncorrectNumberServlet", urlPatterns = "/incorrect")
public class IncorrectNumberServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURI();
        req.setAttribute("url", url);
        req.getRequestDispatcher("/guess-app/view-outcome.jsp").forward(req, resp);
    }

}
