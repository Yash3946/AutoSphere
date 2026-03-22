package com.grownited.entity;

import jakarta.persistence.*;

@Entity
public class WishlistEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer wishlistId;

    // Car relation
    @ManyToOne
    @JoinColumn(name = "listing_id")
    private CarListingEntity carListing;

    // 🔥 User relation (IMPORTANT)
    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;

    // ================= GETTERS SETTERS =================

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

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
}