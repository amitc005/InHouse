
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblState"%>
<%@page import="com.main.service.StateService"%>
<%@page import="com.main.pojo.TblDistrict"%>
<%@page import="com.main.service.DistrictService"%>
<%@page import="com.main.pojo.TblCitylist"%>
<%@page import="com.main.service.CitylistService"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.ClientService"%>
<%@page import="com.main.pojo.TblClient"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="com.main.service.SidesService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
    Object idrequest = request.getParameter("clientId");
    if (idrequest == null) {
        response.sendRedirect("../" + IServletConstant.PAGE_FAILUER);
    } else {
        TblClient tblClient = ClientService.getTblClientById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblClient", tblClient);
    }
%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-user"></i></span><h5 style="color: red">DELETE EXISTING CLIENT</h5></div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group" style="background-color: white;">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">CLIENT&nbspNAME&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" style="background-color: white" class="span12" readonly="" value="${tblClient.propriterName}"/></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">FIRM&nbspNAME&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" readonly="" value="${tblClient.firmName}" /></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">E&nbsp;MAIL&nbsp;ID&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" readonly=""value="${tblClient.emailId}"   /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE&nbspNO&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" readonly=""   value="${tblClient.mobileNo}"/></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PHONE&nbspNO&nbsp1&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" readonly=""value="${tblClient.phoneNo1}"  /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">CITY&nbspNAME&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" readonly=""  value="${tblClient.tblCitylist}"/></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">DISTRICT&nbspNAME&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" readonly=""  value="${tblClient.tblDistrict}"/></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">STATE&nbspNAME&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" readonly=""value="${tblClient.tblState}"/></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span12"  >
                                    <label class="control-label ">FULL&nbsp;ADDRESS&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" readonly=""value="${tblClient.clientAddress}"/></div>
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_DELETE%>" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblClient.clientId}" />
                                    <button type="submit" class="btn btn-danger">DELETE CLIENT</button>
                                    <button type="reset" class="btn btn-primary">RESET</button>
                                    <a href="../<%= IServletConstant.PAGE_VIEW_CLIENT%>"><button type="button" class="btn btn-info">VIEW CLIENT</button></a>
                                </div>
                            </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>