package cn.abtion.mall.service;

import cn.abtion.mall.po.OrderItem;

import java.util.List;

/**
 * @author abtion
 * @since 2018/7/15 09:06
 * email abtion@outlook.com
 */
public interface OrderService {
    List<OrderItem> queryByMid(Integer id);

    int checkout(Integer mid,Integer aid);
}
