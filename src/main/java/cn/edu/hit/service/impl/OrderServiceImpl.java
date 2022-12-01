package cn.edu.hit.service.impl;

import cn.edu.hit.dao.OrderDao;
import cn.edu.hit.po.*;
import cn.edu.hit.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderDao orderDao;

    @Override
    public Integer addOrder(Order order, User user, Cart cart) {
        //需要加入事务回滚

        order.setTotal(cart.getTotal());
        order.setOrderTime(new Date());
        order.setuId(user.getuId());
        order.setState(0);  //支付状态，初始默认未支付

        orderDao.addOrder(order);

        for(CartItem cartItem:cart.getMap()){
            OrderItem orderItem = new OrderItem();
            orderItem.setCount((cartItem.getCount()));
            orderItem.setSubTotal(cartItem.getSubTotal());
            orderItem.setpId(cartItem.getProduct().getpId());
            orderItem.setoId(order.getoId());

            orderDao.addOrderItem(orderItem);
        }

        return order.getoId();
    }

    @Override
    public ProductExt<OrderExt> setallOrder(Integer getuId, ProductExt<OrderExt> productExt) {
        PageHelper.startPage(productExt.getPageNow(),productExt.getPageSize());

        List<OrderExt> orderExtList=orderDao.setallOrder(getuId);

        PageInfo<OrderExt> pageInfo = new PageInfo<>(orderExtList);

        long total = pageInfo.getTotal();
        int pages = pageInfo.getPages();

        productExt.setList(orderExtList);
        productExt.setPageCount((int) total);
        productExt.setRowCount(pages);
        return productExt;
    }

    @Override
    public Map<Long, Integer> setState(Integer getuId) {
        Map<Long,Integer> map = new HashMap<>();

        List<Map<Long,Integer>> maps = orderDao.setState(getuId);

        for(Map<Long,Integer> stringIntegerMap : maps){
            Number integer = stringIntegerMap.get("count(0)");

            map.put(stringIntegerMap.get("state").longValue(),integer.intValue());
        }
        return map;
    }

    @Override
    public Integer updateState(Order order) {
        return orderDao.updateState(order);
    }

    @Override
    public OrderExt selAll(Integer oId) {
        return orderDao.selAll(oId);
    }

    @Override
    public void upid(Integer oId) {
        orderDao.upid(oId);
    }

    @Override
    public Order getOrderByOId(Integer oId) {
        return orderDao.getOrderByOId(oId);
    }
}
