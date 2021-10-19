package database;

import entity.Student;
import entity.Term;

public class Main {
    public static void main(String[] args) {

        System.out.println(DBManager.getDisciplineById("1"));
        Term term = new Term();
        term.setId(term.getId() + 1);
        term.setDuration(term.getDuration());
        System.out.println(term.getId() + term.getDuration() + term.getName());
    }
}
