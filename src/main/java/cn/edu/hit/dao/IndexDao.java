package cn.edu.hit.dao;

import cn.edu.hit.po.CategoryExt;
import cn.edu.hit.po.Product;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IndexDao {
    List<CategoryExt> getCategory();

    @Select("SELECT p_id as pId , p_name as pName , market_price as marketPrice , shop_price as shopPrice , image , p_desc as pDesc , is_hot as isHot , p_date as pDate , cs_id as csId FROM product where cs_id=#{csId}")
    List<Product> getProduct(Integer csId);
}
