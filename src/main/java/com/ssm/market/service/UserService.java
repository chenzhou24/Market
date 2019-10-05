package com.ssm.market.service;

import com.ssm.market.entity.User;

public interface UserService {

    public User getUserByName(String name,String password);
}
