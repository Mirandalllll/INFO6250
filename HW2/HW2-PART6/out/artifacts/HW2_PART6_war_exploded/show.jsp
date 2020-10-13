<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/7/20
  Time: 12:16 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show</title>
</head>
<body>
    <%
//        response.setContentType("text/html");

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String conpassword = request.getParameter("conpassword");
        String pic = request.getParameter("picture");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
        String hobby = request.getParameter("hobby");
        String address = request.getParameter("address");


//        PrintWriter out = response.getWriter();
        if(!password.equals(conpassword)){
            out.println("<html>");
            out.println("<head>");
            out.println("<title>");

            out.println("</title>");
            out.println("</head>");

            out.println("<body>");
            out.println("Password does not match");
            out.println("</body>");
            out.println("</html>");
            return ;
        }
        out.println("<html>");
        out.println("<head>");
        out.println("<title>");
        out.println("Form Details");
        out.println("</title>");
        out.println("</head>");

        out.println("<body>");

        out.println("Email is: " + email);
        out.println("<br />");

        out.println("Password is: " + password);
        out.println("<br />");

        out.println("Confirm Password is: " + conpassword);
        out.println("<br />");

        out.println("Picture is: " + pic);
        out.println("<br />");

        out.println("Gender is: " + gender);
        out.println("<br />");

        out.println("Country is: " + country);
        out.println("<br />");

        out.println("Hobbies are: " + String.join(", ", hobby));
        out.println("<br />");

        out.println("Address is: " + address);
        out.println("<br />");
    %>
</body>
</html>
