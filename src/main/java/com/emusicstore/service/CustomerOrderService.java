package com.emusicstore.service;

import com.emusicstore.model.CustomerOrder;

/**
 * Created by maro on 24/03/16.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
