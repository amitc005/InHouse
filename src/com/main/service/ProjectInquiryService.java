/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.main.service;

import com.main.pojo.TblProjectInquiry;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author namita
 */
public class ProjectInquiryService {
        public static boolean saveTblProjectInquiry(TblProjectInquiry tblProjectInquiry) {
        try {
            SuperConnection.saveEntity(tblProjectInquiry);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblProjectInquiry.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblProjectInquiry(TblProjectInquiry tblProjectInquiry) {
        try {
            SuperConnection.updateEntity(tblProjectInquiry);
            return true;
        } catch (Exception ex) {
            System.out.println("===============>" + ex.getMessage());
            Logger.getLogger(TblProjectInquiry.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblProjectInquiry(TblProjectInquiry tblProjectInquiry) {
        try {
            SuperConnection.deleteEntity(tblProjectInquiry);
            return true;
        } catch (Exception ex) {
           Logger.getLogger(TblProjectInquiry.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblProjectInquiry> getTblProjectInquiryList() {
        try {
            return SuperConnection.listEntity(new TblProjectInquiry());
        } catch (Exception ex) {
            Logger.getLogger(TblProjectInquiry.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static TblProjectInquiry getTblProjectInquirylistById(String id) {
        try {
            Object object = SuperConnection.getEntityById(new TblProjectInquiry(), id);
            return (TblProjectInquiry) object;
        } catch (Exception ex) {
            Logger.getLogger(TblProjectInquiry.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblProjectInquiry> searchOrder(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblProjectInquiry(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(TblProjectInquiry.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblProjectInquiry> getTblProjectByLimit(TblProjectInquiry tblProject, Integer limit) {
        try {
            return SuperConnection.listEntityByLimiy(tblProject, limit);
        } catch (Exception ex) {
           Logger.getLogger(TblProjectInquiry.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    
    public static void main(String[] args) {
//        List<TblProjectInquiry> tblprojects = ProjectService.getTblProjectInquiry();
//        for (TblProjectInquiry tblproject : tblprojects) {
//            System.out.println(tblproject.getTblTechnology().getTxtProjectCategory());
//        }
    }
}
