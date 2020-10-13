package Main;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;

@WebServlet(name = "PrintPart6Servlet")
public class PrintPart6Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        request.setAttribute("request",new String("object"));
        request.setAttribute("request1","object");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>");
        out.println("Print getX() Methods in ServletRequest and HttpServletRequest");
        out.println("</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("getAttribute: "+request.getAttribute("request"));
        out.println("<br>");
        Enumeration<String> en = request.getAttributeNames();
        while(en.hasMoreElements()){
            out.println("AttributeNames: "+en.nextElement());
            out.println("<br>");
        }
        out.println("getCharacterEncoding: "+request.getCharacterEncoding());
        out.println("<br>");
        out.println("getContentLength: "+request.getContentLength());
        out.println("<br>");
        out.println("getContentLengthLong: "+request.getContentLengthLong());
        out.println("<br>");
        out.println("getContentType: "+request.getContentType());
        out.println("<br>");
        out.println("getDispatcherType: "+request.getDispatcherType().toString());
        out.println("<br>");
//        InputStream inputStream = request.getInputStream();

        out.println("getInputStream: "+request.getInputStream().toString());
        out.println("<br>");
        out.println("getLocalAddr: "+request.getLocalAddr());
        out.println("<br>");
        out.println("getLocale: "+request.getLocale());
        Enumeration<Locale> eu = request.getLocales();
        while(eu.hasMoreElements()){
            out.println("getLocales: "+eu.nextElement());
            out.println("<br>");
        }
        out.println("getLocalName: "+request.getLocalName());
        out.println("<br>");
        out.println("getLocalPort: "+request.getLocalPort());
        out.println("<br>");
        out.println("Name Parameter: "+request.getParameter("name"));
        Map<String,String[]> map = request.getParameterMap();
        for(Map.Entry<String,String[]> entry :map.entrySet()){
            out.println("Key: "+entry.getKey());
            out.println("<br>");
            out.println("Value: "+entry.getValue());
            out.println("<br>");
        }
        Enumeration<String> em = request.getParameterNames();
        while(em.hasMoreElements()){
            out.println("ParameterNames: "+em.nextElement());
        }
        String[] hobbies = request.getParameterValues("hobby");
        out.println("hobbies: "+ Arrays.toString(hobbies));
        out.println("<br>");

        out.println("Protocol: "+request.getProtocol());
        out.println("<br>");
//        out.println("RealPath: "+);
        out.println("getRemoteHost: "+request.getRemoteHost());
        out.println("<br>");
        out.println("getRemoteAddr: "+request.getRemoteAddr());
        out.println("<br>");
        out.println("getRemotePort: "+request.getRemotePort());
        out.println("<br>");
        out.println("getScheme: "+request.getScheme());
        out.println("<br>");
        out.println("getServerName: "+request.getServerName());
        out.println("<br>");
        out.println("getServerPort: "+request.getServerName());
        out.println("<br>");
        out.println("getServletContext: "+request.getServletContext().toString());
        out.println("<br>");
        out.println("getAuthTYpe: "+request.getAuthType());
        out.println("<br>");
        out.println("getContextPath: "+request.getContextPath());
        out.println("<br>");
        out.println("getCookies: "+Arrays.toString(request.getCookies()));
        out.println("<br>");
        out.println("getDateHeader: "+request.getDateHeader("date"));
        out.println("<br>");
        out.println("getHeader: "+request.getHeader("name"));
        out.println("<br>");

        Enumeration<String> e = request.getHeaderNames();
        while(e.hasMoreElements()){
            out.println("getHeaderNames: "+e.nextElement());
            out.println("<br>");

        }
        Enumeration<String> ee = request.getHeaders("name");
        while(ee.hasMoreElements()){
            out.println("headers: "+ee.nextElement());
            out.println("<br>");

        }
        out.println("servletMapping: "+request.getHttpServletMapping().toString());
        out.println("<br>");

        out.println("intHeader: "+request.getIntHeader("name"));
        out.println("<br>");

        out.println("getMethod: "+request.getMethod());
        out.println("<br>");
        out.println("getPathInfo: "+request.getPathInfo());
        out.println("<br>");
        out.println("getPathTranslated: "+request.getPathTranslated());
        out.println("<br>");
        out.println("getQueryString: "+request.getQueryString());
        out.println("<br>");
        out.println("getRemoteUser: "+request.getRemoteUser());
        out.println("<br>");
        out.println("getRequestedSessionId "+request.getRequestedSessionId());
        out.println("<br>");
        out.println("getRequestURI "+request.getRequestURI());
        out.println("<br>");
        out.println("getRequestURL "+request.getRequestURL());
        out.println("<br>");
        out.println("getServletPath: "+request.getServletPath());
        out.println("<br>");
        out.println("getSession: "+request.getSession().toString());
        out.println("<br>");
        Map<String,String> map1 = request.getTrailerFields();
        for(Map.Entry<String,String> entry:map1.entrySet()){
            out.println("getTrailerFields: "+entry.getKey()+entry.getValue());
            out.println("<br>");
        }
//        out.println("<br>");
        out.println("getUserPrincipal: "+request.getUserPrincipal());
        out.println("</body>");
        out.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
