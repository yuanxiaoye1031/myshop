package cn.edu.hit.controller;

import cn.edu.hit.po.Product;
import cn.edu.hit.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService productService;

    @RequestMapping("/toproduct")
    public String toproduct(Integer pId, Model model){
        Product product = productService.getProductById(pId);
//        System.out.printf("product内容:"+product.toString());
        model.addAttribute("product",product);
        return "product";
    }
}
