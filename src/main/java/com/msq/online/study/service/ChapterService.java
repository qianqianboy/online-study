package com.msq.online.study.service;

import com.msq.online.study.modle.Chapter;
import com.msq.online.study.mapper.ChapterMapper;
public interface ChapterService{


    int deleteByPrimaryKey(Long id);

    int insert(Chapter record);

    int insertSelective(Chapter record);

    Chapter selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Chapter record);

    int updateByPrimaryKey(Chapter record);

}
