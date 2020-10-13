import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

public class excelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileName = request.getParameter("file");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Part 5</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1 align=\"center\">" + fileName + "</h1>");

        File file = new File(getServletContext().getRealPath("/files/") + fileName);
        FileInputStream stream = new FileInputStream(file);
        HSSFWorkbook workbook = new HSSFWorkbook(stream);
        for (int i = 0; i < workbook.getNumberOfSheets(); i++) {
            HSSFSheet sh = workbook.getSheetAt(i);
            out.println("<table>");
            for (int j = 0; j < sh.getLastRowNum(); j++) {
                HSSFRow row = sh.getRow(j);
                out.println("<tr>");
                for (int k = 0; k < row.getLastCellNum(); k++) {
                    HSSFCell cell = row.getCell(k);
                    String value = cell.toString();
                    if (j == 0) {
                        out.println(" <th> " + value);
                    } else {
                        out.println("<td>" + value);
                    }
                }
            }
            out.println("</table>");
        }
        out.println("</body>");
        out.println("</html>");
    }
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }
}
