package controller;

import java.io.IOException;

import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modell.UsuarioDao;

@WebServlet("/excluir")
public class ExcluirServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        UsuarioDao usuarioDao = new UsuarioDao();

        try {
            usuarioDao.deletar(Integer.parseInt(id));
            response.sendRedirect("registrosBD.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Erro ao deletar o registro: " + e.getMessage());
        }
    }
}
