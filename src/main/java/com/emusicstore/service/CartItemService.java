package com.emusicstore.service;

import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;

/**
 * Created by maro on 24/03/16.
 */
public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);
}
