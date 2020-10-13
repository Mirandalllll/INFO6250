import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class DisplayCSV extends HttpServlet {
    private static final String CSV_JDBC_DRIVER = "org.relique.jdbc.csv.CsvDriver";
    private static final String CSV_JDBC_HEADER = "jdbc:relique:csv:";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String fileName = request.getParameter("filename");
        String path = request.getRealPath("/files");

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Display CSV</title>");
        out.println("</head>");
        out.println("<h1 align=\"center\">" + fileName + ".csv</h1>");
        out.println("<table border=1 align=\"center\">");
        try{
            Class.forName(CSV_JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(CSV_JDBC_HEADER + path);
            Statement statement = connection.createStatement();
            ResultSet results = statement.executeQuery("select * from " + fileName);
            ResultSetMetaData data = results.getMetaData();
            // get titles
            out.println("<tr>");
            int columnCount = data.getColumnCount();
            for(int i = 1; i <= columnCount; i++){
                String title = data.getColumnName(i);
                out.println("<th>" + title);
            }
            //get results
            while(results.next()){
                out.println("<tr>");
                for(int i = 1; i <= columnCount; i++){
                    String value = results.getString(i);
                    out.println("<td>" + value);
                }
            }

            results.close();
            statement.close();
            connection.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        out.println("</table>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    public String getServletInfo(){
        return "Short Description";
    }

}
