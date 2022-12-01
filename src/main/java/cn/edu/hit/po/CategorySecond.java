package cn.edu.hit.po;

public class CategorySecond {
    private Integer csId;
    private String csName;
    private Integer cId;



    @Override
    public String toString() {
        return "CategorySecond{" +
                "csId=" + csId +
                ", csName='" + csName + '\'' +
                ", cId=" + cId +
                '}';
    }

    public Integer getCsId() {
        return csId;
    }

    public void setCsId(Integer csId) {
        this.csId = csId;
    }

    public String getCsName() {
        return csName;
    }

    public void setCsName(String csName) {
        this.csName = csName;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }
}
