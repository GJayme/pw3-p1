package com.example.gabrieljaymep1.entity;

import java.util.Objects;

public class ToDo {
    private int id;
    private String message;

    public ToDo(int id, String message) {
        this.id = id;
        this.message = message;
    }

    public ToDo(String message) {
        this.message = message;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ToDo toDo = (ToDo) o;
        return id == toDo.id && Objects.equals(message, toDo.message);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, message);
    }

    @Override
    public String toString() {
        return "ToDo{" +
                "id=" + id +
                ", message=" + message  +
                '}';
    }
}
