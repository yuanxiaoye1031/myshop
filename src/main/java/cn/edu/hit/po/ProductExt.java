package cn.edu.hit.po;

import java.util.Arrays;
import java.util.List;

public class ProductExt<T> {
    private Integer cId;
    private Integer csId;

    //接受的当前页
    private Integer pageNow=1;
    //接受的每页条数页
    private Integer pageSize=12;
    //返回的总条数
    private Integer pageCount;
    //返回的总页数
    private Integer rowCount;
    //结果
    private List<T> list;
    //接受搜索字段
    private String pName;

    public String getpName() {
        if(this.pName == ""){
            return null;
        }else {
            return pName;
        }

    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getCsId() {
        return csId;
    }

    public void setCsId(Integer csId) {
        this.csId = csId;
    }

    public Integer getPageNow() {
        return pageNow;
    }

    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public Integer getRowCount() {
        return rowCount;
    }

    public void setRowCount(Integer rowCount) {
        this.rowCount = rowCount;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }


    //分页规则

    //声明一个数组  装页码数组
    int[] arr;

    public int[] getArr() {
        //设置当前页            大于总页数则跳到最后一页
        int pagenow=Math.min(getPageNow(),getRowCount());
        //设置总页数
        int rowcount=getRowCount();

        //设置起始值
        int begin=1;
        //设置终止值
        int end=1;

        //给值
        if(pagenow<4){
            //设置终止值 如果总页数小于7，那终止值就是总页数
            end = Math.min(rowcount,7);
        }else {
            //  总页数10    当前页5      理想的页码： 2,3,4,5,6,7,8
            begin=Math.min(pagenow-3,rowcount-6);//5-3=2          10-6=4

            //编写终止值  总页数10    当前页10      理想的页码： 4,5,6,7,8,9,10
            end=Math.min(pagenow+3,rowcount);//10+3=13    10
        }

        //重新定义起始子   -5  担心你传进来一个负数
        begin=Math.max(1,begin);

        //定义数组长度
        arr=new int[end-begin+1];

        //计数器  下标
        int index=0;

        //i=具体的页码
        for (int i = begin; i <= end; i++) {
            arr[index]=i;
            index++;
        }

        return arr;
    }

    @Override
    public String toString() {
        return "ProductExt{" +
                "cId=" + cId +
                ", csId=" + csId +
                ", pageNow=" + pageNow +
                ", pageSize=" + pageSize +
                ", pageCount=" + pageCount +
                ", rowCount=" + rowCount +
                ", list=" + list +
                ", pName='" + pName + '\'' +
                ", arr=" + Arrays.toString(arr) +
                '}';
    }
}
