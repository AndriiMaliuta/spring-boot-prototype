package com.anma.vultr.vultrdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SImpleRestController {

    @GetMapping("/")
    public String getHome() {
        return "Hello from Spring!!!";
    }
}
