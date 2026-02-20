package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
//import jakarta.persistence.JoinColumn;
//import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="CarFeatures")
public class CarFeaturesEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer	featureId;
	
//	@ManyToOne
//    @JoinColumn(name = "variantId")
//    private CarVariantEntity carVariant;
	
	private Integer variantId;

	private String safetyFeatures;
	private String comfortFeatures;
	private String entertainmentFeatures;
	private String exteriorFeatures;
	public Integer getFeatureId() {
		return featureId;
	}
	public void setFeatureId(Integer featureId) {
		this.featureId = featureId;
	}
//	public CarVariantEntity getCarVariant() {
//		return carVariant;
//	}
//	public void setCarVariant(CarVariantEntity carVariant) {
//		this.carVariant = carVariant;
//	}
	public String getSafetyFeatures() {
		return safetyFeatures;
	}
	public void setSafetyFeatures(String safetyFeatures) {
		this.safetyFeatures = safetyFeatures;
	}
	public String getComfortFeatures() {
		return comfortFeatures;
	}
	public void setComfortFeatures(String comfortFeatures) {
		this.comfortFeatures = comfortFeatures;
	}
	public String getEntertainmentFeatures() {
		return entertainmentFeatures;
	}
	public void setEntertainmentFeatures(String entertainmentFeatures) {
		this.entertainmentFeatures = entertainmentFeatures;
	}
	public String getExteriorFeatures() {
		return exteriorFeatures;
	}
	public void setExteriorFeatures(String exteriorFeatures) {
		this.exteriorFeatures = exteriorFeatures;
	}
	public Integer getVariantId() {
		return variantId;
	}
	public void setVariantId(Integer variantId) {
		this.variantId = variantId;
	}
	
	
	
	
	

}