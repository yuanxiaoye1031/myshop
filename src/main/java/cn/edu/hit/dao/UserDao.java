package cn.edu.hit.dao;

import cn.edu.hit.po.User;
import org.apache.ibatis.annotations.Select;

public interface UserDao {
    @Select("select count(0) from `user` where username=#{name}")
    int changeName(String name);

    void addUser(User user);

    @Select("select user.u_id as uId,user.* from `user` where username=#{username}")
    User login(User user);

    User updateUser(User user);
}
