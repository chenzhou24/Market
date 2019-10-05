package com.ssm.market.service.impl;

import com.ssm.market.dao.UserDao;
import com.ssm.market.entity.User;
import com.ssm.market.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User getUserByName(String name, String password) {
        User user = null;
        if (name == null || !password.equals(user.getPassword())) {
            try {
                throw new Exception("用户名或密码错误");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return user;
    }
}
