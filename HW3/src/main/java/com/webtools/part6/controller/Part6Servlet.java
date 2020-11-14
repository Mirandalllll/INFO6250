package com.webtools.part6.controller;

import com.webtools.part6.pojo.Cart;
import com.webtools.part6.pojo.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet(name = "Part6Servlet")
public class Part6Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] arr = null;
        if(request.getParameterValues("books")!=null){
            arr = request.getParameterValues("books");
        }else if(request.getParameterValues("computers")!=null){
            arr = request.getParameterValues("computers");
        }else if(request.getParameterValues("music")!=null){
            arr = request.getParameterValues("music");
        }
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null){
            cart = new Cart();

        }
        for(String name:arr){
            Item item = new Item(name,1);
            cart.addItem(item);
        }
        session.setAttribute("arr",arr);
        session.setAttribute("cart",cart);
        request.getRequestDispatcher("/part6/addSuccessfully.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Enumeration<String> en = request.getParameterNames();
        while(en.hasMoreElements()){
            String name = en.nextElement();
            if(name.equals("Submit")) continue;
            int count = Integer.parseInt(request.getParameter(name));
            if(count == 0) cart.deleteItem(name);
            else{
                cart.updateItem(name,count);
            }
        }
        session.setAttribute("cart",cart);
        request.getRequestDispatcher("/part6/cart.jsp").forward(request,response);
    }
}
