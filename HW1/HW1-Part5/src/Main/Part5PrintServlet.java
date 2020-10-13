package Main;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet(name = "Part5PrintServlet")
public class Part5PrintServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        response.setContentType("text/html");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>");
        out.println("HttpServlet and Generic Servlet getX() Methods");
        out.println("</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("getInitParameter: "+this.getInitParameter("namespace"));
        out.println("<br>");
        Enumeration<String> em = this.getInitParameterNames();
        while(em.hasMoreElements()){
            out.println("getInitParameterNames: "+em.nextElement());
            out.println("<br>");

        }
        out.println("ServletConfig: "+this.getServletConfig().toString());
        out.println("<br>");
        out.println("ServletContext: "+this.getServletContext().toString());
        out.println("<br>");
        out.println("ServletInfo: "+this.getServletInfo());
        out.println("<br>");
        out.println("ServletName: "+this.getServletName());
        out.println("<br>");
        out.println("getLastModified: "+this.getLastModified(request));
        out.println("</body>");
        out.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
