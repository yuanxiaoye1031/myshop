package cn.edu.hit.service.impl;

import cn.edu.hit.dao.ProductDao;
import cn.edu.hit.po.Product;
import cn.edu.hit.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao productDao;

    @Override
    public Product getProductById(Integer pId) {
        return productDao.getProductById(pId);
    }
}
