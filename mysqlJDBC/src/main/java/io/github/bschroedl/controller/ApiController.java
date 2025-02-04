package io.github.bschroedl.controller;

import io.github.bschroedl.service.MySQLService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    @Autowired
    private MySQLService mySQLService;

    @GetMapping("/data")
    public String getData() {
        return mySQLService.getDataFromDatabase();
    }
}
