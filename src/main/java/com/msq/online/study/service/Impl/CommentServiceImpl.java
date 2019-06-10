package com.msq.online.study.service.Impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.msq.online.study.mapper.CommentMapper;
import com.msq.online.study.modle.Comment;
import com.msq.online.study.service.CommentService;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService{

    @Resource
    private CommentMapper commentMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return commentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Comment record) {
        return commentMapper.insert(record);
    }

    @Override
    public int insertSelective(Comment record) {
        return commentMapper.insertSelective(record);
    }

    @Override
    public Comment selectByPrimaryKey(Long id) {
        return commentMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Comment> selectByCourseId(Long courseId) {
        return commentMapper.selectByCourseId(courseId);
    }

    @Override
    public int updateByPrimaryKeySelective(Comment record) {
        return commentMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Comment record) {
        return commentMapper.updateByPrimaryKey(record);
    }

}
