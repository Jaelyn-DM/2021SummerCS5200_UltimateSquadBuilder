package squad.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import squad.dal.CustomizedTeamsDao;
import squad.dal.PlayersDao;
import squad.model.Users;

@WebServlet("/createcustomizedteam")
public class CreateCustomizedTeam extends HttpServlet {

	protected CustomizedTeamsDao customizedTeamsDao;
	protected PlayersDao playersDao;

	@Override
	public void init() throws ServletException {
		customizedTeamsDao = CustomizedTeamsDao.getInstance();
		playersDao = PlayersDao.getInstance();
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final Users user = (Users) request.getSession().getAttribute("CURRENT_USER");
		request.setAttribute("LOGGED_IN_USER_NAME", user.getUserName());
		request.getRequestDispatcher("/CreateCustomizedTeam.jsp").forward(request, response);
	}
}
