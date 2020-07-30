package Projeto.Conn;

import java.sql.*;

public class ConnectionFactory {

    public static Connection getConexao(){
        String url= "jdbc:mysql://127.0.0.1:3306/campeonato?useTimezone=true&serverTimezone=America/Sao_Paulo";
        String user = "root";
        String password = "";

        try{
            return DriverManager.getConnection(url, user, password);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public static void close(Connection connection){
        try {
            if (connection != null) {
                connection.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public static void close (Connection connection, Statement stmt){
        close(connection);
        try {
            if(stmt != null){
                stmt.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public static void close(Connection connection, Statement stmt, ResultSet rs){
        close(connection, stmt);
        try {
            rs.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
