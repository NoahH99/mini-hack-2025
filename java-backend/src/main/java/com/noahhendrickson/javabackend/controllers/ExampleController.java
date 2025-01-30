package com.noahhendrickson.javabackend.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/example")
public class ExampleController {

    @GetMapping
    public ResponseEntity<String> getExample() {
        return new ResponseEntity<>("This is an example", HttpStatus.OK);
    }
}
