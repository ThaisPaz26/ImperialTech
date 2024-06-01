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

@WebServlet("/editar")
public class EditarServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        
        UsuarioDao usuarioDao = new UsuarioDao();
        Usuario usuario = null;
        try {
            usuario = usuarioDao.buscarID(Integer.parseInt(id));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("usuario", usuario);
        request.getRequestDispatcher("/editar.jsp").forward(request, response);
    }
}