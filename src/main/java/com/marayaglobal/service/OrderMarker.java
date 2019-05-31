package com.marayaglobal.service;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.marayaglobal.dao.OrderDBHelper;

@Path("markas")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class OrderMarker {
	
	@GET
	@Path("/prosessing/{id}")
	public boolean processing(@PathParam("id") int id) {
		return OrderDBHelper.markAs(id, "Prosessing");
	}
	
	
	@GET
	@Path("/delivered/{id}")
	public boolean delivered(@PathParam("id") int id) {
		return OrderDBHelper.markAs(id, "Delivered");
	}

}
