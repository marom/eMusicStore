package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by maro on 16/03/16.
 */
public class ProductDao {

    private List<Product> productList;

    public List<Product> getProductList() {

        Product product1 = new Product();
        product1.setProductName("Guitar");
        product1.setProductCategory("Instrument");
        product1.setProductDescription("This is a fender strat guitar!");
        product1.setProductPrice(1200);
        product1.setProductCondition("new");
        product1.setProductStatus("Active");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("Fender");

        Product product2 = new Product();
        product2.setProductName("Nice Record");
        product2.setProductCategory("Record");
        product2.setProductDescription("This is a mix of disco polo hits!");
        product2.setProductPrice(26);
        product2.setProductCondition("new");
        product2.setProductStatus("Active");
        product2.setUnitInStock(7);
        product2.setProductManufacturer("Polo Records");

        Product product3 = new Product();
        product3.setProductName("Speaker 2D");
        product3.setProductCategory("Accessory");
        product3.setProductDescription("This is a polk shelf speaker!");
        product3.setProductPrice(433);
        product3.setProductCondition("new");
        product3.setProductStatus("Active");
        product3.setUnitInStock(13);
        product3.setProductManufacturer("Polk");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);


        return productList;
    }
}
