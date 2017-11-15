package murach.email;

import dataAccess.ConnectionDB;
import dataAccess.UserDAO;
import java.io.*;
import java.sql.Connection;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import murach.business.User;
//import murach.data.UserDB;

@WebServlet(urlPatterns = {"/emailList"})
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.html";
// get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // default action
        }
// perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.html"; // the "join" page
        } else if (action.equals("add")) {
// get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String area = request.getParameter("area");
// store data in User object and save User object in database
            User user = new User(firstName, lastName, email, area);

            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnection();

            UserDAO userDao = new UserDAO(connection);
            userDao.addUserMySql(user);
// set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/thanks.jsp"; // the "thanks" page
        } else if (action.equals("search")) {
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnection();
            UserDAO userDao = new UserDAO(connection);
            String email = request.getParameter("email");
            User user = userDao.findUser(email);
            if (user.getArea().equals("Business")) {
                url = "/business.jsp";
            } else if (user.getArea().equals("Architecture")) {
                url = "/architecture.jsp";
            } else if (user.getArea().equals("Engineering")) {
                url = "/eng.jsp";
            }
            request.setAttribute("user", user);
        }
// forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        ConnectionDB connectionDB = new ConnectionDB();
        Connection connection = connectionDB.getConnection();

        UserDAO userDao = new UserDAO(connection);
        String url = "";
        if (action.equals("all")) {
            request.setAttribute("users", userDao.allUsers());
            url = "/all.jsp";
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

    }
}
