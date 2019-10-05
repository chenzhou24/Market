package com.ssm.market.controller;

import com.ssm.market.entity.User;
import com.ssm.market.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/goLogin")
    public String goLogin() {
        return "login";
    }

    @RequestMapping("/login")
    public String login(String name, String password, HttpSession session) {

        User user = userService.getUserByName(name, password);
        session.setAttribute("USER_SESSION", user);
        return "index";
    }
}
