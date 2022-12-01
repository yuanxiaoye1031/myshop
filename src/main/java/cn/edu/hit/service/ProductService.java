package cn.edu.hit.service;

import cn.edu.hit.po.Product;
import org.springframework.stereotype.Service;

@Service
public interface ProductService {
    Product getProductById(Integer pId);
}
