 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.main.service;

import com.main.pojo.TblProject;
import com.main.pojo.TblTechnology;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author namita
 */
public class ProjectService {
        

    public static boolean saveTblProject(TblProject tblTblProject) {
        try {
            SuperConnection.saveEntity(tblTblProject);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblProject.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblProject(TblProject tblTblProject) {
        try {
            SuperConnection.updateEntity(tblTblProject);
            return true;
        } catch (Exception ex) {
            System.out.println("===============>" + ex.getMessage());
            Logger.getLogger(TblProject.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblProject(TblProject tblTblProject) {
        try {
            SuperConnection.deleteEntity(tblTblProject);
            return true;
        } catch (Exception ex) {
           Logger.getLogger(TblProject.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblProject> getTblProjectList() {
        try {
            return SuperConnection.listEntity(new TblProject());
        } catch (Exception ex) {
            Logger.getLogger(TblProject.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static TblProject getTblProjectlistById(String id) {
        try {
            Object object = SuperConnection.getEntityById(new TblProject(), id);
            return (TblProject) object;
        } catch (Exception ex) {
            Logger.getLogger(TblProject.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblProject> searchOrder(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblProject(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(TblProject.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblProject> getTblProjectByLimit(TblProject tblProject, Integer limit) {
        try {
            return SuperConnection.listEntityByLimiy(tblProject, limit);
        } catch (Exception ex) {
           Logger.getLogger(TblProject.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    
    public static void main(String[] args) {
        List<TblProject> tblprojects = ProjectService.getTblProjectList();
        for (TblProject tblproject : tblprojects) {
            System.out.println(tblproject.getTblTechnology().getTxtProjectCategory());
        }
    }
}
