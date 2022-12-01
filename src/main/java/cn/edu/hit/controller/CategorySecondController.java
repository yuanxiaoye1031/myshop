package cn.edu.hit.controller;

import cn.edu.hit.po.Product;
import cn.edu.hit.po.ProductExt;
import cn.edu.hit.service.CategorySecondService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Category")
public class CategorySecondController {

    @Autowired
    CategorySecondService service;

    @RequestMapping("/toCategorySecond")
    public String toCategorySecond(ProductExt<Product> productExt, Model model){
        //携带数据返回页面

        //分类商品
        ProductExt<Product> categorySecond = service.getCategorySecond(productExt);
        model.addAttribute("categorySecond",categorySecond);

       //热门商品
        List<Product> productList = service.getHot(productExt);
        model.addAttribute("productList",productList);
//        System.out.printf("productlist内容为");
//        productList.forEach(System.out::println);
        return "categorySecond";
    }
}
