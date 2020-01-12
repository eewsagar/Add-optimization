package com.main.service;

import com.main.dto.CategoryDTO;
import com.main.dto.UserDTO;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Logger;

public class CategoryService {

    public static Integer saveCategory(CategoryDTO dTO) {
        String insertQuery = "INSERT INTO tbl_category(entryDate,categoryName,categoryDescription,isActive)VALUES ("
                + "'" + dTO.getEntryDate() + "',"
                + "'" + dTO.getCategoryName() + "',"
                + "'" + dTO.getCategoryDescription() + "',"
                + "'Y');";
        System.out.println("insertQuery = " + insertQuery);
        try {
            MsAccessConnection.preStateMent(insertQuery).execute();

            return 1;
        } catch (Exception e) {
            Logger.getLogger(CategoryService.class.getName());
        }
        return null;
    }

    public static Integer updateCategory(CategoryDTO dTO, String id) {
        String updateQuery = "UPDATE tbl_category SET "
                + "entryDate = '" + dTO.getEntryDate() + "',"
                + "categoryName = '" + dTO.getCategoryName() + "',"
                + "categoryDescription = '" + dTO.getCategoryDescription() + "',"
                + "isActive = '" + dTO.getIsActive() + "'  WHERE id = '" + id + "' AND `isActive` = 'T'";
        System.out.println("updateQuery = " + updateQuery);

        try {
            MsAccessConnection.preStateMent(updateQuery).execute();

            return 1;
        } catch (Exception e) {
            Logger.getLogger(CategoryService.class.getName());
        }
        return null;
    }

    public static ArrayList<CategoryDTO> searchOrListCategory(String id, String mode) {
        String searchQuery = "";
        if (mode.equals("all")) {
            searchQuery = "SELECT * FROM tbl_category";
        }
        if (mode.equals("search")) {
            searchQuery = "SELECT * FROM tbl_category WHERE id = '" + id + "'";
        }
        System.out.println("searchQuery = " + searchQuery);
        ArrayList<CategoryDTO> arrayList = new ArrayList<CategoryDTO>();
        try {
            ResultSet executeQuery = MsAccessConnection.preStateMent(searchQuery).executeQuery();

            while (executeQuery.next()) {
                CategoryDTO dTO = new CategoryDTO();
                dTO.setID(executeQuery.getString("id"));
                dTO.setEntryDate(executeQuery.getString("entryDate"));
                dTO.setCategoryName(executeQuery.getString("categoryName"));
                dTO.setCategoryDescription(executeQuery.getString("categoryDescription"));
                dTO.setIsActive(executeQuery.getString("isActive"));
                arrayList.add(dTO);
            }
            executeQuery.close();
        } catch (Exception e) {
            Logger.getLogger(CategoryService.class.getName());
        }
        return arrayList;
    }

    public static ArrayList<UserDTO> getUserList(String id, String mode) {
        String searchQuery = "";
        searchQuery = "SELECT * FROM tbl_login WHERE txtType = 2 ORDER BY id DESC";
        System.out.println("searchQuery = " + searchQuery);
        ArrayList<UserDTO> arrayList = new ArrayList<UserDTO>();
        try {
            ResultSet executeQuery = MsAccessConnection.preStateMent(searchQuery).executeQuery();
            while (executeQuery.next()) {
                UserDTO dTO = new UserDTO();
                dTO.setId(executeQuery.getString("id"));
                dTO.setFirstName(executeQuery.getString("txtFirstName"));
                dTO.setLastName(executeQuery.getString("txtLastName"));
                dTO.setEmaild(executeQuery.getString("txtEMail"));
                dTO.setUsername(executeQuery.getString("txtUserName"));
                dTO.setPassword(executeQuery.getString("txtPassword"));
                arrayList.add(dTO);
            }
            executeQuery.close();
        } catch (Exception e) {
            Logger.getLogger(CategoryService.class.getName());
        }
        return arrayList;
    }
}
