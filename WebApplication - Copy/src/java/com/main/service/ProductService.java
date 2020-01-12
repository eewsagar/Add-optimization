package com.main.service;

import com.main.dto.ProductDTO;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Logger;

public class ProductService {

    public static int saveinterst(String kewward) {
        String insertQuery = "INSERT INTO tbl_interset(pCategory)values('" + kewward + "')";
        try {
            MsAccessConnection.preStateMent(insertQuery).execute();
        } catch (Exception e) {
        }
        return 1;
    }

    public static int savereview(String product, String user) {
        String insertQuery = "INSERT INTO tbl_review(byUser,productId)values('" + user + "','" + product + "')";
        try {
            MsAccessConnection.preStateMent(insertQuery).execute();
        } catch (Exception e) {
        }
        return 1;
    }

    public static Integer saveProduct(ProductDTO dTO) {
        String insertQuery = "INSERT INTO tbl_product(pCategory,vImages,entryDate,pName,pPrice,description,pType,keywords,txtByAdder,isActive)VALUES ("
                + "'" + dTO.getPCategory() + "',"
                + "'" + dTO.getTxtImage() + "',"
                + "'" + dTO.getEntryDate() + "',"
                + "'" + dTO.getPName() + "',"
                + "'" + dTO.getPPrice() + "',"
                + "'" + dTO.getDescription().replaceAll("'", "") + "',"
                + "'" + dTO.getPType() + "',"
                + "'" + dTO.getKeywords() + "',"
                + "'" + dTO.getTxtByAdder() + "',"
                + "'Y');";
        System.out.println("hhhhh####");
        System.out.println("@@@@@@@@@@@ i am before @@@@@ = > " + insertQuery);
        try {
            MsAccessConnection.preStateMent(insertQuery).execute();
            return 1;
        } catch (Exception e) {
            Logger.getLogger(ProductService.class.getName());
        }
        return null;
    }

    public static Integer updateProduct(ProductDTO dTO, String id) {
        String updateQuery = "UPDATE tbl_product SET "
                + "pName = '" + dTO.getPName() + "',"
                + "pPrice = '" + dTO.getPPrice() + "',"
                + "description = '" + dTO.getDescription() + "',"
                + "pType = '" + dTO.getPType() + "',"
                + "keywords = '" + dTO.getKeywords() + "'"
                + "  WHERE id = '" + id + "' ";
        System.out.println("updateQuery = " + updateQuery);

        try {
            MsAccessConnection.preStateMent(updateQuery).execute();

            return 1;
        } catch (Exception e) {
            Logger.getLogger(ProductService.class.getName());
        }
        return null;
    }

    public static ArrayList<ProductDTO> searchOrListProduct(String id, String mode) {
        String searchQuery = "";
        if (mode.equals("all")) {
            searchQuery = "SELECT * FROM tbl_product ORDER BY  `tbl_product`.`vReview` DESC  ";
        }
        if (mode.equals("postAdd")) {
            searchQuery = "SELECT * FROM tbl_product  WHERE txtByAdder = '" + id + "'   ORDER BY id DESC  ";
        }
        if (mode.equals("search")) {
            searchQuery = "SELECT * FROM tbl_product WHERE id = '" + id + "'  ORDER BY  `tbl_product`.`vReview` DESC  ";
        }
        if (mode.equals("bycat")) {
            searchQuery = "SELECT * FROM tbl_product WHERE pCategory = '" + id + "'  ORDER BY  `tbl_product`.`vReview` DESC LIMIT 0,24 ";
        }
        if (mode.equals("user")) {
            searchQuery = "SELECT * FROM tbl_product WHERE txtByAdder = '" + id + "'  ORDER BY  `tbl_product`.`vReview` DESC LIMIT 0,24 ";
        }
        if (mode.equals("byid")) {
            searchQuery = "SELECT * FROM tbl_product WHERE id =  " + id;
        }
        if (mode.equals("byand")) {
            searchQuery = "SELECT * FROM tbl_product WHERE " + id + " ORDER BY  `tbl_product`.`vReview` DESC  ";
        }

        if (mode.equals("bycatlimit")) {
            searchQuery = "SELECT * FROM tbl_product WHERE pCategory = '" + id + "'  ORDER BY id DESC LIMIT 0,6 ";
        }

        if (mode.equals("byadvertiser")) {
            searchQuery = "SELECT * FROM tbl_product WHERE pCategory = '" + id + "'  AND   txtByAdder != '0' OR txtByAdder != '1' OR txtByAdder != '2' ORDER BY  `tbl_product`.`vReview`  DESC LIMIT 0,6 ";
        }
        System.out.println("searchQuery = " + searchQuery);
        ArrayList<ProductDTO> arrayList = new ArrayList<ProductDTO>();
        try {
            ResultSet executeQuery = MsAccessConnection.preStateMent(searchQuery).executeQuery();
            while (executeQuery.next()) {
                ProductDTO dTO = new ProductDTO();
                dTO.setID(executeQuery.getString("id"));
                dTO.setPCategory(executeQuery.getString("pCategory"));
                dTO.setTxtImage(executeQuery.getString("vImages"));
                dTO.setEntryDate(executeQuery.getString("entryDate"));
                dTO.setPName(executeQuery.getString("pName"));
                dTO.setPPrice(executeQuery.getString("pPrice"));
                dTO.setDescription(executeQuery.getString("description"));
                dTO.setPType(executeQuery.getString("pType"));
                dTO.setKeywords(executeQuery.getString("keywords"));
                dTO.setIsActive(executeQuery.getString("isActive"));
                arrayList.add(dTO);
            }
            executeQuery.close();
        } catch (Exception e) {
            Logger.getLogger(ProductService.class.getName());
        }
        return arrayList;
    }

