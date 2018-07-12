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
}
