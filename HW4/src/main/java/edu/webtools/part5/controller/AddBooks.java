package edu.webtools.part5.controller;

import edu.webtools.part5.DAO.BookDao;
import edu.webtools.part5.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class AddBooks extends AbstractController {
    @Autowired
    BookDao bookDao;
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        if(request.getAttribute("unsafe_request") == "true") {
            return new ModelAndView("part5/securityerror");
        }
        int count = Integer.parseInt(request.getParameter("amount"));
        List<String> isbn = new ArrayList<>();
        List<String> title = new ArrayList<>();
        List<String> authors = new ArrayList<>();
        List<Float> prices = new ArrayList<>();
        List<Book>  books = new ArrayList<>();
        System.out.println(count);

        for(int i = 0 ; i < count; i++){
//            String
            isbn.add(request.getParameter("isbn" +String.valueOf(i)));
            title.add(request.getParameter("title" + String.valueOf(i)));
            authors.add(request.getParameter("authors" + String.valueOf(i)));
            prices.add(Float.parseFloat(request.getParameter("price" + i)));
            books.add(new Book(isbn.get(i),title.get(i),authors.get(i),prices.get(i)));
        }

        int res = 0;
        System.out.println(bookDao);
        res = bookDao.addBook(isbn,title,authors,prices);
        System.out.println(res);
        ModelAndView modelAndView = new ModelAndView();
        if(res > 0){
            modelAndView = new ModelAndView("part5/addBookSuccessfully","books",books);
        }
        return modelAndView;
    }
}
