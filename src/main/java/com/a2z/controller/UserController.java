package com.a2z.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.a2z.domain.User;
import com.a2z.service.SecurityService;
import com.a2z.service.UserService;
import com.a2z.validation.UserValidator;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    /*@Autowired
    private UserValidator userValidator;*/

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
    	
        model.addAttribute("userForm", new User());

        return "registration";
    }
    
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String regLogin(Model model) {
        model.addAttribute("userForm", new User());

        return "signup";
    }
    

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User user, Model model) {
        userService.save(user);
        securityService.autologin(user.getUsername(), user.getPasswordConfirm());
        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "welcome";
    }
}
