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
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return todoList;
    }

    public ToDo getToDoById(int id) {
        ToDo todo = null;

        String sql = "SELECT * from todo WHERE id = ?;";
        try {
            Connection connection = DataBaseConnection.initializeDataBase();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            try {
                preparedStatement.setInt(1, id);
                ResultSet rs = preparedStatement.executeQuery();
                if (rs.next()) {
                    todo = new ToDo(rs.getInt("id"), rs.getString("message"));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return todo;
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

    public void removeById(int id) {
        String sql = "DELETE FROM todo WHERE id = ?;";
        try {
            Connection connection = DataBaseConnection.initializeDataBase();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            try {
                preparedStatement.setInt(1, id);
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void updateBy(int id, String message) {
        String sql = "UPDATE todo SET message = ? WHERE id = ?;";

        try {
            Connection connection = DataBaseConnection.initializeDataBase();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, message);
            preparedStatement.setInt(2, id);

            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
