package cn.edu.hit.po;

public class CartItem {
    private Product product;

    private Integer count = 0;

    private double subTotal =0.0;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getSubTotal() {
        Double s=count*product.getShopPrice();
        return s;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }
}
