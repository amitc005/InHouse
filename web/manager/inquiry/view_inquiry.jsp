<%@page import="com.main.service.ProjectInquiryService"%>
<%@page import="com.main.pojo.TblProjectInquiry"%>
<%@page import="com.main.pojo.TblProject"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
 <%

    Object projectsearch = request.getSession().getAttribute("inquirysearch");
   
    if (projectsearch == null) {
        List<TblProjectInquiry> tblProjectInquiry = ProjectInquiryService.getTblProjectInquiryList();
        pageContext.setAttribute("tblProjectInquiry", tblProjectInquiry);
    } else {
        pageContext.setAttribute("tblprojects", projectsearch);
        request.getSession().setAttribute("projectsearch", null);
    }

%>

 
<div class="container-fluid" style="border: solid 0px;">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH STUDENT FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">STUDENT NAME :</label>
                            <div class="controls">
                                <input type="text" name="client_name" id="client_name"  autofocus="" maxlength="100" class="span11"    placeholder="STUDENT NAME" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-info">SEARCH</button>
                                <button type="submit" class="btn btn-danger">RELOAD</button>
                                <a href="<%= IServletConstant.PAGE_ADD_PROJECT_INQUIRY %>">
                                    <button type="button" class="btn btn-success">ADD INQUIRY</button>
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-content nopadding">
                            <table class="table table-bordered table-striped" style="text-transform: capitalize">
                                <thead>
                                    <tr>
                                        <th style="width: 2%">#</th>
                                        <th style="width: 2%">#</th>
                                        
                                        <th>DOMAIN</th>
                                        <th>TECHNOLOGY</th>
                                        <th>STREAM</th>
                                        <th>STUDENT NAME</th>
                                        <th>MOBILE</th>
                                        <th>EMAIL</th>
                                        <th>COLLEGE</th>
                                        <th>CITY</th>
                                        <th>REFER BY</th>
                                        <th>PROJECT BUGGED</th>
                                        <th>DETAILS</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="inqury" items="${pageScope.tblProjectInquiry}"> 
                                        <tr>
                                            <td><a href="<%=IServletConstant.PAGE_ADD_PROJECT_INQUIRY %>&inquiryId=${inqury.txtId}"><i class="icon-pencil"></i></a></td>
                                            <td><a href="<%=IServletConstant.PAGE_DELETE_PROJECT_INQUIRY %>&inquiryId=${inqury.txtId}"><i class="icon-remove"></i></a></td>
                                           
                                            <td><c:out value="${inqury.txtProjectCategory}"/> </td>
                                            <td><c:out value="${inqury.txtTechnologyName}"/> </td>
                                            <td><c:out value="${inqury.txtStream}"/> </td>
                                            <td><c:out value="${inqury.txtStudentName}"/> </td>
                                            <td><c:out value="${inqury.txtMobileNo}"/> </td>
                                            <td><c:out value="${inqury.txtEmailId}"/> </td>
                                            <td><c:out value="${inqury.txtCollegeName}"/> </td>
                                            <td><c:out value="${inqury.txtCityName}"/> </td>
                                            <td><c:out value="${inqury.txtReferBy}"/> </td>
                                            <td><c:out value="${inqury.txtProjectBuged}"/> </td>
                                            <td><c:out value="${inqury.txtDetails}"/> </td>
                                           
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
