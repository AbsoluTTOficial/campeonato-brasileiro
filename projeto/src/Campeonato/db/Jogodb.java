package Projeto.db;

import Projeto.classes.Jogo;
import Projeto.Conn.ConnectionFactory;

import java.sql.*;

public class Jogodb {
    public static void selectAllJogos() {
        String sql = "SELECT * FROM campeonato.jogos;";
        Connection conn = ConnectionFactory.getConexao();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                System.out.println("Id jogo: " + rs.getInt("id_jogo") + "\nRodada: " + rs.getInt("rodada") + "\nData do jogo: " + rs.getString("data_jogo") +
                        "\nLocal: " + rs.getString("local_jogo") +
                        "\nMandante: " + rs.getString("clube_mandante") + "\nVisitante: "
                        + rs.getString("clube_visitante") + "\nGols Mandante: " + rs.getInt("gols_mandate")
                        + "\nGols Visitante: " + rs.getInt("gols_visitante"));
                System.out.println("----------------------------------------------------------------------------");
            }
            ConnectionFactory.close(conn, stmt, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void selectByRodada(int rodada) {
        String sql = "SELECT * FROM campeonato.jogos where rodada = " + rodada + ";";
        Connection conn = ConnectionFactory.getConexao();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                System.out.println("Id jogo: " + rs.getInt("id_jogo") + "\nRodada: " + rs.getInt("rodada") + "\nData do jogo: " + rs.getString("data_jogo") +
                        "\nLocal: " + rs.getString("local_jogo") +
                        "\nMandante: " + rs.getString("clube_mandante") + "\nVisitante: "
                        + rs.getString("clube_visitante") + "\nGols Mandante: " + rs.getInt("gols_mandate")
                        + "\nGols Visitante: " + rs.getInt("gols_visitante"));
            }
            ConnectionFactory.close(conn, stmt, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void selectByIdJogo(int id) {
        String sql = "SELECT * FROM campeonato.jogos where id_jogo = '" + id + "';";
        Connection conn = ConnectionFactory.getConexao();
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                System.out.println("Id jogo: " + rs.getInt("id_jogo") + "\nRodada: " + rs.getInt("rodada") + "\nData do jogo: " + rs.getString("data_jogo") +
                        "\nLocal: " + rs.getString("local_jogo") +
                        "\nMandante: " + rs.getString("clube_mandante") + "\nVisitante: "
                        + rs.getString("clube_visitante"));
            }
            ConnectionFactory.close(conn, stmt, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionFactory.close(conn, stmt, rs);
        }
    }

    public static String selectMandante(int id) {
        String sql = "select clube_mandante from jogos where id_jogo =" + id + ";";
        Connection conn = ConnectionFactory.getConexao();
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                return rs.getString("clube_mandante");
            }
            ConnectionFactory.close(conn, stmt, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionFactory.close(conn, stmt, rs);
        }
        return null;
    }

    public static String selectVisitante(int id) {
        String sql = "select clube_visitante from jogos where id_jogo =" + id + ";";
        Connection conn = ConnectionFactory.getConexao();
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                return rs.getString("clube_visitante");
            }
            ConnectionFactory.close(conn, stmt, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionFactory.close(conn, stmt, rs);
        }
        return null;
    }

    public static int selectId(String nome) {
        String sql = "select id_clube from campeonato.times where nome ='" + nome + "';";

        try(Connection conn = ConnectionFactory.getConexao();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                return rs.getInt("id_clube");
            }
            ConnectionFactory.close(conn, stmt, rs);
        } catch (SQLException e) {
            e.printStackTrace();
//        }finally {
//            ConnectionFactory.close(conn, stmt, rs);
        }
        return -1; // deu erro!
    }


    public static void updatePlacar(int id, int golsM, int golsV) {
        String sql = "UPDATE campeonato.jogos SET gols_mandate = '" + golsM + "', gols_visitante ='" + golsV + "' WHERE id_jogo= '" + id + "';";

        try(Connection conn = ConnectionFactory.getConexao();
            Statement stmt = conn.createStatement()) {
            stmt.executeUpdate(sql);
            ConnectionFactory.close(conn, stmt);
            System.out.println("Fim da Partida!");
        } catch (SQLException e) {
            e.printStackTrace();
//        }finally {
//            ConnectionFactory.close(conn, stmt);
        }
    }
}
