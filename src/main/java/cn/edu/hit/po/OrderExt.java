package cn.edu.hit.po;

import java.util.List;

public class OrderExt extends Order{
    private List<OrderItemExt> list;

    public List<OrderItemExt> getList() {
        return list;
    }

    public void setList(List<OrderItemExt> list) {
        this.list = list;
    }
}
