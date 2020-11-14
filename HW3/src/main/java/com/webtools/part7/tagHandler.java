package com.webtools.part7;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.sql.*;

public class tagHandler extends SimpleTagSupport {
    private static final String CSV_JDBC_DRIVER = "org.relique.jdbc.csv.CsvDriver";
    private static final String CSV_JDBC_HEADER = "jdbc:relique:csv:";
    private String fileName;
    private String filePath;
    //    @Override
    public void doTag() throws IOException {
        JspWriter out = getJspContext().getOut();
        out.write("<h1 align=\"center\">" + fileName + ".csv</h1>");
        out.println("<table border=1 align=\"center\">");
        try{
            // load the driver into memory
            Class.forName(CSV_JDBC_DRIVER);
            // create a connection. The first command line parameter is assumed to
            //  be the directory in which the .csv files are held
            Connection conn = DriverManager.getConnection(CSV_JDBC_HEADER+filePath);
            // create a Statement object to execute the query with
            Statement stmt = conn.createStatement();
            // Select the ID and NAME columns from sample.csv
            ResultSet results = stmt.executeQuery("select * from "+fileName);
            ResultSetMetaData data = results.getMetaData();
            out.println("<tr>");
            int columnCount = data.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {
                String title = data.getColumnName(i);
                out.println("<th>" + title);
            }
            // dump out the results
            while (results.next()) {
                out.println("<tr>");
                for (int i = 1; i <= columnCount; i++) {
                    String value = results.getString(i);
                    out.println("<td>" + value);
                }
            }
            // clean up
            results.close();
            stmt.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            out.println("Cannot find the file!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        out.println("</table>");
        out.close();
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}
