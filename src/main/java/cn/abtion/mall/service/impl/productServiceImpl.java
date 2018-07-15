package cn.abtion.mall.service.impl;

import cn.abtion.mall.dao.ProductMapper;
import cn.abtion.mall.po.Product;
import cn.abtion.mall.po.ProductPage;
import cn.abtion.mall.service.ProductService;
import com.github.pagehelper.ISelect;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class productServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;
    @Override
    public ProductPage query(Integer cid, Integer bid, String keyWord, Integer page) {
        Map<String,Object> params = new HashMap<>();
        ProductPage productPage = new ProductPage();
        if (cid!=null){
            params.put("cid",cid);
            productPage.setCid(cid);
        }
        if (bid!=null){
            params.put("bid",bid);
            productPage.setBid(bid);
        }
        if (keyWord!=null){
            params.put("keyWord",keyWord);
            productPage.setKeyWord(keyWord);
        }

        long count = PageHelper.count(new ISelect() {
            @Override
            public void doSelect() {
                productMapper.query(params);
            }
        });
        double pageCount =Math.ceil(((double)count/9));
        PageHelper.startPage(page,9);
        List<Product> products = productMapper.query(params);

        productPage.setCurrentPage(page);
        productPage.setPageCount((int) pageCount);
        productPage.setProducts(products);
        return productPage;
    }

    @Override
    public Product queryByPid(Integer pid) {
        System.out.println("pid = [" + pid + "]");
        return productMapper.queryByPid(pid);
    }
}
