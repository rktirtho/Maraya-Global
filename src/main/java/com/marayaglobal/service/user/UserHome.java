package com.marayaglobal.service.user;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.marayaglobal.beans.user.Address;
import com.marayaglobal.beans.user.Customer;
import com.marayaglobal.dao.AddressDBHelper;
import com.marayaglobal.dao.CartDBHelper;
import com.marayaglobal.dao.CustomerDBHelper;
import com.marayaglobal.order.CartView;
import com.marayaglobal.order.Order;

@Path("customers")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class UserHome {
	
	@GET
	@Path("{id}/orders")
	public List<Order> orderByCustomer(@PathParam("id") int userid){
		return null;		
	}
	
	@GET
	@Path("{id}/profile")
	public Customer getCustomer(@PathParam("id")int id) {
		return CustomerDBHelper.getById(id);
	}
	
	@GET
	@Path("{id}/address")
	public Address getAddress(@PathParam("id")int id) {
		return AddressDBHelper.getByUserId(1);
	}
	
	@GET
	@Path("{id}/cart-item")
	public List<CartView> getCartsByUserId(@PathParam("id")int id) {
		return CartDBHelper.getCartByCustomerId(id);
	}
	
	

}