    public static void saveDetails(String userId, String productId) {
        if (userId == null || userId.length() == 0) {
            userId = "";
        }
        String string = "INSERT INTO `db_addoptimization`.`tbl_review` ( `byUser`, `productId`,`entryDate` ) VALUES ('" + userId + "', '" + productId + "','" + new Date(System.currentTimeMillis()) + "' );";
        try {
            MsAccessConnection.preStateMent(string).execute();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        getKyewordList();
    }

    public static ArrayList<ProductDTO> getKyewordList() {
        ArrayList<ProductDTO> arrayList = new ArrayList<ProductDTO>();
        String string = "SELECT DISTINCT  `pCategory` FROM  `tbl_interset` ";
        try {
            ResultSet executeQuery = MsAccessConnection.preStateMent(string).executeQuery();
            int i = 1;
            while (executeQuery.next()) {
                ProductDTO productDTO = new ProductDTO();
                String key = executeQuery.getString("pCategory");
                String string1 = "SELECT COUNT( * ) AS counter FROM  `tbl_interset` WHERE `pCategory`= '" + key + "' ";
                System.out.println("string1 = " + string1);
                ResultSet executeQuery1 = MsAccessConnection.preStateMent(string1).executeQuery();
                while (executeQuery1.next()) {
                    productDTO.setID("" + executeQuery1.getString("counter"));
                }
                System.out.println("executeQuery1 = " + i);
                productDTO.setKeywords(key);
//                System.out.println(""+i);
                arrayList.add(productDTO);
            }
            executeQuery.close();
        } catch (Exception e) {
        }
        return arrayList;
    }

    public static ArrayList<ProductDTO> searchOrListReview(String id, String mode) {
        String searchQuery = "";
        searchQuery = "SELECT DISTINCT  `productId` FROM  `tbl_review` ";
        System.out.println("searchQuery = " + searchQuery);
        ArrayList<ProductDTO> arrayList = new ArrayList<ProductDTO>();
        try {
            ResultSet executeQuery = MsAccessConnection.preStateMent(searchQuery).executeQuery();
            while (executeQuery.next()) {
                ProductDTO dTO = new ProductDTO();
                dTO.setvProductId(executeQuery.getString("productId"));
                arrayList.add(dTO);
            }
            executeQuery.close();
        } catch (Exception e) {
            Logger.getLogger(ProductService.class.getName());
        }
        return arrayList;
    }

    public static ArrayList<ProductDTO> searchOrListReviewCat(String id, String mode) {
        String searchQuery = "";
        searchQuery = "SELECT id FROM tbl_review WHERE productId = '" + id + "'";
        ArrayList<ProductDTO> arrayList = new ArrayList<ProductDTO>();
        try {
            ResultSet executeQuery = MsAccessConnection.preStateMent(searchQuery).executeQuery();
            while (executeQuery.next()) {
                ProductDTO dTO = new ProductDTO();
                dTO.setvProductId(executeQuery.getString("productId"));
//                dTO.setID(executeQuery.getString("id"));
//                dTO.setvUser(executeQuery.getString("byUser"));
                arrayList.add(dTO);
            }
            executeQuery.close();
        } catch (Exception e) {
            Logger.getLogger(ProductService.class.getName());
        }
        return arrayList;
    }

    public static int getCounter(String id) {
        String searchQuery = "SELECT id FROM tbl_review WHERE productId = '" + id + "'";
        int index = 1;
        try {
            ResultSet executeQuery = MsAccessConnection.preStateMent(searchQuery).executeQuery();
            while (executeQuery.next()) {
                index++;
            }
        } catch (Exception e) {
        }
        return index;
    }
}
