package cn.abtion.mall.dao;

import cn.abtion.mall.po.Nav;

import java.util.List;

/**
 * 数据访问层（持久化层）
 */
public interface NavMapper {

    /**
     * 查询出导航中的分类以及对应的品牌
     * @return
     */
    List<Nav> getNav();
}
