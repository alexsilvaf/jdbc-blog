<%-- 
    Document   : inserirCliente
    Created on : 07/06/2022, 21:16:58
    Author     : sala19a
--%>

<%@page import="br.com.Config.UserConfig"%>
<%@page import="java.util.Optional"%>
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
                ClienteDTO objClienteDTO;

                String usuario = request.getParameter("usuario");
                String senha = request.getParameter("senha");

                if (usuario != null && senha != null) {
                    objClienteDTO = objClienteDAO.findByUsuario(request.getParameter("usuario"));

                    if (objClienteDTO.getIdCliente() != null) {
                        System.out.print("Está presente");
                        if (objClienteDTO.getSenha().equals(senha)) {
                            UserConfig.setCliente(objClienteDTO);
                            response.sendRedirect("http://localhost:8080/ALEX/Cliente/pages/listar.jsp");
                        }
                    }
                }

                response.sendRedirect("http://localhost:8080/ALEX/index.jsp");

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
