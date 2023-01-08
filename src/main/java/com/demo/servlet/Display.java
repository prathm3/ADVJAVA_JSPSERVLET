package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.beans.Product;
import com.demo.beans.User;
import com.demo.service.ProductServicImpl;
import com.demo.service.ProductService;

/**
 * Servlet implementation class Display
 */
@WebServlet("/display")
public class Display extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		ProductService pservice = new ProductServicImpl();
		List<Product> plist = pservice.getAllProducts();
		User u = (User) request.getAttribute("user");
		if(u == null) {
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.forward(request, response);
		}
		request.setAttribute("plist", plist);
		RequestDispatcher rd1 = request.getRequestDispatcher("display.jsp");
		rd1.forward(request, response);
		
		
	}

	

}
