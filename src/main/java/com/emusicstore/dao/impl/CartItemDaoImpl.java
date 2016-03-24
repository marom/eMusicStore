package com.emusicstore.dao.impl;

import com.emusicstore.dao.CartItemDao;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by maro on 24/03/16.
 */
@Repository
public class CartItemDaoImpl implements CartItemDao {

    @Autowired
    private SessionFactory sessionFactory;


    public void addCartItem(CartItem cartItem) {

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    public void removeCartItem(CartItem cartItem) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    public void removeAllCartItems(Cart cart) {

        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem cartItem : cartItems) {
            removeCartItem(cartItem);
        }
    }
}
