package com.team_c.hibernate.web;


import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team_c.hibernate.dao.ContactDao;
import com.team_c.hibernate.dao.CustomerDao;
import com.team_c.hibernate.dao.OrderDao;
import com.team_c.hibernate.dao.ProductDao;
import com.team_c.hibernate.dao.ShopDao;
import com.team_c.hibernate.model.ContactModel;
import com.team_c.hibernate.model.CustomerModel;
import com.team_c.hibernate.model.OrderModel;
import com.team_c.hibernate.model.ProductModel;
import com.team_c.hibernate.model.ShopModel;

@WebServlet("/")
public class MallAdminController extends HttpServlet {
	
    private static final long serialVersionUID = 1L;
    private ShopDao shopDao;
    private ProductDao productDao;
    private CustomerDao customerDao;
    private OrderDao orderDao;
    private ContactDao contactDao;

    public void init() {
    	shopDao = new ShopDao();
    	productDao = new ProductDao();
    	customerDao = new CustomerDao();
    	orderDao = new OrderDao();
    	contactDao = new ContactDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        String action = request.getServletPath();
	
	        try {
	            switch (action) {
	                case "/MallAdmin/Dashboard":
	                	mallAdminDashboard(request, response);
	                    break;
	                case "/MallAdmin/login":
	                	loginMallAdmin(request, response);
	                    break;
	                case "/MallAdmin/createShop":
	                	createShop(request, response);
	                    break;
	                case "/MallAdmin/deleteShop":
	                	deleteShop(request, response);
	                    break;
	                case "/MallAdmin/updateShop":
	                	updateShop(request, response);
	                    break;
	                case "/ShopOwner/Dashboard":
	                	shopOwnerDashboard(request, response);
	                    break;
	                case "/ShopOwner/addProduct":
	                	addProduct(request, response);
	                    break;
	                case "/ShopOwner/deleteProduct":
	                	deleteProduct(request, response);
	                    break;
	                case "/ShopOwner/updateProduct":
	                	updateProduct(request, response);
	                    break;
	                case "/Customer/Add":
	                	addCustomer(request, response);
	                    break;
	                case "/Customer/Login":
	                	loginCustomer(request, response);
	                    break;
	                case "/Customer/Dashboard":
	                	customerDashboard(request, response);
	                    break;
	                case "/Customer/AddToCart":
	                	addToCart(request, response);
	                	break;
	                case "/Customer/RemoveFromCart":
	                	removeFromCart(request, response);
	                	break;
	                case "/Contact/Create":
	                	createContact(request, response);
	                	break;
	                default:
	                	showHome(request, response);
	                    break;
	            }
	        } catch (SQLException ex) {
	            throw new ServletException(ex);
	        }
	    }
    
    private void showHome(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        	response.sendRedirect("/Mall4U/Index.jsp");
    	    }
    
    private void showLogin(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        	response.sendRedirect("/Mall4U/Login.jsp");
    	    }

