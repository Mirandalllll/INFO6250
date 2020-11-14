package edu.webtools.part5.DAO;

import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@Component
public class BookDao {
    public int addBook(List<String> isbn, List<String> title, List<String> authors, List<Float> price){
        int result = 0;
        Connection connection = null;
        PreparedStatement ps = null;
        try{
            DAO dbdao = new DAO();
            connection = dbdao.getConnection();
//            QueryRunner queryRunner = new QueryRunner();
            String query = "INSERT INTO books (isbn, title, authors, price) VALUE (?,?,?,?)";
            ps = connection.prepareStatement(query);
            for(int i = 0; i < isbn.size();i++){
                ps.setString(1,isbn.get(i));
                ps.setString(2,title.get(i));
                ps.setString(3,authors.get(i));
                ps.setFloat(4,price.get(i));
                result = ps.executeUpdate();
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

}
