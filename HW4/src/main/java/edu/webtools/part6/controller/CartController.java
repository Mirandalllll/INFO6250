package edu.webtools.part6.controller;

import edu.webtools.part6.pojo.Cart;
import edu.webtools.part6.pojo.Item;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;

@Controller
@RequestMapping("/part6")
public class CartController {

    @GetMapping("/home")
    public ModelAndView home(){
        return new ModelAndView("part6/home");
    }
    @GetMapping("/books")
    public ModelAndView books(){
        return new ModelAndView("part6/books");
    }
    @GetMapping("/computers")
    public ModelAndView computers(){
        return new ModelAndView("part6/computers");
    }
    @GetMapping("/music")
    public ModelAndView music(){
        return new ModelAndView("part6/music");
    }

    @GetMapping("/cart")
    public ModelAndView cart(){
        return new ModelAndView("part6/cart");
    }

    @PostMapping("/add")
    public ModelAndView add(HttpServletRequest request, HttpServletResponse response){
        String[] arr = null;
        if(request.getParameterValues("books")!=null){
            arr = request.getParameterValues("books");
        }else if(request.getParameterValues("computers")!=null){
            arr = request.getParameterValues("computers");
        }else if(request.getParameterValues("music")!=null){
            arr = request.getParameterValues("music");
        }
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }

        if (arr == null) {
            session.setAttribute("items", arr);
            session.setAttribute("cart", cart);
        }

        for(String name :arr){
            Item item = new Item(name,1);
            cart.addItem(item);
        }
        session.setAttribute("cart",cart);
        session.setAttribute("items", arr);
        return new ModelAndView("part6/addSuccessfully");
    }

    @PostMapping("/update")
    public ModelAndView update(HttpServletRequest request, HttpServletResponse response){
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if( cart == null){
            cart = new Cart();
        }
        Enumeration<String> list = request.getParameterNames();

        while(list.hasMoreElements()){
            String name = list.nextElement();
            if(name.equals("Submit")) continue;
            String amount = request.getParameter(name);
            int count = Integer.parseInt(amount);
            if(count == 0){
                cart.deleteItem(name);
            }else{
                cart.modifyItemCount(name,count);
            }
        }

        session.setAttribute("cart",cart);
        return new ModelAndView("part6/cart");
    }
}
