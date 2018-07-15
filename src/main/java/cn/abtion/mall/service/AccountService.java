package cn.abtion.mall.service;


import cn.abtion.mall.po.Member;

public interface AccountService {
    Member login(String name, String pass);
}
