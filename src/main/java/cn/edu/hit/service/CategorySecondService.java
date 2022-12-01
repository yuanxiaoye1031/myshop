package cn.edu.hit.service;

import cn.edu.hit.po.Product;
import cn.edu.hit.po.ProductExt;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategorySecondService {
    ProductExt<Product> getCategorySecond(ProductExt<Product> productExt);

    List<Product> getHot(ProductExt<Product> productExt);
}
