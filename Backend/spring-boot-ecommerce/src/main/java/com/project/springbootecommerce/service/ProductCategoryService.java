package com.project.springbootecommerce.service;

import com.project.springbootecommerce.model.ProductCategory;
import com.project.springbootecommerce.repository.ProductCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductCategoryService {
    @Autowired
    private ProductCategoryRepository repository;

    public List<ProductCategory> getProductCategories(){
        return repository.findAll();
    }
}
