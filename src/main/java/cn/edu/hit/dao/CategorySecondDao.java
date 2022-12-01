package cn.edu.hit.dao;

import cn.edu.hit.po.Product;
import cn.edu.hit.po.ProductExt;

import java.util.List;

public interface CategorySecondDao {
    List<Product> getCategorySecond(ProductExt<Product> productExt);

    List<Product> getHot(ProductExt<Product> productExt);
}
