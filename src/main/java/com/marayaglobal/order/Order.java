/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.marayaglobal.order;

import com.marayaglobal.beans.user.Address;
import java.util.List;

/**
 *
 * @author DELL
 */
public class Order {
    private int id;
    private List<Card> cards;
    private int authorId;
    private int shippingPhoneNumber;
    private Address shippingaddress;
    private String status;
    
}
