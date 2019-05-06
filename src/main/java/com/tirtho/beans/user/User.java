/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tirtho.beans.user;

import java.sql.Timestamp;

/**
 *
 * @author DELL
 */
public class User {
    private int id;
    private String name;
    private String email;
    private String phoneNumber;
    private String password;
    private boolean isActive;
    private Timestamp accCreateTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public Timestamp getAccCreateTime() {
        return accCreateTime;
    }

    public void setAccCreateTime(Timestamp accCreateTime) {
        this.accCreateTime = accCreateTime;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", email=" + email + ", phoneNumber=" + phoneNumber + ", password=" + password + ", isActive=" + isActive + ", accCreateTime=" + accCreateTime + '}';
    }



}
