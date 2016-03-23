package com.emusicstore.dao;

import com.emusicstore.model.Customer;

import java.util.List;

/**
 * Created by maro on 23/03/16.
 */
public interface CustomerDao {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();
}
