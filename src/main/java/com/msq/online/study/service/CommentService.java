package com.msq.online.study.service;

import com.msq.online.study.mapper.CommentMapper;
import com.msq.online.study.modle.Comment;

import java.util.List;

public interface CommentService{


    int deleteByPrimaryKey(Long id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Long id);

    List<Comment> selectByCourseId(Long courseId);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);

}
