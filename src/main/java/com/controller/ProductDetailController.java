package com.controller;

import com.dao.ProductDAO;
import com.dtos.ProductDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "ProductDetailController", urlPatterns = "/ProductDetailController")
public class ProductDetailController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        ArrayList<ProductDTO> lsProducts = new ArrayList<>();
        ArrayList<String> lsImages = new ArrayList<>();
        ProductDAO productDAO = new ProductDAO();
        ProductDTO productDTO = new ProductDTO();
        try {
           productDTO = productDAO.getProductById(id);
           lsProducts.add(productDTO);
           lsImages = productDTO.getImages();
            request.setAttribute("product",lsProducts);
            request.setAttribute("images",lsImages);
            HttpSession session = request.getSession();
            session.setAttribute("product",lsProducts);
           request.getRequestDispatcher("product-details.jsp").forward(request,response);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
