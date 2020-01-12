/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.dto.ProductDTO;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author yuvraj
 */
public class OptimizationService {

    public static void main(String[] args) {
        optimization();
    }

    public static void optimize() {
        String email = "";
        String link = "";
        try {
            String sql = "SELECT DISTINCT byUser FROM  `tbl_review`  ";
            System.out.println("sql = " + sql);
            ResultSet executeQuery = MsAccessConnection.preStateMent(sql).executeQuery();
            while (executeQuery.next()) {
                String byUser = executeQuery.getString("byUser");

                String sql0 = "SELECT txtEMail  FROM  `tbl_registration` where id =  " + "='" + byUser + "'";
                ResultSet executeQuery5 = MsAccessConnection.preStateMent(sql0).executeQuery();
                while (executeQuery5.next()) {
                    email = executeQuery5.getString("txtEMail");
                }
                String sql1 = " SELECT   `productId` FROM  `tbl_review` WHERE byUser = '" + byUser + "' ";
                ResultSet executeQuery1 = MsAccessConnection.preStateMent(sql1).executeQuery();
                while (executeQuery1.next()) {
                    String productId = executeQuery1.getString("productId");
                    String sql2 = " SELECT pCategory FROM  `tbl_product`  where id =  " + productId;
                    ResultSet executeQuery2 = MsAccessConnection.preStateMent(sql2).executeQuery();
                    while (executeQuery2.next()) {
                        String pCategory = executeQuery2.getString("pCategory");
                        if (pCategory.toLowerCase().equals("book")) {
                            link += "http://localhost:8084/WebApplication1/index.jsp?page=details&id=" + productId + "&cate=mybook\n";
                        }
                        if (pCategory.toLowerCase().equals("clothing")) {
                            link += "http://localhost:8084/WebApplication1/index.jsp?page=details&id=" + productId + "&cate=clothing\n";
                        }
                        if (pCategory.toLowerCase().equals("electronics")) {
                            link += "http://localhost:8084/WebApplication1/index.jsp?page=details&id=" + productId + "&cate=electronics\n";
                        }
                        if (pCategory.toLowerCase().equals("kitchen")) {
                            link += "http://localhost:8084/WebApplication1/index.jsp?page=details&id=" + productId + "&cate=kitchen\n";
                        }
                        if (pCategory.toLowerCase().equals("toys & games")) {
                            link += "http://localhost:8084/WebApplication1/index.jsp?page=details&id=" + productId + "&cate=toysgames\n";
                        }
                    }
                }
//                System.out.println("executeQuery2 = " + link);
                Sendemail.sucessRegistration(email, link);
            }
            executeQuery.close();
        } catch (Exception e) {
        }
    }

    public static void optimization() {
        optimize();
        ArrayList<ProductDTO> searchOrListReview = ProductService.searchOrListReview("", "");
        for (ProductDTO productDTO : searchOrListReview) {
            int counter = ProductService.getCounter(productDTO.getvProductId());
            String update = "UPDATE  `db_addoptimization`.`tbl_product` SET  `vReview` =  '" + counter + "' WHERE  `tbl_product`.`id` = " + productDTO.getvProductId() + "";
            try {
                MsAccessConnection.preStateMent(update).execute();

                String sql = "SELECT DISTINCT  `byUser` FROM  `tbl_review` ";
                System.out.println("sql = " + sql);
                ResultSet executeQuery = MsAccessConnection.preStateMent(sql).executeQuery();
                while (executeQuery.next()) {
                    String byUser = executeQuery.getString("byUser");
                    System.out.println("byUser = " + byUser);
                    String sql1 = "SELECT txtEMail FROM  `tbl_review` tbl_registration where id =  " + byUser;
                    ResultSet executeQuery1 = MsAccessConnection.preStateMent(sql1).executeQuery();
                    while (executeQuery1.next()) {
                    }
                }
                executeQuery.close();
            } catch (Exception e) {
            }
        }
    }
}
