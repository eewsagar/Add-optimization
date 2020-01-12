package com.main.dto;

public class ProductDTO {

    public ProductDTO() {

    }
    private String id;
    private String pCategory;
    private String txtByAdder;
    private String vUser;
    private String vProductId;
    private String entryDate;
    private String txtImage;
    private String pName;
    private String pPrice;
    private String description;
    private String pType;
    private String keywords;
    private String isActive;

    public String getvProductId() {
        return vProductId;
    }

    public void setvProductId(String vProductId) {
        this.vProductId = vProductId;
    }

    public String getTxtByAdder() {
        return txtByAdder;
    }

    public void setTxtByAdder(String txtByAdder) {
        this.txtByAdder = txtByAdder;
    }

    
    
    public void setvUser(String vUser) {
        this.vUser = vUser;
    }

    public String getTxtImage() {
        return txtImage;
    }

    public void setTxtImage(String txtImage) {
        this.txtImage = txtImage;
    }

    public String getID() {
        return id;
    }

    public String getPCategory() {
        return pCategory;
    }

    public String getEntryDate() {
        return entryDate;
    }

    public String getPName() {
        return pName;
    }

    public String getPPrice() {
        return pPrice;
    }

    public String getDescription() {
        return description;
    }

    public String getPType() {
        return pType;
    }

    public String getKeywords() {
        return keywords;
    }

    public String getIsActive() {
        return isActive;
    }

    public void setID(String id) {
        this.id = id;
    }

    public void setPCategory(String pCategory) {
        this.pCategory = pCategory;
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    public void setPName(String pName) {
        this.pName = pName;
    }

    public void setPPrice(String pPrice) {
        this.pPrice = pPrice;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPType(String pType) {
        this.pType = pType;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public void setIsActive(String isActive) {
        this.isActive = isActive;
    }
}
