package modell;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    public static Connection obterConexao() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios?useTimezone=true&serverTimezone=UTC", "root", "");
            System.out.println("Banco de Dados conectado com sucesso!");
        } catch (ClassNotFoundException e) {
            System.err.println("Driver JDBC não encontrado!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Não foi possível conectar no Banco de Dados!");
            e.printStackTrace();
        }

        return con;
    }
}
