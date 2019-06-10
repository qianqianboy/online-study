package com.msq.online.study.service.Impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.msq.online.study.mapper.ParentSubjectMapper;
import com.msq.online.study.modle.ParentSubject;
import com.msq.online.study.service.ParentSubjectService;
@Service
public class ParentSubjectServiceImpl implements ParentSubjectService{

    @Resource
    private ParentSubjectMapper parentSubjectMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return parentSubjectMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(ParentSubject record) {
        return parentSubjectMapper.insert(record);
    }

    @Override
    public int insertSelective(ParentSubject record) {
        return parentSubjectMapper.insertSelective(record);
    }

    @Override
    public ParentSubject selectByPrimaryKey(Long id) {
        return parentSubjectMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(ParentSubject record) {
        return parentSubjectMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(ParentSubject record) {
        return parentSubjectMapper.updateByPrimaryKey(record);
    }

}
