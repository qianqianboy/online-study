package com.msq.online.study.service;
import com.msq.online.study.modle.Student;

import java.util.List;


public interface StudentService{


    int deleteByPrimaryKey(Long id);

    int insert(Student record);

    int insertSelective(Student student);

    Student selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    Student login(String email, String password);

    List<Student> selectAllStudent();

    boolean collection(Long courseId, Long studentId);

    boolean cancel(Long courseId, Long studentId);
}
