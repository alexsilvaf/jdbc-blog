<%-- 
    Document   : inserirCliente
    Created on : 07/06/2022, 21:16:58
    Author     : sala19a
--%>

<%@page import="br.com.Config.UserConfig"%>
<%@page import="java.time.LocalDate"%>
<%@page import="br.com.DTO.ClienteDTO"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                ClienteDAO objClienteDAO = new ClienteDAO();

                int id = Integer.parseInt(request.getParameter("id"));

                System.out.print(id);
                objClienteDAO.delete(id);

            } catch (Exception e) {
                e.printStackTrace();
            }
            if (UserConfig.getCliente().getNomeCliente() != null) {
                response.sendRedirect("http://localhost:8080/ALEX/Cliente/pages/listar.jsp");
            }
        %>
    </body>
</html>
