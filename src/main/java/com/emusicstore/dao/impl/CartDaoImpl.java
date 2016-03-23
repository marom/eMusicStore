package com.emusicstore.dao.impl;

import com.emusicstore.dao.CartDao;
import com.emusicstore.model.Cart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by maro on 23/03/16.
 */

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Cart getCartById(int cartId) {

        Session session = sessionFactory.getCurrentSession();

        return (Cart) session.get(Cart.class, cartId);
    }

    public void updateCart(Cart cart) {

        int cartId = cart.getCartId();

    }
}
