package restfulservice;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


import bean.User;

import dao.UserDAO;


@Path("/users")
public class UserRs {
	
	

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public User saveUser(User u) {
		User user = new UserDAO().saveUser(u);
		return user;
		
	}
	
	
	@GET
	@Path("/{email}")
	@Produces(MediaType.APPLICATION_JSON)
	public User getUser(@PathParam("email") String email) {
		User u = new UserDAO().getUser(email);
			return u;
	}
	

}
