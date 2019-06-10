package com.msq.online.study.mapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.msq.online.study.modle.Student;

import java.util.List;
@Mapper
public interface StudentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Student record);

    int insertSelective(Student student);

    Student selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    Student selectByEmail(String email);

    List<Student> selectAllStudent();

    List<Student> selectByEmailAndPassword(@Param("email")String email,@Param("password")String password);

}