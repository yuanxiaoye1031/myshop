package cn.edu.hit.controller;

import cn.edu.hit.po.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/userPay")
public class userPayController {

    @RequestMapping("/getOI")
    @ResponseBody
    public String getOI(Order order){
        System.out.println("\norder内容为:"+order);
        return "ok";
    }

    @RequestMapping("/genDS")
    @ResponseBody
    public String genDS(){
        //首先利用已知的PI和OI生成双重签名DS
        return null;
    }
}
