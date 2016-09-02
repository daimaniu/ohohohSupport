package cn.daimaniu.dao;

import cn.daimaniu.model.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);

    int countAll();

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}