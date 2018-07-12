package cn.abtion.mall.service.impl;

import cn.abtion.mall.dao.NavMapper;
import cn.abtion.mall.po.Nav;
import cn.abtion.mall.service.NavService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 业务层依赖数据层
 */
@Service
public class NavServiceImpl implements NavService {
    @Autowired
    private NavMapper navMapper;

    @Override
    public List<Nav> getNav() {
        return navMapper.getNav();
    }
}
