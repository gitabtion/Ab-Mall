package cn.abtion.mall.dao;


import cn.abtion.mall.po.Cart;
import cn.abtion.mall.po.CartDetail;
import cn.abtion.mall.po.ProductInCart;

import java.util.List;
import java.util.Map;

public interface CartMapper {
    List<ProductInCart> queryByMid(Integer mid);
    int doInsert(Map<String, Object> param);
    Cart queryByMidAndPid(Map<String, Object> param);
    int doUpdate(Map<String, Object> param);
    int doDelete(Map<String, Object> param);
    CartDetail queryTotal(Integer mid);
    int remove(Integer mid);
}
