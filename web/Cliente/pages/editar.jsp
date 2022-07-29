<%-- 
    Document   : clienteUpdate
    Created on : 07/07/2022, 19:12:05
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <%if (UserConfig.getCliente().getNomeCliente() == null) {
                response.sendRedirect("http://localhost:8080/ALEX/index.jsp");
        }%>
        <title>Editar Usuários</title>
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
        <%
            ClienteDAO clienteRepository = new ClienteDAO();
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.print(request.getParameter("id"));

            ClienteDTO cliente = clienteRepository.findById(id);
        %>
        <main class="form-signin w-25 m-auto">
            <form action="../actions/inserir.jsp?id=<%=cliente.getIdCliente()%>" method="POST">
                <label for="nomeCliente" class="form-label">Nome do Cliente</label>
                <input id="nomeCliente" class="form-control" type="text" name="nomeCliente" value="<%=cliente.getNomeCliente()%>" placeholder="Nome do cliente" required>
                <br>            
                <label for="dataNascimento" class="form-label">Data de Nascimento</label>
                <input id="dataNascimento" class="form-control" type="date" name ="dataNascimento" value="<%=cliente.getDataNascimento()%>" required>
                <br>            
                <label for="usuario" class="form-label">Usuário</label>
                <input id="usuario" class="form-control" type="text" name ="usuario" value="<%=cliente.getUsuario()%>" placeholder="Nome do Cliente" required>
                <br>            
                <label for="senha" class="form-label">Senha</label>
                <input id="senha" class="form-control" type="password" name ="senha" value="<%=cliente.getSenha()%>" placeholder="Nome do Cliente" required>
                <br>

                <button type="submit" class="btn btn-primary">ATUALIZAR</button>
                <a href="listar.jsp" class="btn btn-secondary">Voltar</a>
            </form>
        </main>
    </body>
</html>