package edu.webtools.part8.controller;

import edu.webtools.part8.pojo.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/part8")
public class part8 {
    @Autowired
    private Message message;


    @GetMapping("/home")
    public ModelAndView showMessage(Model theModel){
        theModel.addAttribute("part8",message);
        return new ModelAndView("part8/home");
    }
}
