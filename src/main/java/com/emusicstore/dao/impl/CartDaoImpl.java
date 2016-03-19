package com.emusicstore.dao.impl;

import com.emusicstore.dao.CartDao;
import com.emusicstore.model.Cart;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by maro on 19/03/16.
 */
public class CartDaoImpl implements CartDao {


    private Map<String, Cart> listOfCarts;

    public CartDaoImpl() {
        listOfCarts = new HashMap<String, Cart>();
    }


    public Cart create(Cart cart) {

        if(listOfCarts.containsKey(cart.getCartId())) {
            throw new IllegalArgumentException(String.format("Cannot create a cart. A cart with given id(%) already exists.", cart.getCartId()));
        }

        listOfCarts.put(cart.getCartId(), cart);

        return cart;
    }


    public Cart read(String cartId) {
        return listOfCarts.get(cartId);
    }

    public void update(String cartId, Cart cart) {

        if (!listOfCarts.containsKey(cartId)) {
            throw new IllegalArgumentException(String.format("Cannot update a cart. A cart with given id(%) does not exists.", cart.getCartId()));
        }

        listOfCarts.put(cartId, cart);
    }

    public void delete(String cartId) {

        if (!listOfCarts.containsKey(cartId)) {
            throw new IllegalArgumentException(String.format("Cannot delete a cart. A cart with given id(%) does not exists.", cartId));
        }

        listOfCarts.remove(cartId);
    }
}
