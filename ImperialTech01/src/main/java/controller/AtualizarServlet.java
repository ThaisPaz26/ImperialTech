package controller;

import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modell.Usuario;
import modell.UsuarioDao;

@WebServlet("/atualizar")
public class AtualizarServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        Usuario usuario = new Usuario(Integer.parseInt(id), nome, cpf, email, senha);

        UsuarioDao usuarioDao = new UsuarioDao();
        try {
            usuarioDao.atualizar(usuario);
            response.sendRedirect("registrosBD.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Erro ao atualizar o registro: " + e.getMessage());
        }
    }
}