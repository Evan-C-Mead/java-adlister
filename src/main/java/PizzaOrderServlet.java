import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name="PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/pizza-app/order.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String crust = req.getParameter("crust");
        String sauce = req.getParameter("sauce");
        String size = req.getParameter("size");
        String[] toppings = req.getParameterValues("toppings");
        String address = req.getParameter("address");

        for (String topping : toppings) {
            System.out.println(topping);
        }

        System.out.printf("\nYour pizza is a: %s, %s, %s, with %s.", crust, sauce, size, Arrays.toString(toppings));
        System.out.printf("\nYour delivery address is: %s.", address);

        req.setAttribute("crust", crust);
        req.setAttribute("sauce", sauce);
        req.setAttribute("size", size);
        req.setAttribute("toppings", toppings);
        req.setAttribute("address", address);
        req.getRequestDispatcher("/pizza-app/order.jsp").forward(req, res);
    }

}
