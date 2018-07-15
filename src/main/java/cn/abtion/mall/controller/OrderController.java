package cn.abtion.mall.controller;

import cn.abtion.mall.po.Member;
import cn.abtion.mall.po.Nav;
import cn.abtion.mall.po.OrderItem;
import cn.abtion.mall.service.NavService;
import cn.abtion.mall.service.OrderService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author abtion
 * @since 2018/7/15 09:08
 * email abtion@outlook.com
 */

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private NavService navService;

    @RequestMapping("/order")
    public String order(Model model, HttpSession session){
        Member member = (Member) session.getAttribute("member");
        Integer mid = member.getMid();
        List<Nav> nav = navService.getNav();
        List<OrderItem> orderItems = orderService.queryByMid(mid);
        System.out.println(JSON.toJSONString(orderItems));
        model.addAttribute("nav",nav);
        model.addAttribute("orderItems",orderItems);
        return "order";
    }

    @RequestMapping("/checkout")
    public String checkout(HttpSession session, Integer aid){
        Member member = (Member) session.getAttribute("member");
        Integer mid = member.getMid();
        int checkout = orderService.checkout(mid, aid);
        System.out.println(checkout);
        return "redirect:/order";
    }

}
