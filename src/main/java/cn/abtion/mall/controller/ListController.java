package cn.abtion.mall.controller;

import cn.abtion.mall.po.Nav;
import cn.abtion.mall.po.Product;
import cn.abtion.mall.po.ProductPage;
import cn.abtion.mall.service.NavService;
import cn.abtion.mall.service.ProductService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ListController {
    @Autowired
    private ProductService productService;
    @Autowired
    private NavService navService;

    @RequestMapping("/products")
    public String list(Model model, Integer cid, Integer bid, String keyWord, @RequestParam(required = false,defaultValue = "1") Integer page){
        List<Nav> nav = navService.getNav();
        ProductPage productPage = productService.query(cid,bid,keyWord,page);
        System.out.println(JSON.toJSONString(productPage));
        model.addAttribute("list",productPage);
        model.addAttribute("nav",nav);
        return "product";
    }
}
