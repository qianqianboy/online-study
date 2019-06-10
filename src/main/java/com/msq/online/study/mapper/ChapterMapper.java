package com.msq.online.study.mapper;

import com.msq.online.study.modle.Chapter;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChapterMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Chapter record);

    int insertSelective(Chapter record);

    Chapter selectByPrimaryKey(Long id);

    Chapter selectByCourseId(Long courseId);

    int updateByPrimaryKeySelective(Chapter record);

    int updateByPrimaryKey(Chapter record);
}