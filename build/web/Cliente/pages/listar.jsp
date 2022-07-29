<%--
    Document   : listarCliente
    Created on : 29/06/2022, 21:05:09
    Author     : sala19a
--%>

<%@page import="br.com.Config.UserConfig"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.ClienteDTO"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <%if (UserConfig.getCliente().getNomeCliente() == null) {
                response.sendRedirect("http://localhost:8080/ALEX/index.jsp");
        }%>
        <title>Listagem de Usuários</title>

    </head>
    <body>
        <div class="bg-white">
            <div class="container">
                <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
                    <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
                        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
                    </a>

                    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="/ALEX/Cliente/pages/listar.jsp" class="nav-link px-2 link-dark">Clientes</a></li>
                        <li><a href="/ALEX/Cliente/pages/assinar.jsp" class="nav-link px-2 link-dark">Atualizar Assinatura</a></li>
                    </ul>

                    <div class="col-md-3 text-end">
                        <span href="/ALEX/index.jsp" class="me-2"><%=UserConfig.getCliente().getNomeCliente()%></span>
                        <a href="/ALEX/Cliente/actions/sair.jsp" class="btn btn-primary">Sair</a>
                    </div>
                </header>
            </div>
        </div>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Nome</th>
                    <th scope="col">Data de Nascimento</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Tipo de Assinatura</th>
                    <th scope="col">Opções</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {
                        ClienteDAO objClienteDAO = new ClienteDAO();
                        ArrayList<ClienteDTO> lista = objClienteDAO.findAll();

                        for (ClienteDTO cliente : lista) {
                %>
                <tr>
                    <td scope="row"><%=cliente.getNomeCliente()%></td>
                    <td><%=cliente.getDataNascimento()%></td>
                    <td><%=cliente.getUsuario()%></td>
                    <td><%=cliente.getTipo().getDescricao()%></td>
                    <td>
                        <%if (UserConfig.getCliente().getIdCliente() == cliente.getIdCliente()) {%>
                        <a class="btn btn-warning" href="assinar.jsp">Assinar</a>
                        <%} else {%>
                        <a class="btn btn-warning disabled">Assinar</a>
                        <%}%>
                        <a class="btn btn-success" href="editar.jsp?id=<%=cliente.getIdCliente()%>">Editar</a>
                        <a class="btn btn-danger" href="../actions/deletar.jsp?id=<%=cliente.getIdCliente()%>">Deletar</a>
                    </td>
                </tr>

                <%}
                    } catch (Exception e) {
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