    private void mallAdminDashboard(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException, ServletException {
	        List < ShopModel > listShops = shopDao.getAllShops();
	        request.setAttribute("listShops", listShops);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/MallAdminDashboard.jsp");
	        dispatcher.forward(request, response);
	    }

    private void loginMallAdmin(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException {
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        
	        if(username.equals("Admin") && password.equals("Admin@123")) {
	        	response.sendRedirect("/Mall4U/MallAdmin/Dashboard");
	        } else {
	        	ShopModel shop = shopDao.validate(username, password);
	        	if(shop == null) {
	        		response.sendRedirect("Login.jsp");
	        	} else {
	        		
	        		response.sendRedirect("/Mall4U/ShopOwner/Dashboard?shop_id="+shop.getId());
	        	}
	        }
	    }
    
    private void createShop(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        ShopModel newShop = new ShopModel();
    	        newShop.setCategory(request.getParameter("category"));
    	        newShop.setName(request.getParameter("name"));
    	        newShop.setStatus(request.getParameter("status"));
    	        newShop.setLease(request.getParameter("lease"));
    	        newShop.setOwner_name(request.getParameter("owner_name"));
    	        newShop.setOwner_dob(request.getParameter("owner_dob"));
    	        newShop.setOwner_address(request.getParameter("owner_address"));
    	        newShop.setOwner_phone(request.getParameter("owner_phone"));
    	        newShop.setOwner_password(request.getParameter("owner_password"));
    	        shopDao.createShop(newShop);
    	        response.sendRedirect("/Mall4U/MallAdmin/Dashboard");
    	    }
    
    private void updateShop(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        ShopModel newShop = new ShopModel();
    	        newShop.setId(Integer.parseInt(request.getParameter("id")));
    	        newShop.setCategory(request.getParameter("category"));
    	        newShop.setName(request.getParameter("name"));
    	        newShop.setStatus(request.getParameter("status"));
    	        newShop.setLease(request.getParameter("lease"));
    	        newShop.setOwner_name(request.getParameter("owner_name"));
    	        newShop.setOwner_dob(request.getParameter("owner_dob"));
    	        newShop.setOwner_address(request.getParameter("owner_address"));
    	        newShop.setOwner_phone(request.getParameter("owner_phone"));
    	        newShop.setOwner_password(request.getParameter("owner_password"));
    	        shopDao.updateShop(newShop);
    	        response.sendRedirect("/Mall4U/MallAdmin/Dashboard");
    	    }
    
    private void shopOwnerDashboard(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException, ServletException {
		        List < ProductModel > listProducts = productDao.getAllproducts(request.getParameter("shop_id"));
		        request.setAttribute("shop_id", request.getParameter("shop_id"));
		        request.setAttribute("listProducts", listProducts);
		        RequestDispatcher dispatcher = request.getRequestDispatcher("/ShopOwnerDashboard.jsp");
		        dispatcher.forward(request, response);
    	    }
    
    private void addProduct(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    			ProductModel product = new ProductModel();
    			product.setProduct_name(request.getParameter("product_name"));
    			product.setPrice(request.getParameter("price"));
    			product.setManufacturing_date(request.getParameter("manufacturing_date"));
    			product.setExpiry_date(request.getParameter("expiry_date"));
    			product.setCategory(request.getParameter("category"));
    			product.setShop_id(request.getParameter("shop_id")); 			
    			productDao.addShop(product);
    			response.sendRedirect("/Mall4U/ShopOwner/Dashboard?shop_id="+product.getShop_id());
    	    }
    
    private void addCustomer(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    			CustomerModel customer = new CustomerModel();
    			customer.setName(request.getParameter("name"));
    			customer.setMobile(request.getParameter("mobile"));
    			customer.setEmail(request.getParameter("email"));
    			customer.setPassword(request.getParameter("password"));
    			customerDao.addCustomer(customer);
    			response.sendRedirect("http://localhost:8080/Mall4U/CustomerLogin.jsp");
    	    }
    
    private void loginCustomer(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        String username = request.getParameter("username");
    	        String password = request.getParameter("password");
    	        	CustomerModel customer = customerDao.validate(username, password);

    	        	if(customer == null) {
    	        		response.sendRedirect("http://localhost:8080/Mall4U/CustomerLogin.jsp");
    	        	} else {
    	        		response.sendRedirect("/Mall4U/Customer/Dashboard?cust_id="+customer.getId());
    	        	}
    	       
    	    }
    
    private void customerDashboard(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException, ServletException {
    	        
    	        List < ShopModel > listShops = shopDao.getAllShops();
    	        request.setAttribute("listShops", listShops);
    	        
    	        List < ProductModel > listProducts = productDao.getAllProductsOfAllShops();
		        request.setAttribute("listProducts", listProducts);
		        
		        List < OrderModel > listOrders = orderDao.getOrders(Integer.parseInt(request.getParameter("cust_id")));
		        request.setAttribute("listOrders", listOrders);
    	        
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("/CustomerDashboard.jsp");
    	        dispatcher.forward(request, response);
    	    }

    
    private void addToCart(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException, ServletException {
    			OrderModel order = new OrderModel();
    			order.setProduct_name(request.getParameter("product_name"));
    			order.setPrice(request.getParameter("price"));
    			order.setProduct_id(Integer.parseInt(request.getParameter("product_id")));
    			order.setCustomer_id(Integer.parseInt(request.getParameter("user_id")));
    			orderDao.addOrder(order);
    			response.sendRedirect("/Mall4U/Customer/Dashboard?cust_id="+request.getParameter("user_id"));
    
    	    }
    
    private void deleteShop(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
		    	int id = Integer.parseInt(request.getParameter("shop_id"));
		        shopDao.deleteShop(id);		
    			response.sendRedirect("/Mall4U/MallAdmin/Dashboard");
    	    }
    
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
		    	int id = Integer.parseInt(request.getParameter("product_id"));
		        productDao.deleteProduct(id);		
		        response.sendRedirect("/Mall4U/ShopOwner/Dashboard?shop_id="+Integer.parseInt(request.getParameter("shop_id")));
    	    }
    
    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
		    	ProductModel product = new ProductModel();
		    	product.setId(Integer.parseInt(request.getParameter("id")));
				product.setProduct_name(request.getParameter("product_name"));
				product.setPrice(request.getParameter("price"));
				product.setManufacturing_date(request.getParameter("manufacturing_date"));
				product.setExpiry_date(request.getParameter("expiry_date"));
				product.setCategory(request.getParameter("category"));
				product.setShop_id(request.getParameter("shop_id")); 	
		        productDao.updateProduct(product);		
		        response.sendRedirect("/Mall4U/ShopOwner/Dashboard?shop_id="+Integer.parseInt(request.getParameter("shop_id")));
    	    }
    
    private void removeFromCart(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
		    	int id = Integer.parseInt(request.getParameter("order_id"));
		        orderDao.deleteOrder(id);		
		        response.sendRedirect("/Mall4U/Customer/Dashboard?cust_id="+request.getParameter("user_id"));
    	    }
    
    private void createContact(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    			ContactModel contact = new ContactModel();
    			contact.setEmail(request.getParameter("email"));
    			contact.setMessage(request.getParameter("message"));
    			contact.setName(request.getParameter("name"));
    			contact.setPhone(request.getParameter("phone"));
    			contact.setSubject(request.getParameter("subject"));
    			contactDao.createContact(contact);
    			response.sendRedirect("/Mall4U/ContactUs.jsp");
    	    }
}
