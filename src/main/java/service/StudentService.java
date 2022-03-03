package service;

import model.Student;

import java.util.ArrayList;
import java.util.Comparator;

public class StudentService {
    private static final ArrayList<Student> students;

    static {
        students = new ArrayList<>();
        students.add(new Student(1, "chien", 12, "HN", 8));
        students.add(new Student(2, "hai", 12, "HN", 6));
        students.add(new Student(3, "nam", 12, "HN", 10));
    }

    public ArrayList<Student> getStudentList() {
        return students;
    }

    public Student getStudent(int id) {
        for (Student student : students) {
            if (student.getId() == id) {
                return student;
            }
        }
        return null;
    }

    public void createStuden(Student student) {
        students.add(student);
    }

    public void deleteStudent(Student student) {
        students.remove(student);
    }

    public void editStudent(Student student, int index) {
        students.set(index, student);
    }

    public ArrayList<Student> sortStudentList(){
        students.sort((o1,o2) -> (int)(o1.getAvg()- o2.getAvg()));
        return  students;
    }

    public ArrayList<Student> getStudentsListByAvg(){
        ArrayList<Student> studentList = new ArrayList<>();
        for (Student student: students){
            if (student.getAvg()>= 8){
                studentList.add(student);
            }
        }
        return studentList;
    }

    public ArrayList<Student> searchByName(String name){
        ArrayList<Student> studentsList = new ArrayList<>();
        for (Student student: students){
            if (student.getName().equals(name)){
                studentsList.add(student);
            }
        }
        return studentsList;
    }
}
