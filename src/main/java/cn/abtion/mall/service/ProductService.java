package cn.abtion.mall.service;


import cn.abtion.mall.po.Product;
import cn.abtion.mall.po.ProductPage;

import java.util.List;

public interface ProductService {

    ProductPage query(Integer cid, Integer bid, String keyWord, Integer page);
    Product queryByPid(Integer pid);
}
