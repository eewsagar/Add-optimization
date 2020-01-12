package com.main.dto;

public class CategoryDTO {

    public CategoryDTO() {

    }
    private String id;
    private String entryDate;
    private String categoryName;
    private String categoryDescription;
    private String isActive;

    public String getID() {
        return id;
    }

    public String getEntryDate() {
        return entryDate;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public String getIsActive() {
        return isActive;
    }

    public void setID(String id) {
        this.id = id;
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public void setIsActive(String isActive) {
        this.isActive = isActive;
    }
}
