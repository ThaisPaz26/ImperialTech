package modell;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class UsuarioDao {

// METODO CADASTRA
	public void cadastra(Usuario usuario) throws SQLException {
		String sql = "INSERT INTO usuario(nome, cpf, email, senha) VALUES(?,?,?,?)";

		try (Connection con = Conexao.obterConexao(); PreparedStatement preparador = con.prepareStatement(sql)) {

			preparador.setString(1, usuario.getNome());
			preparador.setString(2, usuario.getCpf());
			preparador.setString(3, usuario.getEmail());
			preparador.setString(4, usuario.getSenha());

			int linhaInserida = preparador.executeUpdate();
			if (linhaInserida > 0) {
				System.out.println("Um novo usuário foi inserido com sucesso!");
			}
		} catch (SQLException e) {
			System.err.println("Erro ao inserir usuário!");
			e.printStackTrace();
			throw e;
		}
	}

//METODO DELETAR
	public void deletar(int id) throws SQLException {
		String sql = "DELETE FROM usuario WHERE id = ?";

		try (Connection con = Conexao.obterConexao(); PreparedStatement preparador = con.prepareStatement(sql)) {

			preparador.setInt(1, id);

			int rowsDeleted = preparador.executeUpdate();
			if (rowsDeleted > 0) {
				System.out.println("Usuário deletado com sucesso!");
			}
		} catch (SQLException e) {
			System.err.println("Erro ao deletar usuário!");
			e.printStackTrace();
			throw e;
		}
	}

	// METODO BUSCAR PELO ID (PK)
	public Usuario buscarID(int id) throws SQLException {
		String sql = "SELECT * FROM usuario WHERE id=?";
		Usuario usuario = null;

		try (Connection con = Conexao.obterConexao(); PreparedStatement preparador = con.prepareStatement(sql)) {
			preparador.setInt(1, id);
			ResultSet resultado = preparador.executeQuery();

			if (resultado.next()) {
				usuario = new Usuario(resultado.getInt("id"), resultado.getString("nome"), resultado.getString("cpf"),
						resultado.getString("email"), resultado.getString("senha"));
			}
		} catch (SQLException e) {
			System.err.println("Erro ao buscar usuário pelo ID!");
			e.printStackTrace();
			throw e;
		}

		return usuario;
	}
	
	
	//METODO ATUALIZAR
	public void atualizar(Usuario usuario) throws SQLException {
	    String sql = "UPDATE usuario SET nome=?, cpf=?, email=?, senha=? WHERE id=?";

	    try (Connection con = Conexao.obterConexao(); PreparedStatement preparador = con.prepareStatement(sql)) {
	        preparador.setString(1, usuario.getNome());
	        preparador.setString(2, usuario.getCpf());
	        preparador.setString(3, usuario.getEmail());
	        preparador.setString(4, usuario.getSenha());
	        preparador.setInt(5, usuario.getId());

	        int rowsUpdated = preparador.executeUpdate();
	        if (rowsUpdated > 0) {
	            System.out.println("Usuário atualizado com sucesso!");
	        }
	    } catch (SQLException e) {
	        System.err.println("Erro ao atualizar usuário!");
	        e.printStackTrace();
	        throw e;
	    }
	}
}
