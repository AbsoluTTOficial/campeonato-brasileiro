package Projeto.db;

import Projeto.Conn.ConnectionFactory;

import java.net.ConnectException;
import java.sql.*;

import static Projeto.db.Jogodb.*;


public class Requisitosdb {


    public static void vitoria(int id) {
        String sql = "update requisitos set pontos = pontos + ?, vitorias = vitorias + ? where idTime = ?";
        try (Connection conn = ConnectionFactory.getConexao();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, 3);
            ps.setInt(2, 1);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void derrota(int id) {
        String sql = "update requisitos set derrotas = derrotas + ? where idTime = ?";
        try (Connection conn = ConnectionFactory.getConexao();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, 1);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



    public static void empateMandante(int id) {
        String sql = "update requisitos set pontos = pontos + ?, empates = empates + ? where idTime = ?";
        try (Connection conn = ConnectionFactory.getConexao();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, 1);
            ps.setInt(2, 1);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void empateVisitante(int id) {
        String sql = "update requisitos set pontos = pontos + ?, empates = empates + ? where idTime = ?";
        try (Connection conn = ConnectionFactory.getConexao();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, 1);
            ps.setInt(2, 1);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void cartõesMandante(int id, int ca, int cv) {
        String sql = "UPDATE `campeonato`.`requisitos` SET `CA`= ?, `CV`= ? WHERE `idTime`= ?;";
        try (Connection conn = ConnectionFactory.getConexao();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, ca);
            ps.setInt(2, cv);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void cartõesVisitante(int id, int ca, int cv) {
        String sql = "UPDATE `campeonato`.`requisitos` SET `CA`= ?, `CV`= ? WHERE `idTime`= ?;";
        try (Connection conn = ConnectionFactory.getConexao();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, ca);
            ps.setInt(2, cv);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void SaldoGols(int id, int gols, int golsC) {
        String sql = "UPDATE campeonato.requisitos SET GP = GP + ?, GC = GC + ? where idTime= ?;";
        try (Connection conn = ConnectionFactory.getConexao();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, gols);
            ps.setInt(2, golsC);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void selectAll() {
        String sql = "select t.nome, r.pontos, r.vitorias, r.derrotas, r.empates, r.GP, r.GC, r.CA, r.CV from times as t\n" +
                "join requisitos as r\n" +
                "on t.id_clube = r.idTime\n" +
                "order by pontos desc;";
        Connection conn = ConnectionFactory.getConexao();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            int cont = 1;
            while (rs.next()) {
                System.out.println("Posição: " + cont + " Nome: " + rs.getString("nome") + " Pts: " +
                        rs.getInt("pontos") + " Vitorias: " + rs.getInt("vitorias") + " Derrotas: " + rs.getInt("Derrotas") + " Empates: " +
                        rs.getInt("empates") + " GP: " + rs.getInt("GP") + " GC: " + rs.getInt("GC") + " CA: " + rs.getInt("CA") + " CV: " +
                        rs.getInt("CV"));
                cont++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void resultadoPartida(int id, int golsM, int golsV, int caM, int caV, int cvM, int cvV) {
        if (golsM > golsV) {
            System.out.println("Vencedor da partida: " + Jogodb.selectMandante(id));
            System.out.println("CA mandante: " + caM);
            System.out.println("CV mandante: " + cvM);
            System.out.println("CA visitante: " + caV);
            System.out.println("CV visitante: " + cvV);
            int idM = selectId(selectMandante(id));
            int idV = selectId(selectVisitante(id));
            Requisitosdb.vitoria(idM);
            Requisitosdb.cartõesMandante(idM, caM, cvM);
            Requisitosdb.derrota(idV);
            Requisitosdb.cartõesVisitante(idV, caV, cvV);
            Requisitosdb.SaldoGols(idM, golsM, golsV);
            Requisitosdb.SaldoGols(idV, golsV, golsM);
        } else if (golsV > golsM) {
            System.out.println("Vencedor da Partida: " + selectVisitante(id));
            System.out.println("CA visitante: " + caV);
            System.out.println("CV visitante: " + cvV);
            System.out.println("CA mandante: " + caM);
            System.out.println("CV mandante: " + cvM);
            int idV = selectId(selectVisitante(id));
            int idM = selectId(selectMandante(id));
            Requisitosdb.vitoria(idV);
            Requisitosdb.cartõesVisitante(idV, caV, cvV);
            Requisitosdb.derrota(idM);
            Requisitosdb.cartõesMandante(idM, caM, cvV);
            Requisitosdb.SaldoGols(idM, golsM, golsV);
            Requisitosdb.SaldoGols(idV, golsV, golsM);
        } else {
            System.out.println("A partida Empatou!");
            System.out.println("CA mandante: " + caM);
            System.out.println("CV mandante: " + cvM);
            System.out.println("CA visitante: " + caV);
            System.out.println("CV visitante: " + cvV);
            int idM = selectId(selectMandante(id));
            int idV = selectId(selectVisitante(id));
            Requisitosdb.empateMandante(idM);
            Requisitosdb.cartõesMandante(idM, caM, cvM);
            Requisitosdb.empateVisitante(idV);
            Requisitosdb.cartõesVisitante(idV, caV, cvV);
            Requisitosdb.SaldoGols(idM, golsM, golsV);
            Requisitosdb.SaldoGols(idV, golsV, golsM);
        }
        updatePlacar(id, golsM, golsV);
        System.out.println("------------------------------------------------");
    }

}
