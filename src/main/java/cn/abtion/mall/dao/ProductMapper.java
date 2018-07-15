package cn.abtion.mall.dao;

import cn.abtion.mall.po.Product;

import java.util.List;
import java.util.Map;

public interface ProductMapper {
    /**
     * 查询所有商品
     * @return
     */
    List<Product> query(Map<String,Object> params);
    /**
     * 根据pid 查询商品
     * @param pid 商品的ID
     * @return 查询出的商品
     */
    Product queryByPid(Integer pid);
    int doUpdate(Map<String,Object> param);
}
