package cn.edu.hit.controller;

import cn.edu.hit.po.CategoryExt;
import cn.edu.hit.po.Product;
import cn.edu.hit.service.IndexService;
import cn.edu.hit.util.RSA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletContext;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/index")
public class IndexController {

    @Autowired
    IndexService indexService;

    @Autowired
    ServletContext servletContext;

    @RequestMapping("/toindex")
    public String toindex(Model model) throws Exception {
        //1级分类 + 2级分类 在域对象中

      List<CategoryExt> category = (List<CategoryExt>) servletContext.getAttribute("category");

//        List<CategoryExt> category = indexService.getCategory();
////        发给前台
////        model.addAttribute("category",category);
//        servletContext.setAttribute("category",category);
//        System.out.println("控制器中的category");
//        category.forEach(System.out::println);

        //根据二级分类id --> 产品详情

        Map<Integer,List<Product>> product = indexService.getProduct(category);
        model.addAttribute("product",product);
        String[] keyPairArr = RSA.genKeyPair();
        model.addAttribute("publickey",keyPairArr[0]);
        model.addAttribute("secretkey",keyPairArr[1]);
        return "index";
    }
}
