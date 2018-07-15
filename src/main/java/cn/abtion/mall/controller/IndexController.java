package cn.abtion.mall.controller;

import cn.abtion.mall.po.Nav;
import cn.abtion.mall.po.ProductPage;
import cn.abtion.mall.service.NavService;
import cn.abtion.mall.service.ProductService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 控制层 依赖业务层
 */
@Controller
@RequestMapping("")
public class IndexController {

    @Autowired
    private NavService navService;

    @Autowired
    private ProductService productService;

    @RequestMapping("")
    public String index(Model model){

        List<Nav> nav = navService.getNav();
        model.addAttribute("nav",nav);
        ProductPage productPage = productService.query(null,null,null,1);
        model.addAttribute("list",productPage);
        return "index";
    }

    @RequestMapping("/home")
    public String hello(Model model){
        return index(model);
    }

    @RequestMapping("/single")
    public String single(Model model){
        List<Nav> nav = navService.getNav();
        model.addAttribute("nav",nav);
        return "single";
    }
}
