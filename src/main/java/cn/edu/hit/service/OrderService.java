package cn.edu.hit.service;

import cn.edu.hit.po.*;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public interface OrderService {
    Integer addOrder(Order order, User user, Cart cart);

    ProductExt<OrderExt> setallOrder(Integer getuId, ProductExt<OrderExt> productExt);

    Map<Long, Integer> setState(Integer getuId);

    Integer updateState(Order order);

    OrderExt selAll(Integer getoId);

    void upid(Integer oId);

    Order getOrderByOId(Integer oId);
}
