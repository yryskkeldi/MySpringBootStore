package com.example.msbp.services;

import com.example.msbp.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(ID++,"PlayStation 5", "Simple description", 65000, "Bishkek", "Andrew"));
        products.add(new Product(ID++,"iPhone 8", "Simple description", 55000, "Moscow", "Tom"));
    }

    public List<Product> listProducts(){
        return products;
    }

    public void saveProduct(Product product){
        product.setId(ID++);
        products.add(product);
    }

    public void deleteProducts(Long id){
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) {
                return product;
            }
        }
        return null;
    }
}
