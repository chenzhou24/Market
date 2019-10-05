package com.ssm.market.dao;

import com.ssm.market.entity.User;

public interface UserDao {

    public User getUserByName(String name);
}
