package com.grownited.entity;

import jakarta.persistence.*;

@Entity
public class WishlistEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer wishlistId;

    @ManyToOne
    @JoinColumn(name="listingId")
    private CarListingEntity carListing;

    public Integer getWishlistId() {
        return wishlistId;
    }

    public void setWishlistId(Integer wishlistId) {
        this.wishlistId = wishlistId;
    }

    public CarListingEntity getCarListing() {
        return carListing;
    }

    public void setCarListing(CarListingEntity carListing) {
        this.carListing = carListing;
    }
}