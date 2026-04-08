package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class CarTransactionEntity {

	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Integer transactionId;

	    @ManyToOne
	    @JoinColumn(name = "listing_id")
	    private CarListingEntity listing;

	    @ManyToOne
	    @JoinColumn(name = "buyer_id")
	    private UserEntity buyer;

	    @ManyToOne
	    @JoinColumn(name = "seller_id")
	    private UserEntity seller;

	    private Double finalPrice;
	    private String paymentMode;
	    private String transactionStatus;
	    private String completedAt;

	    // GETTERS & SETTERS

	    public Integer getTransactionId() {
	        return transactionId;
	    }

	    public void setTransactionId(Integer transactionId) {
	        this.transactionId = transactionId;
	    }

	    public CarListingEntity getListing() {
	        return listing;
	    }

	    public void setListing(CarListingEntity listing) {
	        this.listing = listing;
	    }

	    public UserEntity getBuyer() {
	        return buyer;
	    }

	    public void setBuyer(UserEntity buyer) {
	        this.buyer = buyer;
	    }

	    public UserEntity getSeller() {
	        return seller;
	    }

	    public void setSeller(UserEntity seller) {
	        this.seller = seller;
	    }

	    public Double getFinalPrice() {
	        return finalPrice;
	    }

	    public void setFinalPrice(Double finalPrice) {
	        this.finalPrice = finalPrice;
	    }

	    public String getPaymentMode() {
	        return paymentMode;
	    }

	    public void setPaymentMode(String paymentMode) {
	        this.paymentMode = paymentMode;
	    }

	    public String getTransactionStatus() {
	        return transactionStatus;
	    }

	    public void setTransactionStatus(String transactionStatus) {
	        this.transactionStatus = transactionStatus;
	    }

	    public String getCompletedAt() {
	        return completedAt;
	    }

	    public void setCompletedAt(String completedAt) {
	        this.completedAt = completedAt;
	    }
	}