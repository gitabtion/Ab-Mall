package cn.abtion.mall.service;


import cn.abtion.mall.po.Address;
import cn.abtion.mall.po.CartDetail;
import cn.abtion.mall.po.ProductInCart;

import java.util.List;

public interface CartService {
    List<ProductInCart> queryByMid(Integer mid);
    int add2Cart(Integer mid, Integer pid, Integer quantity);
    int delete(Integer mid, Integer pid);
    CartDetail queryTotal(Integer mid);
    List<Address> queryAddressByMid(Integer mid);
    int updateQuantity(Integer mid, Integer pid, Integer quantity);

}
