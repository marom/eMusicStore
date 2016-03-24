package com.emusicstore.dao;

import com.emusicstore.model.Cart;

/**
 * Created by maro on 19/03/16.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
