/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.marayaglobal.service.user;

import com.marayaglobal.beans.user.Customer;
import com.marayaglobal.dao.CustomerDBHelper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import org.apache.jasper.tagplugins.jstl.core.If;

/**
 *
 * @author DELL
 */
@Path("user")
//@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class Login {

	@GET
	@Path("/login")
	public Customer login(@QueryParam("email") String email, @QueryParam("password") String password,
			@Context HttpServletRequest request) {
		HttpSession session = request.getSession();
		Customer customer =  CustomerDBHelper.login(email, password, session.getId());
		session.setAttribute("currentUser", customer);
		return customer;
	}

	@POST
	@Path("/signUp")
	public int signUp(Customer customer) {

		return CustomerDBHelper.create(customer);
	}
	
	@POST
	@Path("/logout")
	public void logout(@Context HttpServletRequest request) {
		HttpSession session= request.getSession();
		session.setAttribute("currentUser", null);
	}

}
