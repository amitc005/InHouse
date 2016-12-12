<%@page import="com.main.service.GroupService"%>
<%@page import="com.main.pojo.TblProjectGroup"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>

 <%

    Object projectsearch = request.getSession().getAttribute("groupsearch");
   
    if (projectsearch == null) {
        List<TblProjectGroup> tblprojects = GroupService.getTblProjectGroupList();
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
                    <h5>SEARCH GROUP FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">GROUP NAME :</label>
                            <div class="controls">
                                <input type="text" name="client_name" id="client_name"  autofocus="" maxlength="100" class="span11"    placeholder="GROUP NAME" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-info">SEARCH</button>
                                <button type="submit" class="btn btn-danger">RELOAD</button>
                                <a href="<%= IServletConstant.PAGE_ADD_PROJECT %>">
                                    <button type="button" class="btn btn-success">ADD GROUP</button>
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
                                       
                                        <th>PROJECT NAME</th>
                                        <th>GROUP CODE</th>
                                        <th>GROUP MEMBER</th>
                                        <th>PROJECT AMOUNT</th>
                                        <th>PAID AMOUNT</th>
                                        <th>BALANCE AMT</th>
                                        <th>DVL DATE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="group" items="${pageScope.tblprojects}"> 
                                        <tr>
                                            <td><a href="<%=IServletConstant.PAGE_ADD_GROUP %>&groupId=${group.txtId}"><i class="icon-pencil"></i></a></td>
                                            <td><a href="<%=IServletConstant.PAGE_DELETE_GROUP %>&groupId=${group.txtId}"><i class="icon-remove"></i></a></td>
                                           
                                            <td><c:out value="${group.txtProjectName}"/> </td>
                                            <td><c:out value="${group.txtGroupCode}"/> </td>
                                            <td><c:out value="${group.txtGropuMember}"/> </td>
                                            <td><c:out value="${group.txtProjectAmt}"/> </td>
                                            <td><c:out value="${group.txtPaidAmt}"/> </td>
                                            <td><c:out value="${group.txtBalanceAmt}"/> </td>
                                            <td><c:out value="${group.txtEntryDate}"/> </td>
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
