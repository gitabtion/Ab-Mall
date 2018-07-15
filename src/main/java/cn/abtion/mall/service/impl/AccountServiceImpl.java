package cn.abtion.mall.service.impl;


import cn.abtion.mall.dao.MemberMapper;
import cn.abtion.mall.po.Member;
import cn.abtion.mall.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public Member login(String name, String pass) {
        Map<String,Object> param = new HashMap<>();
        param.put("username",name);
        param.put("password",pass);
        return memberMapper.query(param);
    }
}
