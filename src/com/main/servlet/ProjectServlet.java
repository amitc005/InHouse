/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.servlet;

import com.main.pojo.TblProject;
import com.main.pojo.TblTechnology;
import com.main.service.ProjectService;
import static com.main.service.ProjectService.saveTblProject;
import com.main.util.SuperConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author namita
 */
@WebServlet(name = "ProjectServlet", urlPatterns = {"/ProjectServlet"})
public class ProjectServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String foraction = request.getParameter("action");
//            out.print(foraction);
            //out.print(foraction.equals(IServletConstant.ACTION_ADD) ? "success" : "Error" );
            if (foraction.equals(IServletConstant.ACTION_ADD)) {
                saveRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_UPDATE)) {
                updateRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_DELETE)) {
                deleteRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_VIEW)) {
                viewRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_AUTOCOMPLET)) {
                autoCompletRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_SEARCH)) {
                search(request, response);
            }
        } catch (Exception e) {
            out.print(e);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void saveRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TblProject saveTblProjectObj = doMapping(request, response);
        response.getWriter().print(saveTblProjectObj);
        boolean saveTblProjectResult = ProjectService.saveTblProject(saveTblProjectObj);
        try {
            if (saveTblProjectResult) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_PROJECT);
                // response.getWriter().print(saveTblProjectResult ? "done" : "error");
            } else {
                System.out.println("Eroor");
            }
        } catch (Exception e) {
            System.out.println("catch");
        }

    }

    private void updateRequest(HttpServletRequest request, HttpServletResponse response) {

        try {
            TblProject updateTblProjectObj = doMapping(request, response);
            boolean updateTblOrder = ProjectService.updateTblProject(updateTblProjectObj);
            if (updateTblOrder) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_PROJECT);
            } else {
                System.out.println("Eroor");
            }
        } catch (Exception ex) {
            System.out.println("Eroor");
        }

    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
         try {
            TblProject deleteTblProjectObj = doMapping(request, response);
            //deleteTblProjectObj.setTblTechnology(deleteTblProjectObj.getTblTechnology().getTxtId());
            boolean deleteTblOrder = ProjectService.deleteTblProject(deleteTblProjectObj);
            if (deleteTblOrder) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_PROJECT);
            } else {
                System.out.println("I am dead");
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void viewRequest(HttpServletRequest request, HttpServletResponse response) {
        // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void autoCompletRequest(HttpServletRequest request, HttpServletResponse response) {
        // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private TblProject doMapping(HttpServletRequest request, HttpServletResponse response) throws IOException {

        TblProject tblProject = new TblProject();
        TblTechnology entityById = getTblTechnology(getParam(request, IServletConstant.HIDDEN_MAPPING_ID));
        System.out.println(entityById);
        tblProject.setTxtId(SuperConnection.getMd5String());
        tblProject.setTxtTechnologyName(getParam(request, "txtTechnologyName"));
        tblProject.setTblTechnology(entityById);
        tblProject.setTxtDeptId(" ");
        tblProject.setTxtAbstract(getParam(request, "txtAbstract"));
        tblProject.setTxtProjectName(getParam(request, "txtProjectName"));
        Object updateId = request.getParameter("updateId");
        if (updateId != null) {
            if (updateId.toString().trim().length() != 0) {
                tblProject.setTxtId(request.getParameter("updateId"));
            } else {
                tblProject.setTxtId(SuperConnection.getMd5String());
            }
        }
        return tblProject;
    }

    private TblTechnology getTblTechnology(String id) {
        return (TblTechnology) SuperConnection.getEntityById(new TblTechnology(), id);

    }

    private String getParam(HttpServletRequest request, String str) {
        return request.getParameter(str);
    }
//    
//    
//    public static void main(String[] args) {
//           
//    }
}
