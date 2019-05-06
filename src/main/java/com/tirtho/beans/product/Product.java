/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tirtho.beans.product;

import java.sql.Timestamp;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DELL
 */
@XmlRootElement
public class Product {
    private int id;
    private int authorId;
    private String title;
    private String category;
    private String subCategory;
    private String brandName;
    private String unitSize;
    private float unitPrice;
    private float discount;
    private int view;
    private float menotiseAmmount;
    private boolean isAvailable;
    private boolean isPublished;
    private String description;
    private Timestamp add_time;
    private List<String> images;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(String subCategory) {
        this.subCategory = subCategory;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getUnitSize() {
        return unitSize;
    }

    public void setUnitSize(String unitSize) {
        this.unitSize = unitSize;
    }

    public float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(float unitPrice) {
        this.unitPrice = unitPrice;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public float getMenotiseAmmount() {
        return menotiseAmmount;
    }

    public void setMenotiseAmmount(float menotiseAmmount) {
        this.menotiseAmmount = menotiseAmmount;
    }

    public boolean isIsAvailable() {
        return isAvailable;
    }

    public void setIsAvailable(boolean isAvailable) {
        this.isAvailable = isAvailable;
    }

    public boolean isIsPublished() {
        return isPublished;
    }

    public void setIsPublished(boolean isPublished) {
        this.isPublished = isPublished;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getAdd_time() {
        return add_time;
    }

    public void setAdd_time(Timestamp add_time) {
        this.add_time = add_time;
    }

    public List<String> getImages() {
        return images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", authorId=" + authorId + ", title=" + title + ", category=" + category + ", subCategory=" + subCategory + ", brandName=" + brandName + ", unitSize=" + unitSize + ", unitPrice=" + unitPrice + ", discount=" + discount + ", view=" + view + ", menotiseAmmount=" + menotiseAmmount + ", isAvailable=" + isAvailable + ", isPublished=" + isPublished + ", description=" + description + ", add_time=" + add_time + ", images=" + images + '}';
    }
    
    
    
    
    
}
