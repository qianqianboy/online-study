package com.msq.online.study.service.Impl;
import com.msq.online.study.mapper.CourseMapper;
import com.msq.online.study.mapper.CourseStudentMapper;
import com.msq.online.study.modle.Course;
import com.msq.online.study.modle.CourseStudent;
import com.msq.online.study.util.MD5CryptUtil;
import org.apache.commons.codec.digest.Md5Crypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;


import com.msq.online.study.mapper.StudentMapper;
import com.msq.online.study.modle.Student;
import com.msq.online.study.service.StudentService;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{

    @Resource
    private StudentMapper studentMapper;
    @Autowired
    private CourseMapper courseMapper;
    @Autowired
    private CourseStudentMapper courseStudentMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return studentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Student student) {

        return studentMapper.insert(student);
    }

    @Override
    public int insertSelective(Student student) {
        student.setPassword(Md5Crypt.md5Crypt(student.getPassword().getBytes()));
        return studentMapper.insertSelective(student);
    }

    @Override
    public Student selectByPrimaryKey(Long id) {
        return studentMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Student record) {
        return studentMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Student record) {
        return studentMapper.updateByPrimaryKey(record);
    }

    @Override
    public Student login(String email, String password) {
        Student student = studentMapper.selectByEmail(email);
            //获取后台的用户密码
            String md5Pass =  MD5CryptUtil.getSalts(student.getPassword());
            //将用户输入的密码加密
            String pass = Md5Crypt.md5Crypt(password.getBytes(),md5Pass);
            //判断用户输入的密码与后台密码是否一致
            return !pass.equals(student.getPassword()) ? null:student;
    }

    @Override
    public List<Student> selectAllStudent() {
        return studentMapper.selectAllStudent();
    }

    @Override
    public boolean collection(Long courseId, Long studentId) {
        CourseStudent courseStudent = courseStudentMapper.selectByCourseIdAndStudentId(courseId, studentId);
        if (courseStudent==null){
            CourseStudent cs = new CourseStudent();
            //根据id查询当前课程
            Course course = courseMapper.selectByPrimaryKey(courseId);
            //将课程设置到中间表中去
            cs.setCourse(course);
            //将学生id设置到中间表中去
            cs.setStudentId(studentId);
            //更新中间表，新增一条中间表记录
            courseStudentMapper.insert(cs);
            //维护课程表，对当前课程的收藏量做+1操作
            course.setFollowedNum(course.getFollowedNum()+1);
            //更新课程表
            courseMapper.updateByPrimaryKeySelective(course);
            return true;
        }
        return false;
    }

    @Override
    public boolean cancel(Long courseId, Long studentId) {
        CourseStudent courseStudent = courseStudentMapper.selectByCourseIdAndStudentId(courseId, studentId);
        if (courseStudent==null)
            return false;
        courseStudentMapper.deleteByPrimaryKey(courseStudent.getId());
        Course course = courseMapper.selectByPrimaryKey(courseId);
        course.setFollowedNum(course.getFollowedNum()-1);
        courseMapper.updateByPrimaryKeySelective(course);
        return true;
    }

}
