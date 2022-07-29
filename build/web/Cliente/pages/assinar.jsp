<%-- 
    Document   : clienteUpdate
    Created on : 07/07/2022, 19:12:05
    Author     : sala19a
--%>

<%@page import="br.com.Enums.Tipo"%>
<%@page import="br.com.Config.UserConfig"%>
<%@page import="java.time.LocalDate"%>
<%@page import="br.com.DTO.ClienteDTO"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <%if(UserConfig.getCliente().getNomeCliente() == null){%>
        <meta http-equiv="refresh" content="1; URL=/ALEX/index.jsp" />
        <%}%>
        <title>Atualizar assinatura</title>
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
                    </ul>

                    <div class="col-md-3 text-end">
                        <span href="/ALEX/index.jsp" class="me-2"><%=UserConfig.getCliente().getNomeCliente()%></span>
                        <a href="/ALEX/index.jsp" class="btn btn-primary">Sair</a>
                    </div>
                </header>
            </div>
        </div>
        <main class="form-signin w-25 m-auto">
            <%Tipo acao = null;%>
            <form action="../actions/assinar.jsp" method="POST">
                <h1 class="h3 text-center mb-3 fw-normal">Atualizar Assinatura</h1>
                <h1 for="nomeCliente" class="h3 text-center mb-5 fw-normal">R$ 50,00</h1>

                <p class="mt-5 text-center">
                    <button type="submit" class="btn btn-primary"><%
                        if (UserConfig.getCliente().getTipo() == Tipo.C) {
                    %> Atualizar Assinatura <%} else{%> Cancelar Assinatura<%}%>
                    </button>
                </p>
                <p class="text-center">
                    <a href="listar.jsp" class="btn btn-secondary">Voltar</a>
                </p>
            </form>
        </main>
    </body>
</html>