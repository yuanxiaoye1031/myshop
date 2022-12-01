package cn.edu.hit.service.impl;

import cn.edu.hit.dao.UserDao;
import cn.edu.hit.po.User;
import cn.edu.hit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public int changeName(String name) {
        return userDao.changeName(name);
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public User login(User user) {
       return userDao.login(user);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }
}
