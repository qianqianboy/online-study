package com.msq.online.study.service;
import com.msq.online.study.modle.Teacher;
import com.msq.online.study.modle.UploadingCourse;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface TeacherService{

    Teacher login(String number, String password);

    int deleteByPrimaryKey(Long id);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);


    /**
     * 新增课程
     * @param course
     * @return
     */
    boolean upload(UploadingCourse course, MultipartFile image) throws IOException;
}
