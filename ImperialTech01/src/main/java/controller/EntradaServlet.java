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

@WebServlet("/entrada")
public class EntradaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        Usuario usuario = new Usuario(nome, cpf, email, senha);

        UsuarioDao usuarioDao = new UsuarioDao();
        try {
            usuarioDao.cadastra(usuario);
            System.out.println("Dados cadastrados!");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Dados não cadastrados");
        }

        response.sendRedirect("http://localhost:8080/ImperialTech01/Cadastro.jsp");
    }
}
