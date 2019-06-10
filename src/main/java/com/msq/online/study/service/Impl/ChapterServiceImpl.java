package com.msq.online.study.service.Impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.msq.online.study.modle.Chapter;
import com.msq.online.study.mapper.ChapterMapper;
import com.msq.online.study.service.ChapterService;
@Service
public class ChapterServiceImpl implements ChapterService{

    @Resource
    private ChapterMapper chapterMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return chapterMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Chapter record) {
        return chapterMapper.insert(record);
    }

    @Override
    public int insertSelective(Chapter record) {
        return chapterMapper.insertSelective(record);
    }

    @Override
    public Chapter selectByPrimaryKey(Long id) {
        return chapterMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Chapter record) {
        return chapterMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Chapter record) {
        return chapterMapper.updateByPrimaryKey(record);
    }

}
