package com.victorinterian.blog.controllers;

import org.victorinterian.blog.forms.users.StoreUserForm;
import com.victorinterian.blog.models.User;
import com.victorinterian.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/auth")
public class AuthController {

    @Autowired
    UserService service;

    @GetMapping(value = "/login")
    public String login(
        Model model,
        String error,
        String logout
    ) {
        if (error != null) {
            model.addAttribute("error", "Your username and password is invalid.");
        }

        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully");
        }

        return "auth/login";
    }

    @GetMapping(value = "/register")
    public String showRegister() {
        return "auth/register";
    }

    @PostMapping(value = "/register")
    public String register(
        @Valid StoreUserForm userForm,
        BindingResult bindingResult,
        RedirectAttributes attributes
    ) {
        if (bindingResult.hasErrors()){
            attributes.addFlashAttribute("org.springframework.validation.BindingResult.registerForm", bindingResult);
            return "redirect:/auth/register";
        }

        User user = new User(
            userForm.getFirstName(),
            userForm.getLastName(),
            userForm.getUsername(),
            userForm.getPassword()

        );
        return null;

    }

}