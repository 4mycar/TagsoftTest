package com.serdyukov.tagsofttest.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
public class HomeController {
    @GetMapping("/")
    void homeRedirect (HttpServletResponse response) throws IOException {
        response.sendRedirect("./swagger-ui.html");
    }
}
