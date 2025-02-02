package io.github.bschroedl;

import java.sql.*;

public class TestConnection {


    public static void main(String[] args) {

        String url = System.getenv("DB_URL");
        String user = System.getenv("DB_USER");
        String pass = System.getenv("DB_PASS");

        System.out.println("Trying to Connecting to Database");
        try (Connection conn = DriverManager.getConnection(url, user, pass)) {
            System.out.println("Connected to Database");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Attendants");

            while (rs.next()) {
                System.out.println("Attendant Name: " + rs.getString("Name"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
