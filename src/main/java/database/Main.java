package database;

import entity.Discipline;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Discipline> disciplines= DBManager.getAllActiveDisciplines();
        System.out.println("sdsd");

    }
}
