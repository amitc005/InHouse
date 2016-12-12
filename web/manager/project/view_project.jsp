<%@page import="com.main.service.ProjectService"%>
<%@page import="com.main.pojo.TblProject"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
 <%

    Object projectsearch = request.getSession().getAttribute("projectsearch");
   
    if (projectsearch == null) {
        List<TblProject> tblprojects = ProjectService.getTblProjectList();
        pageContext.setAttribute("tblprojects", tblprojects);
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
                    <h5>SEARCH PROJECT FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">PROJECT NAME :</label>
                            <div class="controls">
                                <input type="text" name="client_name" id="client_name"  autofocus="" maxlength="100" class="span11"    placeholder="PROJECT NAME" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-info">SEARCH</button>
                                <button type="submit" class="btn btn-danger">RELOAD</button>
                                <a href="<%= IServletConstant.PAGE_ADD_PROJECT %>">
                                    <button type="button" class="btn btn-success">ADD PROJECT</button>
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-content nopadding" style="overflow: auto">
                            <table class="table table-bordered table-striped" style="text-transform: capitalize;">
                                <thead>
                                    <tr>
                                        <th style="width: 2%">#</th>
                                        <th style="width: 2%">#</th>
                                        <th style="width: 2%">#</th>
                                        
                                        <th>PROJECT NAME</th>
                                        <th>TECH NAME</th>
                                        <th>PROJECT CATEGORY</th>
                                        <th>ABSTRACT</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="project" items="${pageScope.tblprojects}"> 
                                        <tr>
                                            <td><a href="<%=IServletConstant.PAGE_ADD_PROJECT%>&projectId=${project.txtId}"><i class="icon-pencil"></i></a></td>
                                            <td><a href="<%=IServletConstant.PAGE_DELETE_PROJECT%>&projectId=${project.txtId}"><i class="icon-remove"></i></a></td>
                                            <td><a href="<%=IServletConstant.PAGE_VIEW_PROJECT%>&projectId=${project.txtId}" title="VIEW Project"><i class="icon-book"></i></a> </td>
                                            
                                            <td><c:out value="${project.txtProjectName}"/> </td>
                                            <td><c:out value="${project.txtTechnologyName}"/> </td>
                                            <td><c:out value="${project.tblTechnology.txtProjectCategory}"/> </td>
                                            <td><c:out value="${project.txtAbstract}"/> </td>
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
