package com.example.gabrieljaymep1;

import java.sql.*;
import java.util.ArrayList;

public class ToDoDAO {
    public ArrayList<ToDo> getListTodo() {
        ArrayList<ToDo> todoList = new ArrayList<>();
        ToDo todo;

        String sql = "SELECT * from todo;";
        try {
            Connection connection = DataBaseConnection.initializeDataBase();
            Statement stmt = connection.createStatement();

            try {
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
                    todo = new ToDo(rs.getInt("id"), rs.getString("message"));
                    todoList.add(todo);
                }

                connection.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return todoList;
    }

    public void insertNewToDo(ToDo todo) {
        String sql = "INSERT INTO todo(message) VALUES(?);";
        try {
            Connection connection = DataBaseConnection.initializeDataBase();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, todo.getMessage());

            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}