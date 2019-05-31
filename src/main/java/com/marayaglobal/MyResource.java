package com.marayaglobal;

import com.marayaglobal.dao.AdminProductDBHelper;
import com.marayaglobal.dao.CartDBHelper;
import com.marayaglobal.dao.ProductDBHelper;
import com.marayaglobal.product.AdminProduct;
import com.marayaglobal.product.Product;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.GET;
import javax.ws.rs.PATCH;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

/**
 * Root resource (exposed at "myresource" path)
 */
@Path("myresource")
@Produces(MediaType.APPLICATION_JSON)
public class MyResource {

	/**
	 * Method handling HTTP GET requests. The returned object will be sent to the
	 * client as "text/plain" media type.
	 *
	 * @param keyword
	 * @param start
	 * @param end
	 * @return String that will be returned as a text/plain response.
	 */
//    @GET()
//    @Produces(MediaType.APPLICATION_JSON)
//    public String getItList() {
//        ProductDBHelper.getAll();
//
//        return "Got it";
//    }

	@GET()
	@Produces(MediaType.APPLICATION_JSON)
	public List<Product> getProduct(@QueryParam("start") int start, @QueryParam("end") int end) {

		return ProductDBHelper.getAll(start, end);

	}
	
	@Path("/{category}")
	@GET
	public List<AdminProduct> category(
			@PathParam("category") String category,
			@QueryParam("start") int start,
			@QueryParam("end") int end,
			@QueryParam("orderby") String orderBy) {
		if(orderBy !=null) {
			return AdminProductDBHelper.getAll(category, orderBy,start,end);
		}
		
		return AdminProductDBHelper.getAll(category, start, end);
	}
	@Path("/search")
	@GET
	public List<AdminProduct> search(
			@QueryParam("q") String category,
			@QueryParam("start") int start,
			@QueryParam("end") int end ) {
		
		return AdminProductDBHelper.search(category, start, end);
	}
	
	

	
}
