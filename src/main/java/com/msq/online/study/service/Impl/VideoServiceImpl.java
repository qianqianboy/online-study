package com.msq.online.study.service.Impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.msq.online.study.modle.Video;
import com.msq.online.study.mapper.VideoMapper;
import com.msq.online.study.service.VideoService;
@Service
public class VideoServiceImpl implements VideoService{

    @Resource
    private VideoMapper videoMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return videoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Video record) {
        return videoMapper.insert(record);
    }

    @Override
    public int insertSelective(Video record) {
        return videoMapper.insertSelective(record);
    }

    @Override
    public Video selectByPrimaryKey(Long id) {
        return videoMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Video record) {
        return videoMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Video record) {
        return videoMapper.updateByPrimaryKey(record);
    }

}
