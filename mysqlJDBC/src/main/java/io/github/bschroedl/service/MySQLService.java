package io.github.bschroedl.service;

import org.springframework.stereotype.Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Service
public class MySQLService {

    public String getDataFromDatabase() {
        String result = "";

        try (Connection connection = DriverManager.getConnection(
                System.getenv("DB_URL"), System.getenv("DB_USER"), System.getenv("DB_PASS"))) {
            String sql = "SELECT Name FROM Events";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                result = resultSet.getString("Name");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
