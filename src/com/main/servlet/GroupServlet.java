/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.servlet;

import com.main.pojo.TblProjectGroup;
import com.main.service.GroupService;
import com.main.service.ProjectService;
import com.main.util.SuperConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author namita
 */
@WebServlet(name = "GroupServlet", urlPatterns = {"/GroupServlet"})
public class GroupServlet extends HttpServlet {

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
        TblProjectGroup tblProjectGroup = doMapping(request, response);

        response.getWriter().print(tblProjectGroup);
        boolean saveTblProjectResult = GroupService.saveTblProjectGroup(tblProjectGroup);
        try {
            if (saveTblProjectResult) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_GROUP);
                // response.getWriter().print(saveTblProjectResult ? "done" : "error");
            } else {
                System.out.println("Eroor");
            }
        } catch (Exception e) {
            System.out.println("catch");
        }
    }

    private void updateRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TblProjectGroup tblProjectGroup = doMapping(request, response);
        boolean updateTblProjectResult = GroupService.updateTblProjectGroup(tblProjectGroup);
        try {
            if (updateTblProjectResult) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_GROUP);
                // response.getWriter().print(saveTblProjectResult ? "done" : "error");
            } else {
                System.out.println("Eroor");
            }
        } catch (Exception e) {
            System.out.println("catch");
        }
    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
         TblProjectGroup tblProjectGroup = doMapping(request, response);

       
        boolean updateTblProjectResult = GroupService.deleteTblProjectGroup(tblProjectGroup);
        try {
            if (updateTblProjectResult) {
                response.sendRedirect("manager/" + IServletConstant.PAGE_VIEW_GROUP);
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

    private TblProjectGroup doMapping(HttpServletRequest request, HttpServletResponse response){

        TblProjectGroup tblProjectGroup = new TblProjectGroup();
        //tblGroup.setTxtId(SuperConnection.getMd5String());
        //tblProjectGroup.setTxtId(SuperConnection.getMd5String());
        tblProjectGroup.setTblProjectInquiry(null);
        tblProjectGroup.setTxtDeptId("1");
        //tblProjectGroup.setTxtProjectId("sadsadsadsadsadsadsada");
        //tblProjectGroup.setTxtProjectName(getParam(request, "txtProjectName"));
        tblProjectGroup.setTxtGroupCode(getParam(request, "txtGroupCode"));
        tblProjectGroup.setTxtGropuMember(Integer.parseInt(getParam(request, "txtGropuMember")));
        tblProjectGroup.setTxtProjectAmt(Integer.parseInt(getParam(request, "txtProjectAmt")));
        tblProjectGroup.setTxtPaidAmt(Integer.parseInt(getParam(request, "txtPaidAmt")));
        tblProjectGroup.setTxtBalanceAmt(Integer.parseInt(getParam(request, "txtBalanceAmt")));
        tblProjectGroup.setTxtEntryDate(new Date(System.currentTimeMillis()));
        tblProjectGroup.setTxtIsActive("on".equals(getParam(request, "isActive")) ? 'Y' : 'N');
        tblProjectGroup.setTxtIsActive("on".equals(getParam(request, "isActive")) ? 'Y' : 'N');
       
        Object updateId = getParam(request, "updateId");
        tblProjectGroup.setTxtId(SuperConnection.getMd5String());
        System.out.println(tblProjectGroup);
        if (updateId != null) {
            if (updateId.toString().trim().length() != 0) {
                tblProjectGroup.setTxtId(request.getParameter("updateId"));
            } else {
                tblProjectGroup.setTxtId(SuperConnection.getMd5String());
            }
        } else {
            tblProjectGroup.setTxtId(SuperConnection.getMd5String());
        }
        return tblProjectGroup;
    }

    private String getParam(HttpServletRequest request, String str) {
        return request.getParameter(str);
    }

    public static void main(String[] args) {

    }
}
