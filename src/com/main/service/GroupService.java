/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.main.service;


import com.main.pojo.TblProjectGroup;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author namita
 */
public class GroupService {
     public static boolean saveTblProjectGroup(TblProjectGroup tblProjectGroup) {
        try {
            SuperConnection.saveEntity(tblProjectGroup);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblProjectGroup.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblProjectGroup(TblProjectGroup tblProjectGroup) {
        try {
            SuperConnection.updateEntity(tblProjectGroup);
            return true;
        } catch (Exception ex) {
            System.out.println("===============>" + ex.getMessage());
            Logger.getLogger(TblProjectGroup.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblProjectGroup(TblProjectGroup tblProjectGroup) {
        try {
            SuperConnection.deleteEntity(tblProjectGroup);
            return true;
        } catch (Exception ex) {
           Logger.getLogger(TblProjectGroup.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblProjectGroup> getTblProjectGroupList() {
        try {
            return SuperConnection.listEntity(new TblProjectGroup());
        } catch (Exception ex) {
            Logger.getLogger(TblProjectGroup.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static TblProjectGroup getTblProjectGroupById(String id) {
        try {
            Object object = SuperConnection.getEntityById(new TblProjectGroup(), id);
            return (TblProjectGroup) object;
        } catch (Exception ex) {
            Logger.getLogger(TblProjectGroup.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblProjectGroup> searchOrder(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblProjectGroup(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(TblProjectGroup.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblProjectGroup> getTblProjectByLimit(TblProjectGroup tblProjectGroup, Integer limit) {
        try {
            return SuperConnection.listEntityByLimiy(tblProjectGroup, limit);
        } catch (Exception ex) {
           Logger.getLogger(TblProjectGroup.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
}
