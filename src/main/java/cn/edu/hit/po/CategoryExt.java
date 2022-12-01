package cn.edu.hit.po;

import java.util.ArrayList;
import java.util.List;

public class CategoryExt extends Category{
    //将一二级类目合并

    //获得一级分类的二级分类
    List<CategorySecond> list = new ArrayList<>();

    public List<CategorySecond> getList(){
        return list;
    }

    public void setList(List<CategorySecond> list) {
        this.list = list;
    }
}
