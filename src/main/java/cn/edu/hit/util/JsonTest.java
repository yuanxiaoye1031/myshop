package cn.edu.hit.util;

import com.alibaba.fastjson.JSONObject;

public class JsonTest {
    public static void main(String[] args) {
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("name","hit");
        jsonObject.put("city","哈尔滨");
        System.out.println(jsonObject.toJSONString());
    }
}
