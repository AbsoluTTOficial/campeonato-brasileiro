package Projeto.classes;

import Projeto.Conn.ConnectionFactory;
import Projeto.db.Requisitosdb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

import static Projeto.db.Jogodb.selectByIdJogo;

public class Partidas {
    public static void JogarPartida() {
        resetarPlacares();
        for (int i = 1; i <= 380; i++) {
            selectByIdJogo(i);
            Random r = new Random();
            int golsM = r.nextInt(6);
            int golsV = r.nextInt(6);
            int mandanteCV = r.nextInt(2);
            int visitanteCV = r.nextInt(2);
            int mandanteCA = r.nextInt(5);
            int visitanteCA = r.nextInt(5);

            System.out.println(golsM + " x " + golsV);
            Requisitosdb.resultadoPartida(i, golsM, golsV, mandanteCA, visitanteCA, mandanteCV, visitanteCV);
            try {
                TimeUnit.NANOSECONDS.sleep(10);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        campeão();
    }

    public static void campeão() {
        String sql = "select r.idTime, t.nome, r.pontos, r.vitorias, r.derrotas, r.empates, r.GP, r.GC, r.CA, r.CV from requisitos as r\n" +
                "join times as t\n" +
                "on r.idTime = t.id_clube\n" +
                "where pontos = (select max(pontos) from requisitos) and vitorias = (select max(vitorias) from requisitos);";
        Connection conn = ConnectionFactory.getConexao();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("Campeão do Campeonato:");
            while (rs.next()) {
                System.out.println("Pontos: " + rs.getInt("pontos") + "\nId Time: " + rs.getInt("idTime") + "\nNome: " + rs.getString("nome") + "\nVitorias: " + rs.getInt("vitorias")
                +  "\nGols Pro: " + rs.getInt("GP"));

            }
            ConnectionFactory.close(conn, stmt, rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void reset(int id) {
        String sql = "UPDATE `campeonato`.`requisitos` SET `pontos` = '"+0+"', `vitorias` = '"+0+"', `derrotas` = '"+ 0 +"', empates = '"+0 +"', `GP` = '"+0+ "', `GC` = '"+0+"', `CA` = '"+0+"', `CV` = '"+0+"' WHERE (`idTime` = '"+ id +"');";
        Connection conn = ConnectionFactory.getConexao();
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            ConnectionFactory.close(conn, stmt);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void resetarPlacares(){
        int t = 20;
        for(int i = 1; i <= t; i++){
            reset(i);
        }
        System.out.println("------------------------------------");
    }
}
