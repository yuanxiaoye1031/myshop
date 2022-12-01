package cn.edu.hit.util;

import cn.edu.hit.po.CategoryExt;
import cn.edu.hit.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;
import java.util.List;

@Component
public class GetCategory {
    @Autowired
    IndexService indexService;

    @Autowired
    ServletContext servletContext;

    @PostConstruct
    public void get(){
        List<CategoryExt> category=indexService.getCategory();
        servletContext.setAttribute("category",category);
    }
}
