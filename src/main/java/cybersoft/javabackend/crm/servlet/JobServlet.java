package cybersoft.javabackend.crm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.javabackend.crm.model.User;
import cybersoft.javabackend.crm.service.JobService;
import cybersoft.javabackend.crm.util.JspConst;
import cybersoft.javabackend.crm.util.UrlConst;

@WebServlet(name = "jobServlet", urlPatterns = UrlConst.JOB_CREATE)
public class JobServlet extends HttpServlet {
	User user;
	private JobService jobService;
	
	@Override
	public void init() throws ServletException {
		jobService = new JobService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		user = (User) req.getAttribute("user");
		req.getRequestDispatcher(JspConst.JOB_CREATE).forward(req, resp);
	}
}
