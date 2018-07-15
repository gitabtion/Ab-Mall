package cn.abtion.mall.dao;


import cn.abtion.mall.po.Member;

import java.util.Map;

public interface MemberMapper {
    /**
     * 用来登录的数据方法
     * @param param 包含用户名(username)和密码(password)
     * @return 用户信息
     */
    Member query(Map<String, Object> param);
}
