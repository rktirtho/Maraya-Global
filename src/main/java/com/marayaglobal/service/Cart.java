package com.marayaglobal.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import com.marayaglobal.beans.user.Customer;
import com.marayaglobal.dao.CartDBHelper;
import com.marayaglobal.dao.CustomerDBHelper;

@Path("cart")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class Cart {

	@GET
	@Path("/add")
	public int addCart(@QueryParam("id") int id, @Context HttpServletRequest request) {
		int status = 0;
		HttpSession session = request.getSession();
		Customer customer = CustomerDBHelper.getBySession(session.getId());
		if (customer.getId() != 0) {
			status = CartDBHelper.create(id, customer.getId());
			return status;
		} else {

			return -1;
		}
	}

	@GET
	@Path("/get")
	@Produces(MediaType.TEXT_PLAIN)
	public String get() {
		return "get";
	}

}
