<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="modell.UsuarioDao" %>
<%@ page import="modell.Usuario" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Editar Usuário</title>
<link href="./css/cadastro.css" rel="stylesheet">
</head>
<body>
    <header>
        <object data="./jsp/menu.jsp" width="100%" height="100px"></object>
    </header>
    <div id="container">
        <div class="item item1"></div>
        <div class="item item2">
            <div id="estiloForm">
                <h1>Editar Usuário</h1>
                <%
                    String id = request.getParameter("id");
                    UsuarioDao usuarioDao = new UsuarioDao();
                    Usuario usuario = null;
                    try {
                        usuario = usuarioDao.buscarID(Integer.parseInt(id));
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    if (usuario != null) {
                %>
                <form action="atualizar" method="post">
                    <input type="hidden" name="id" value="<%=usuario.getId()%>">
                    <div class="estiloInput">
                        <label for="nome">Nome</label>
                        <input type="text" name="nome" id="nome" class="input" value="<%=usuario.getNome()%>">
                    </div>
                    <div class="estiloInput">
                        <label for="cpf">CPF</label>
                        <input type="text" name="cpf" id="cpf" class="input" value="<%=usuario.getCpf()%>">
                    </div>
                    <div class="estiloInput">
                        <label for="email">E-mail</label>
                        <input type="text" name="email" id="email" class="input" value="<%=usuario.getEmail()%>">
                    </div>
                    <div class="estiloInput">
                        <label for="senha">Senha</label>
                        <input type="password" name="senha" id="senha" class="input" value="<%=usuario.getSenha()%>">
                    </div>
                    <div class="estiloInput">
                        <input type="submit" value="ATUALIZAR" class="estiloBotao"> 
                        <a href="./registrosBD.jsp"><button type="button" value="REGISTROS" class="estiloBotao">REGISTROS BD</button></a>
                        <input type="reset" value="RESETAR" class="estiloBotao"> 
                    </div>
                </form>
                <% } else { %>
                <p>Usuário não encontrado.</p>
                <% } %>
            </div>
        </div>
        <div class="item item3"></div>
    </div>
</body>
</html>
