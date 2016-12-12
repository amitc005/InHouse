<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
 
<div class="container-fluid" style="border: solid 0px;">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH CLIENT FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">STUDENT NAME :</label>
                            <div class="controls">
                                <input type="text" name="client_name" id="client_name"  autofocus="" maxlength="100" class="span11"    placeholder="STUDNET NAME" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-info">SEARCH</button>
                                <button type="submit" class="btn btn-danger">RELOAD</button>
                                <a href="<%= IServletConstant.PAGE_ADD_PROJECT_INQUIRY%>">
                                    <button type="button" class="btn btn-success">ADD PROJECT INQUIRY</button>
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
                                        <th style="width: 2%">#</th>
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
                                    <c:forEach var="client" items="${pageScope.tblClients}"> 
                                        <tr>
                                            <td><a href="../<%=IServletConstant.PAGE_VIEW_ACCOUNT%>&clientId=${client.clientId}"><i class="icon-pencil"></i></a></td>
                                            <td><a href="../<%=IServletConstant.PAGE_VIEW_ACCOUNT%>&clientId=${client.clientId}"><i class="icon-remove"></i></a></td>
                                            <td><a  href="../<%=IServletConstant.PAGE_VIEW_ACCOUNT %>&clientId=${client.clientId}&mode=quotation"  title="ADD QUOTATION"><i class="icon-beer"></i></a> </td>
                                            <td><a href="../<%=IServletConstant.PAGE_VIEW_ACCOUNT%>&clientId=${client.clientId}&mode=order" title="ADD ORDER"><i class="icon-file"></i></a> </td>
                                            <td><a  href="../<%=IServletConstant.PAGE_VIEW_ACCOUNT%>&clientId=${client.clientId}" title="VIEW ACCOUNT"><i class="icon-book"></i></a> </td>
                                            <td><c:out value="${client.clientName}"/> </td>
                                            <td><c:out value="${client.firmName}"/> </td>
                                            <td><c:out value="${client.mobileNo}"/> </td>
                                            <td>1000/-</td>
                                            <td>1000/-</td>
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
