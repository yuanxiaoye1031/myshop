package cn.edu.hit.dao;

import cn.edu.hit.po.Order;
import cn.edu.hit.po.OrderExt;
import cn.edu.hit.po.OrderItem;

import java.util.List;
import java.util.Map;

public interface OrderDao {

    void addOrder(Order order);

    void addOrderItem(OrderItem orderItem);

    List<OrderExt> setallOrder(Integer getuId);

    List<Map<Long, Integer>> setState(Integer getuId);

    Integer updateState(Order order);

    OrderExt selAll(Integer oId);

    void upid(Integer oId);

    Order getOrderByOId(Integer oId);
}
