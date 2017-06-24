
package com.sbu.dao;

import com.sbu.dao.model.Student;
import java.util.List;
import org.springframework.stereotype.Repository;


@Repository
public interface StudentDAO {
   
       public void insertStudent(Student student);
       public void updateStudent(Student student);
       public void deleteStudent (int id);
       public Student getStudent (int id);
       public List<Student> getAllStudents();
}
