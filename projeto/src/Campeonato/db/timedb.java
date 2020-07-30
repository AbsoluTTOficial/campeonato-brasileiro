package Projeto.db;

import Projeto.classes.Time;
import Projeto.Conn.ConnectionFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class timedb {

    public static void selectAll(){
        String sql = "SELECT * FROM campeonato.times;";
        Connection conn = ConnectionFactory.getConexao();
        List<Time> timesList = new ArrayList<>();
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                //timesList.add(new Time(rs.getInt("id_clube"), rs.getString("nome"), rs.getString("estadio")));
                System.out.println("ID: " + rs.getInt("id_clube") + "\nNome: " + rs.getString("nome")
                        + "\nEstádio: " + rs.getString("estadio"));
                System.out.println("---------------------------------------------------------");
            }
            ConnectionFactory.close(conn, stmt, rs);
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public static void selectNome(String nome){
        String sql = "CALL `campeonato`.`GetTimePorNome`( ? );";
        Connection conn = ConnectionFactory.getConexao();
        try{
            CallableStatement cs = conn.prepareCall(sql);
            cs.setString(1, "%" + nome + "%");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                System.out.println("ID: " + rs.getInt("id_clube") + "\nNome: " + rs.getString("nome")
                        + "\nEstádio: " + rs.getString("estadio"));
                System.out.println("---------------------------------------------------------");
            }
            ConnectionFactory.close(conn, cs, rs);
        }catch (SQLException e){
            e.printStackTrace();
        }
    }



    public static void searchByName(String nome){
        String sql = "SELECT * FROM campeonato.times where nome like '%" + nome +"';";
        Connection conn = ConnectionFactory.getConexao();
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                //timeList.add(new Time(rs.getInt("id_clube"), rs.getString("nome"), rs.getString("estadio")));
                System.out.println("ID: " + rs.getInt("id_clube") + "\nNome: " + rs.getString("nome")
                        + "\nEstádio: " + rs.getString("estadio"));
            }
            ConnectionFactory.close(conn, stmt, rs);
        }catch (SQLException e){
            e.printStackTrace();
        }
    }


}
