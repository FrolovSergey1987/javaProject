package database;



import entity.Discipline;
import entity.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBManager {

    public static List<Discipline> getAllActiveDisciplines(){
        ArrayList<Discipline> disciplines = new ArrayList<Discipline>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students?user=root&password=mefA1evica");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM discipline where status = '1'");
            while (rs.next()){
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
                disciplines.add(discipline);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return disciplines;
    }
    public static List<Student> getAllActiveStudents(){
        ArrayList<Student> students = new ArrayList<Student>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students?user=root&password=mefA1evica");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM student where status = '1'");
            while (rs.next()){
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setName(rs.getString("name"));
                student.setSurname(rs.getString("surname"));
                student.setGroup(rs.getString("group"));
                student.setDate(rs.getDate("date"));
                students.add(student);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }


    public static void modifyStudent(Student student){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students_15?user=root&password=qsz9267188558d27");
            Statement stmt = conn.createStatement();
            stmt.execute("UPDATE `student` SET `sername` = '"
                    +student.getSurname()+"', `name` = '"
                    +student.getName()+"', `group` = '"
                    +student.getGroup()+"', `date` = '"
                    +student.getDate()+"' WHERE (`id` = '"
                    +student.getId()+"');");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
