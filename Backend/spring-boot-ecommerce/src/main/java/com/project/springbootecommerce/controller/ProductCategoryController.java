package com.project.springbootecommerce.controller;

import com.project.springbootecommerce.model.ProductCategory;
import com.project.springbootecommerce.service.ProductCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
public class ProductCategoryController {

    @Autowired
    private ProductCategoryService service;

    @GetMapping(path = "/productCategories")
    public ResponseEntity<List<ProductCategory>> getProductCategories(){
        return new ResponseEntity<>(service.getProductCategories(), HttpStatus.OK);
    }
}