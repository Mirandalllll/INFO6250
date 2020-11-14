package edu.webtools.part3.controller;

import edu.webtools.part3.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

@Controller
@RequestMapping("/part3")
public class UserController {
//    @RequestMapping("/showForm")
//    public String showForm(Model theModel) {
//        theModel.addAttribute("User", new User());
//        return "part3/user-form";
//    }
    @RequestMapping("/showForm")
    public String showForm(Model theModel){
        theModel.addAttribute("User",new User());
        return "part3/user-form";
    }

    @PostMapping(value = "/processForm")
    public View downloadPdf(ModelMap map, User user) {
        map.addAttribute("User", user);
        return new PdfView();
    }
}