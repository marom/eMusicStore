package com.emusicstore.service;

import com.emusicstore.model.Cart;

/**
 * Created by maro on 23/03/16.
 */

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
