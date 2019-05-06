/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tirtho.beans.user;

/**
 *
 * @author DELL
 */
public class Customer extends User{
    private String gender;
    private Address address;

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Customer{" + "gender=" + gender + ", address=" + address + '}';
    }
    
    
    
}
