package com.kochen.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServlet;

@RestController
public class GenericController extends HttpServlet {

    @RequestMapping(value = "/weRobot", method = RequestMethod.GET)
    public int checkOrder(@RequestParam String time, @RequestParam String test) {
        System.out.println(time);
        System.out.println(test);
        return 1;
    }


}
