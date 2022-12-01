package cn.edu.hit.service.impl;

import cn.edu.hit.dao.CategorySecondDao;
import cn.edu.hit.po.Product;
import cn.edu.hit.po.ProductExt;
import cn.edu.hit.service.CategorySecondService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategorySecondServiceImpl implements CategorySecondService {

    @Autowired
    CategorySecondDao categorySecondDao;


    @Override
    public ProductExt<Product> getCategorySecond(ProductExt<Product> productExt) {
        //PageHelper
        //startPage 参数：当前页，每页条数
        PageHelper.startPage(productExt.getPageNow(),productExt.getPageSize());

        //结果集 查询没问题
        List<Product> categorySecond = categorySecondDao.getCategorySecond(productExt);

        //分配数据给分页工具
        PageInfo<Product> page = new PageInfo<Product>(categorySecond);
        //总条数
        long total = page.getTotal();
        //总页数
        int pages = page.getPages();
        //封装结果集
        productExt.setList(categorySecond);
        productExt.setPageCount((int) total);
        productExt.setRowCount(pages);
        return productExt;

    }

    @Override
    public List<Product> getHot(ProductExt<Product> productExt) {
        return categorySecondDao.getHot(productExt);
    }
}
