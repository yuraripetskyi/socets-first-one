package com.example.socets.controllers;

import com.example.socets.models.IncomingMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String home(){
        return "home";
    }

    @MessageMapping("/mapping")
    public void converter(IncomingMessage message){
        System.out.println(message);

    }
}
