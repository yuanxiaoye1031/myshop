package cn.edu.hit.service;

import cn.edu.hit.po.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    int changeName(String name);

    void addUser(User user);

    User login(User user);

    void updateUser(User user);
}
