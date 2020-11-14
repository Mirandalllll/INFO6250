package edu.webtools.part4.DAO;

import edu.webtools.part4.pojo.Movie;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Component

public class MovieDao {
    public int addMovie(String title, String actor, String actress, String genre, int year) {
        int result = 0;
        Connection connection = null;
        try {
            Dao dbdao = new Dao();
            connection = dbdao.getConnection();
            QueryRunner queryRunner = new QueryRunner();
            String query = "INSERT INTO movies (title, actor, actress, genre, year) VALUES (?,?,?,?,?)";
            result = queryRunner.update(connection, query, title, actor, actress, genre, year);
        } catch (Exception e) {
            System.out.println(e);
            return 0;
        } finally {
            try {
                DbUtils.close(connection);
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return result;

    }
    public List<Movie> searchMovie(String searchValue, String parameter) {
        List<Movie> result = new ArrayList();
        Connection connection = null;
        Statement statement = null;
        ResultSet res = null;
        try{
            Dao dao = new Dao();
            connection = dao.getConnection();
//            QueryRunner queryRunner = new QueryRunner();
            statement = connection.createStatement();
            String sql = "select * from movies where ";
            if(parameter.equals("title")){
                sql += "title = '" + searchValue + "'";
            }else if(parameter.equals("actor")){
                sql += "actor = '" + searchValue + "'";
            }else if(parameter.equals("actress")){
                sql += "actress = '" + searchValue + "'";
            }
            System.out.println(sql);
            res = statement.executeQuery(sql);
            while(res.next()){
                Movie movie = new Movie();
                String title = res.getString(1);
                String actor = res.getString(2);
                String actress = res.getString(3);
                String genre = res.getString(4);
                Integer year = Integer.parseInt(res.getString(5));
                movie.setTitle(title);
                movie.setActor(actor);
                movie.setActress(actress);
                movie.setGenre(genre);
                movie.setYear(year);
                result.add(movie);
            }
            res.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }



        return result;
    }
}




