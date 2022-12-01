package cn.edu.hit.controller;

import cn.dsna.util.images.ValidateCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/val")
public class CodeController {

    @RequestMapping("/Code")
    public void getCode(HttpServletResponse response, HttpSession httpSession){
        //response 用于服务器给前端发信息，httpSession用于临时保存验证码
        try {
        //生成验证码图片   宽、高、字母个数、干扰线
        ValidateCode validateCode=new ValidateCode(165,66,4,100);

        //记住验证码答案
        String code=validateCode.getCode();
        httpSession.setAttribute("code",code);  //将答案存在session中

        //将答案返回给前端页面

            validateCode.write(response.getOutputStream());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    @RequestMapping("/checkValidate")
    public String CheckValidate(String code,HttpSession httpSession){
        String correctCode =(String)httpSession.getAttribute("code");
        if(correctCode.equalsIgnoreCase(code)){
            return "ok";
        }else {
            return "no";
        }
    }
}
