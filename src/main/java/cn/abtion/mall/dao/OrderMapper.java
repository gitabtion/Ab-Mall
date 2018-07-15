package cn.abtion.mall.dao;

import cn.abtion.mall.po.OrderItem;

import java.util.List;
import java.util.Map;

/**
 * @author abtion
 * @since 2018/7/15 08:55
 * email abtion@outlook.com
 */
public interface OrderMapper {
    List<OrderItem> queryByMid(Integer mid);
    int doInsert(Map<String,Object> param);
    int doInsertDetail(List<Map<String,Object>> params);
}
