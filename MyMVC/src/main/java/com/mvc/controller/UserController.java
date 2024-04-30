package com.mvc.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mvc.model.User;
import com.mvc.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	
	
	  @Autowired
	    private UserService userService;

	    @GetMapping
	    public String listUsers(Model model) {
	        model.addAttribute("users", userService.getAllUsers());
	        return "user/list";
	    }

	    @GetMapping("/new")
	    public String createUserForm(Model model) {
	        model.addAttribute("user", new User());
	        return "user/create";
	    }

	    @PostMapping
	    public String saveUser(@ModelAttribute("user") User user) {
	        userService.saveUser(user);
	        return "redirect:/users";
	    }

	    @GetMapping("/{id}/edit")
	    public String editUserForm(@PathVariable Long id, Model model) {
	        model.addAttribute("user", userService.getUserById(id));
	        return "user/edit";
	    }

	    @PostMapping("/{id}")
	    public String updateUser(@PathVariable Long id, @ModelAttribute("user") User user) {
	        user.setId(id);
	        userService.saveUser(user);
	        return "redirect:/users";
	    }

	    @GetMapping("/{id}")
	    public String showUser(@PathVariable Long id, Model model) {
	        model.addAttribute("user", userService.getUserById(id));
	        return "user/show";
	    }

	    @GetMapping("/{id}/delete")
	    public String deleteUser(@PathVariable Long id) {
	        userService.deleteUser(id);
	        return "redirect:/users";
	    }
}
