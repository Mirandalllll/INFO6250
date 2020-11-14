package com.webtools.part4.controller;

import com.webtools.part4.DAO.MovieDao;
import com.webtools.part4.pojo.Movie;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "Part4Servlet")
public class Part4Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher;
        PrintWriter out = response.getWriter();

        String option = request.getParameter("option");

        if(option.equalsIgnoreCase("add")){

            Movie movieData = new Movie();
            String title = request.getParameter("title");
            String actor = request.getParameter("actor");
            String actress = request.getParameter("actress");
            String genre = request.getParameter("genre");
            Integer year = Integer.parseInt(request.getParameter("year"));

            MovieDao movieObj = new MovieDao();
            int result = movieObj.addMovie(title, actor, actress, genre, year);

            if (result == 1) {
                movieData.setTitle(title);
                movieData.setActor(actor);
                movieData.setActress(actress);
                movieData.setGenre(genre);
                movieData.setYear(year);

                request.setAttribute("movie", movieData);
                requestDispatcher = getServletContext().getRequestDispatcher("/part4/addMovieSuccessfully.jsp");
                try{
                    requestDispatcher.forward(request, response);
                }catch(ServletException | IOException ex){
                    out.println(ex);
                }

            } else{
                requestDispatcher  = request.getRequestDispatcher("/part4/error.jsp");
                requestDispatcher.forward(request, response);
            }
        } else if (option.equalsIgnoreCase("browse")) {
            String searchValue = request.getParameter("searchtext");
            String searchparam = request.getParameter("searchoption");
            System.out.println(searchparam);
            MovieDao searchObj = new MovieDao();
            List<Movie> searchedMovie = searchObj.searchedMovie(searchValue, searchparam);

            if(searchedMovie.isEmpty()){
                requestDispatcher = getServletContext().getRequestDispatcher("/part4/cannotFindMovie.jsp");
                try{
                    requestDispatcher.forward(request, response);
                } catch(ServletException | IOException ex){
                    out.println(ex);
                }
            }else if(!searchedMovie.isEmpty()){
                request.setAttribute("serachedMovie", searchedMovie);
                requestDispatcher = getServletContext().getRequestDispatcher("/part4/findMovieSuccessfully.jsp");
                try{
                    requestDispatcher.forward(request, response);
                }catch(ServletException | IOException ex){
                    out.println(ex);
                }
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String optionValue = request.getParameter("option");
        HttpSession session = request.getSession();
        handleServletRequest(optionValue, session, request, response);
    }
    public void handleServletRequest(String Option, HttpSession session, HttpServletRequest request, HttpServletResponse response) {

        RequestDispatcher requestDispatcher;
        if (Option.equalsIgnoreCase("add")) {
            requestDispatcher = getServletContext().getRequestDispatcher("/part4/addNewMovie.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException | IOException ex) {
                System.out.println(ex);
            }

        } else if (Option.equalsIgnoreCase("browse")) {
            requestDispatcher = getServletContext().getRequestDispatcher("/part4/browseMovie.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException | IOException ex) {
                System.out.println(ex);
            }

        }
    }
}
