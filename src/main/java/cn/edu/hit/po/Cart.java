package cn.edu.hit.po;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class Cart {
    //k:pId v:购物项
    private Map<Integer,CartItem> map = new LinkedHashMap<>();

    private Double total = 0.0;

    public Collection<CartItem> getMap(){
        return map.values();
    }

    public void setMap(CartItem cartItem){
        //判断原来有无
        //有，+1；无，新增
        Integer pId = cartItem.getProduct().getpId();

        if(map.containsKey(pId)){
            CartItem item = map.get(pId);
            item.setCount(item.getCount()+cartItem.getCount());
        }else{
            map.put(pId,cartItem);
        }

        total = total + cartItem.getSubTotal();
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public void changeCount(Integer pId, Integer count) {
        CartItem cartItem = map.get(pId);
        //删掉小计
        total = total - cartItem.getSubTotal();
        cartItem.setCount(count);
        total = total + cartItem.getSubTotal();
    }

    public void delCartItem(Integer pId){
        CartItem item = map.remove(pId);
        total = total - item.getSubTotal();
    }

    public void rvo(){
        map.clear();
        total = 0.0;
    }
}
