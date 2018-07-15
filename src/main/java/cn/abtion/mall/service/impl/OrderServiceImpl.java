package cn.abtion.mall.service.impl;

import cn.abtion.mall.dao.CartMapper;
import cn.abtion.mall.dao.OrderMapper;
import cn.abtion.mall.dao.ProductMapper;
import cn.abtion.mall.po.OrderItem;
import cn.abtion.mall.po.ProductInCart;
import cn.abtion.mall.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author abtion
 * @since 2018/7/15 09:07
 * email abtion@outlook.com
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private CartMapper cartMapper;

    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<OrderItem> queryByMid(Integer mid) {
        return orderMapper.queryByMid(mid);
    }

    @Transactional
    @Override
    public int checkout(Integer mid, Integer aid) {
        int result = 0;
        //往订单主表插入数据
        Map<String,Object> param = new HashMap<>();
        param.put("mid",mid);
        param.put("aid",aid);
        result += orderMapper.doInsert(param);
        //往订单明细表插入数据
        List<ProductInCart> productInCarts = cartMapper.queryByMid(mid);
        List<Map<String,Object>> params = new ArrayList<>();
        for (ProductInCart product : productInCarts) {
            Map<String,Object> map = new HashMap<>();
            map.put("orderId",param.get("orderId"));
            map.put("pid",product.getPid());
            map.put("quantity",product.getQuantity());
            map.put("price",product.getPrice());
            params.add(map);
            //修改商品的库存和销量
            result += productMapper.doUpdate(map);
        }
        result += orderMapper.doInsertDetail(params);
        //清空购物车
        result += cartMapper.remove(mid);
        return result;
    }
}
