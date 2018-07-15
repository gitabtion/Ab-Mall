package cn.abtion.mall.service.impl;


import cn.abtion.mall.dao.AddressMapper;
import cn.abtion.mall.dao.CartMapper;
import cn.abtion.mall.po.Address;
import cn.abtion.mall.po.Cart;
import cn.abtion.mall.po.CartDetail;
import cn.abtion.mall.po.ProductInCart;
import cn.abtion.mall.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;

    @Autowired
    private AddressMapper addressMapper;

    @Override
    public List<ProductInCart> queryByMid(Integer mid) {
        return cartMapper.queryByMid(mid);
    }

    @Override
    public int add2Cart(Integer mid, Integer pid, Integer quantity) {
        Map<String,Object> param = new HashMap<>();
        param.put("mid",mid);
        param.put("pid",pid);
        param.put("quantity",quantity);
        //先查询用户的购物车中是否有此商品
        Cart cart = cartMapper.queryByMidAndPid(param);
        if(cart != null){
            //有此商品，修改数量
            return cartMapper.doUpdate(param);
        }
        return cartMapper.doInsert(param);
    }

    @Override
    public int delete(Integer mid, Integer pid) {
        Map<String,Object> param = new HashMap<>();
        param.put("mid",mid);
        param.put("pid",pid);
        return cartMapper.doDelete(param);
    }

    @Override
    public CartDetail queryTotal(Integer mid) {
        return cartMapper.queryTotal(mid);
    }

    @Override
    public List<Address> queryAddressByMid(Integer mid) {
        return addressMapper.queryByMid(mid);
    }

    @Override
    public int updateQuantity(Integer mid, Integer pid, Integer quantity) {
        Map<String,Object> param = new HashMap<>();
        param.put("mid",mid);
        param.put("pid",pid);
        param.put("quantity",quantity);
        return cartMapper.doUpdate(param);
    }
}
