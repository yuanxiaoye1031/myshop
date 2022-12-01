package cn.edu.hit.controller;

import cn.edu.hit.po.Cart;
import cn.edu.hit.po.CartItem;
import cn.edu.hit.po.Product;
import cn.edu.hit.po.User;
import cn.edu.hit.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    HttpSession session;

    @Autowired
    ProductService productService;

    @RequestMapping("/tocart")
    @ResponseBody
    public String cart(Integer pId,Integer count){
        //检查是否登录
        User user = (User) session.getAttribute("user");
        if(user == null) {
            return "no";
        }

        Product product = productService.getProductById(pId);

        //一个购物车几个商品？
        //每个商品有几个？
        //Cart CartItem

        CartItem cartItem = new CartItem();
        cartItem.setProduct(product);
        cartItem.setCount(count);

        //以前的购物车商品呢？ session
        Cart cart = (Cart) session.getAttribute("cart");

        if(cart == null){
            Cart c = new Cart();
            c.setMap(cartItem);
            session.setAttribute("cart",c);
        }else{
            cart.setMap(cartItem);
        }

        return "ok";
    }

    @RequestMapping("/docart")
    public String docart(){
        return "cart";
    }

    @RequestMapping("/changeCount")
    @ResponseBody
    public String changeCount(Integer pId,Integer count){
        Cart cart = (Cart) session.getAttribute("cart");
        cart.changeCount(pId,count);
        return cart.getTotal().toString();
    }

    @RequestMapping("/delCartItem")
    @ResponseBody
    public String delCartItem(Integer pId){
        Cart cart = (Cart) session.getAttribute("cart");
        cart.delCartItem(pId);
        return cart.getTotal().toString();
    }

    @RequestMapping("/clear")
    @ResponseBody
    public String clear(){
        Cart cart = (Cart) session.getAttribute("cart");
        cart.rvo();
        return null;
    }
}
