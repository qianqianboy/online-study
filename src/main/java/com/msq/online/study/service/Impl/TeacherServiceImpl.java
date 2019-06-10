package com.msq.online.study.service.Impl;

import com.msq.online.study.mapper.*;
import com.msq.online.study.modle.Course;
import com.msq.online.study.modle.UploadingCourse;
import com.msq.online.study.util.MD5CryptUtil;
import org.apache.commons.codec.digest.Md5Crypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import javax.servlet.ServletContext;

import com.msq.online.study.modle.Teacher;
import com.msq.online.study.service.TeacherService;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Service
public class TeacherServiceImpl implements TeacherService{

    @Resource
    private TeacherMapper teacherMapper;
    @Autowired
    private CourseMapper courseMapper;
    @Autowired
    private ChapterMapper chapterMapper;
    @Autowired
    private VideoMapper videoMapper;
    @Autowired
    private UploadingCourseMapper uploadingCourseMapper;

    @Autowired
    private ServletContext servletContext;
    @Override
    public Teacher login(String number, String password) {
        Teacher teacher = teacherMapper.selectByNumber(number);
        //获取后台的用户密码
        String md5Pass;
        md5Pass = MD5CryptUtil.getSalts(teacher.getPassword());
        //将用户输入的密码加密
        String pass = Md5Crypt.md5Crypt(password.getBytes(),md5Pass);
        //判断用户输入的密码与后台密码是否一致
        return !pass.equals(teacher.getPassword()) ? null:teacher;
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return teacherMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Teacher record) {
        return teacherMapper.insert(record);
    }

    @Override
    public int insertSelective(Teacher record) {
        return teacherMapper.insertSelective(record);
    }

    @Override
    public Teacher selectByPrimaryKey(Long id) {
        return teacherMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Teacher record) {
        return teacherMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Teacher record) {
        return teacherMapper.updateByPrimaryKey(record);
    }

    @Override
    public boolean upload(UploadingCourse course, MultipartFile image) throws IOException {
        String fileName;
        fileName = UUID.randomUUID().toString().replace("-","");
        String realName=image.getOriginalFilename();
        String typeName;
        typeName = realName.substring(realName.lastIndexOf("."));
        String savePath=servletContext.getRealPath("/test");
        String saveName=fileName+typeName;
        image.transferTo(new File(savePath+"/"+saveName));
        course.setImage(saveName);
        //course表新增一条记录
        uploadingCourseMapper.insertSelective(course);
        return true;
    }

}
