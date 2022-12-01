package cn.edu.hit.service;

import cn.edu.hit.po.CategoryExt;
import cn.edu.hit.po.Product;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface IndexService {
    List<CategoryExt> getCategory();

    Map<Integer, List<Product>> getProduct(List<CategoryExt> category);
}
