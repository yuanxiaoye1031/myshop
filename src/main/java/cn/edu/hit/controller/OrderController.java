package cn.edu.hit.controller;

import cn.edu.hit.po.*;
import cn.edu.hit.service.OrderService;
import cn.edu.hit.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderService orderService;

    @Autowired
    ProductService productService;

    @Autowired
    HttpSession session;


    //购物车进入
    @RequestMapping("/toverify")
    public String toVerify(){
        return "verify";
    }

    //立即购买进入
    @RequestMapping("/toverify1")
    public String toVerify1(Integer pId, Model model){
        Product product=productService.getProductById(pId);

        model.addAttribute("product",product);

        return "verify1";
    }

    //购物车结算
    @RequestMapping("/doPay")
    public String doPay(Order order, Model model){
        //收件地址
        User user= (User) session.getAttribute("user");
        if(user==null){
            //未登录
            return "login";
        }
        Cart cart = (Cart) session.getAttribute("cart");
        //新增订单
        Integer oId = orderService.addOrder(order,user,cart);

        model.addAttribute("oId",oId);
        model.addAttribute("order",order);

        System.out.println("\ndoPay里的order内容打印:"+order+"\n");


        //清空购物车
        session.setAttribute("cart",null);
        return "pay";
    }

    //立即结算
    @RequestMapping("/doPay1")
    public String doPay1(Order order,Integer pId,Model model){
        //收件地址
        User user= (User) session.getAttribute("user");
        if(user==null){
            //未登录
            return "login";
        }
        //获得商品
        Product product=productService.getProductById(pId);

        //内部添加购物车
        CartItem cartItem=new CartItem();
        cartItem.setCount(1);
        cartItem.setProduct(product);
        Cart cart=new Cart();
        cart.setMap(cartItem);


        //新增订单
        Integer oId = orderService.addOrder(order,user,cart);


        model.addAttribute("oId",oId);
        model.addAttribute("order",order);

        //清空购物车
        session.setAttribute("cart",null);
        return "pay";
    }


    //我的订单页
    @RequestMapping("/toMyOrder")
    public String toMyOrder(ProductExt<OrderExt> productExt,Model model){
        User user= (User) session.getAttribute("user");

        //未登录
        if(user == null){
            return "login";
        }

        productExt.setPageSize(3);

        ProductExt<OrderExt> orderExtList=orderService.setallOrder(user.getuId(),productExt);

        //确认订单状态
        Map<Long,Integer> map = orderService.setState(user.getuId());

        model.addAttribute("map",map);
        model.addAttribute("orderExt",orderExtList);

        return "myOrder";
    }

    //订单单项去付款
    //更新状态
    @RequestMapping("/doPay2")
    public String doPay2(Order order,Model model) throws IOException {
        User user = (User) session.getAttribute("user");
        if(user == null){
            return "login";
        }

        Integer i = orderService.updateState(order);

        Order getOrder=orderService.getOrderByOId(order.getoId());



        model.addAttribute("oId",order.getoId());
        model.addAttribute("order",getOrder);
        model.addAttribute("total",getOrder.getTotal());
        model.addAttribute("orderTime",getOrder.getOrderTime());
        model.addAttribute("name",getOrder.getName());
        model.addAttribute("addr",getOrder.getAddr());
        model.addAttribute("phone",getOrder.getPhone());

        System.out.println("\n点击去付款后更新状态，doPay2里的order内容打印:"+getOrder+"\n");


        if(i == 1){
            return "pay";
        }else{
            return "PayError";
        }
    }

    //删除订单
    @RequestMapping("/updatastate")
    public String updatastate(Order order){
        Integer i = orderService.updateState(order);
        if(i == 1){
            return "redirect:http:/shop/order/toMyOrder";
        }else{
            return "PayError";
        }
    }

    //确认收货
    @RequestMapping("/toconfirmReceipt")
    public ModelAndView toconfirmReceipt(Order order){
        OrderExt orderExt = orderService.selAll(order.getoId());

        ModelAndView mv = new ModelAndView();

        mv.setViewName("confirmReceipt");
        mv.addObject("orderExt",orderExt);

        return mv;
    }

    @RequestMapping("/topaySuccess")
    public String topaySuccess(Integer oId,Model model){
        orderService.upid(oId);

        //查询商品信息
        OrderExt orderExt = orderService.selAll(oId);
        model.addAttribute("orderExt",orderExt);
        return "paySuccess";
    }

}
