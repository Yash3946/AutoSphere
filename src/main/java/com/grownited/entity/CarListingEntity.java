package com.grownited.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.*;

@Entity
@Table(name="car_listing")
public class CarListingEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="listing_id")
    private Integer listingId;

    @Column(name="city")
    private String city;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name="created_at")
    private Date createdAt;

    @Column(name="kms_driven")
    private Integer kmsDriven;

    @Column(name="ownership")
    private String ownership;

    @Column(name="price")
    private Integer price;

    @Column(name="status")
    private String status;

    @Column(name="user_id")
    private Integer userId;

    @Column(name="year")
    private Integer year;

    @Column(name="brand_name")
    private String brandName;

    @Column(name="model_name")
    private String modelName;

    @Column(name="variant_name")
    private String variantName;

    @Column(name="brand_id")
    private Integer brandId;

    @Column(name="model_id")
    private Integer modelId;

    @Column(name="variant_id")
    private Integer variantId;

    @Column(name="image_url")
    private String imageUrl;
    
    @Column(name = "body_type")
    private String bodyType;

    // ======================
    // GETTERS & SETTERS
    // ======================

    public String getBodyType() {
		return bodyType;
	}

	public void setBodyType(String bodyType) {
		this.bodyType = bodyType;
	}

	public Integer getListingId() {
        return listingId;
    }

    public void setListingId(Integer listingId) {
        this.listingId = listingId;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Integer getKmsDriven() {
        return kmsDriven;
    }

    public void setKmsDriven(Integer kmsDriven) {
        this.kmsDriven = kmsDriven;
    }

    public String getOwnership() {
        return ownership;
    }

    public void setOwnership(String ownership) {
        this.ownership = ownership;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getVariantName() {
        return variantName;
    }

    public void setVariantName(String variantName) {
        this.variantName = variantName;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Integer getModelId() {
        return modelId;
    }

    public void setModelId(Integer modelId) {
        this.modelId = modelId;
    }

    public Integer getVariantId() {
        return variantId;
    }

    public void setVariantId(Integer variantId) {
        this.variantId = variantId;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}

