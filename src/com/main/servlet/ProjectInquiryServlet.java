/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.servlet;

import com.main.pojo.TblProjectInquiry;
import com.main.service.ProjectInquiryService;
import com.main.util.SuperConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author namita
 */
@WebServlet(name = "ProjectInquiryServlet", urlPatterns = {"/ProjectInquiryServlet"})
public class ProjectInquiryServlet extends HttpServlet {

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

        TblProjectInquiry saveTblProjectInquiry = doMapping(request, response);
        response.getWriter().print(saveTblProjectInquiry);
        boolean saveTblProjectResult = ProjectInquiryService.saveTblProjectInquiry(saveTblProjectInquiry);
        try {
            if (saveTblProjectResult) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_PROJECT_INQUIRY);
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
            TblProjectInquiry updateTblProjectInquiry = doMapping(request, response);
            boolean updateTblOrder = ProjectInquiryService.updateTblProjectInquiry(updateTblProjectInquiry);
            if (updateTblOrder) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_PROJECT_INQUIRY);
            } else {
                System.out.println("Eroor");
            }
        } catch (Exception ex) {
            System.out.println("Eroor");
        }
    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TblProjectInquiry deleteTblProjectInquiry = doMapping(request, response);
        response.getWriter().print(deleteTblProjectInquiry);
        boolean saveTblProjectResult = ProjectInquiryService.deleteTblProjectInquiry(deleteTblProjectInquiry);
        try {
            if (saveTblProjectResult) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_PROJECT_INQUIRY);
                // response.getWriter().print(saveTblProjectResult ? "done" : "error");
            } else {
                System.out.println("Eroor");
            }
        } catch (Exception e) {
            System.out.println("catch");
        }
    }

    private void viewRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void autoCompletRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private TblProjectInquiry doMapping(HttpServletRequest request, HttpServletResponse response) throws IOException {

        TblProjectInquiry TblProjectInquiry = new TblProjectInquiry();
        //TblProjectInquiry.setTxtId(SuperConnection.getMd5String());
        TblProjectInquiry.setTxtDeptId("1");

        TblProjectInquiry.setTxtProjectCategory(getParam(request, "txtProjectCategory"));
        TblProjectInquiry.setTxtTechnologyName(getParam(request, "txtTechnologyName"));
        //TblProjectInquiry.setTxtStream(getParam(request, "txtStream"));
        TblProjectInquiry.setTxtStudentName(getParam(request, "txtStudentName"));
        //TblProjectInquiry.setTxtMobileNo(getParam(request, "txtMobileNo"));
        TblProjectInquiry.setTxtEmailId(getParam(request, "txtEmailId"));
        TblProjectInquiry.setTxtCollegeName(getParam(request, "txtCollegeName"));
        TblProjectInquiry.setTxtCityName(getParam(request, "txtCityName"));
        //TblProjectInquiry.setTxtReferBy(getParam(request, "txtReferBy"));
        //TblProjectInquiry.setTxtProjectBuged(getParam(request, "txtProjectBuged"));
        //TblProjectInquiry.setTxtDetails(getParam(request, "txtDetails"));
        Object updateId = getParam(request, "updateId");

        if (updateId != null) {
            if (updateId.toString().trim().length() != 0) {
                TblProjectInquiry.setTxtId(request.getParameter("updateId"));
            } else {
                TblProjectInquiry.setTxtId(SuperConnection.getMd5String());
            }
        } 
        return TblProjectInquiry;
    }

    private String getParam(HttpServletRequest request, String str) {
        return request.getParameter(str);
    }

//    public static void main(String[] args) {
//        try {
//            new InquiryServlet().doMapping();
//        } catch (IOException ex) {
//            Logger.getLogger(InquiryServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
}
