package com.project.springbootecommerce.controller;

import com.project.springbootecommerce.model.Product;
import com.project.springbootecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
public class ProductController {

    @Autowired
    private ProductService service;

    @GetMapping(path = "/products")
    public ResponseEntity<List<Product>> getProducts() {
        return new ResponseEntity<List<Product>>(service.getProducts(), HttpStatus.OK);
    }
}