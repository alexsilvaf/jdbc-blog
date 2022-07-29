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
                ClienteDTO objClienteDTO = new ClienteDTO();

                if (request.getParameter("id") != null) {
                    objClienteDTO = objClienteDAO.findById(Integer.parseInt(request.getParameter("id")));
                }

                objClienteDTO.setNomeCliente(request.getParameter("nomeCliente"));
                objClienteDTO.setDataNascimento(LocalDate.parse(request.getParameter("dataNascimento")));
                objClienteDTO.setUsuario(request.getParameter("usuario"));
                objClienteDTO.setSenha(request.getParameter("senha"));

                if (request.getParameter("id") == null) {
                    UserConfig.setCliente(objClienteDTO);
                    response.sendRedirect("http://localhost:8080/ALEX/Cliente/pages/listar.jsp");
                    objClienteDAO.save(objClienteDTO);
                } else {
                    objClienteDAO.update(objClienteDTO);
                    response.sendRedirect("http://localhost:8080/ALEX/Cliente/pages/listar.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
