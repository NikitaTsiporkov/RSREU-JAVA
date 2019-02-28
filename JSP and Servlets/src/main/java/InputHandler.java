import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class InputHandler extends HttpServlet {

    private static List<String> listOfNames = new ArrayList<String>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        listOfNames.add(name);
        session.setAttribute("names", listOfNames);
        session.setAttribute("name", name);
        req.getRequestDispatcher("/showUsers.jsp").forward(req, resp);
        resp.sendRedirect("/showUsers.jsp");
    }
}
