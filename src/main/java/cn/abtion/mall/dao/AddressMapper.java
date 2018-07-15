package cn.abtion.mall.dao;

import cn.abtion.mall.po.Address;

import java.util.List;

/**
 * @author abtion
 * @since 2018/7/15 14:16
 * email abtion@outlook.com
 */
public interface AddressMapper {
    List<Address> queryByMid(Integer mid);
}
