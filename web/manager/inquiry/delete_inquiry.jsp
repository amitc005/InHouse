<%@page import="com.main.pojo.TblProjectInquiry"%>
<%@page import="com.main.service.ProjectInquiryService"%>
<%@page import="com.main.pojo.TblProject"%>
<%@page import="com.main.service.ProjectService"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%
    String idrequest = request.getParameter("inquiryId");
    if (idrequest.isEmpty()) {
        out.print(idrequest);
    } else {

        TblProjectInquiry tblProjectInquiry= ProjectInquiryService.getTblProjectInquirylistById(idrequest);
        pageContext.setAttribute("tblProjectInquiry", tblProjectInquiry);
    }
%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-user"></i></span><h5 style="color: red">DELETE EXISTING INQUIRY</h5></div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../InquiryServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group" style="background-color: white;">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">DOMAIN&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" style="background-color: white" class="span12" readonly="" value="${tblProjectInquiry.txtProjectCategory}" name="txtProjectCategory"/></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">TECHNOLOGY&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" name="txtTechnologyName" readonly="" value="${tblProjectInquiry.txtTechnologyName}" /></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">STREAM&nbsp;&nbsp;ID&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtStream"  class="span12" readonly=""value="${tblProjectInquiry.txtStream}"   /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">STUDENT&nbsp;NAME&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtStudentName" class="span12" readonly=""   value="${tblProjectInquiry.txtStudentName}"/></div>
                                </div>
                            </div>
                             <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE&nbsp;&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtMobileNo"  class="span12" readonly=""value="${tblProjectInquiry.txtMobileNo}"   /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">EMAIL&nbsp;ID&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtEmailId" class="span12" readonly=""   value="${tblProjectInquiry.txtEmailId}"/></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE&nbsp;&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtCollegeName"  class="span12" readonly=""value="${tblProjectInquiry.txtCollegeName}"   /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">EMAIL&nbsp;ID&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtCityName" class="span12" readonly=""   value="${tblProjectInquiry.txtCityName}"/></div>
                                </div>
                            </div>
                             <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE&nbsp;&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtReferBy"  class="span12" readonly=""value="${tblProjectInquiry.txtReferBy}"   /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">EMAIL&nbsp;ID&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtProjectBuged" class="span12" readonly=""   value="${tblProjectInquiry.txtProjectBuged}"/></div>
                                </div>
                            </div>
                             <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE&nbsp;&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtDetails"  class="span12" readonly=""value="${tblProjectInquiry.txtDetails}"   /></div>
                                </div>
                            </div>
                            <div class="control-group">
                                <center>
                                    <div class="form-actions right">
                                        <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_DELETE%>" />
                                        <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblProjectInquiry.txtId}" />
                                        
                                        <button type="submit" class="btn btn-danger">DELETE INQUIRY</button>
                                        <button type="reset" class="btn btn-primary">RESET</button>
                                        <a href="<%= IServletConstant.PAGE_VIEW_PROJECT_INQUIRY %>"><button type="button" class="btn btn-info">VIEW INQUIRY</button></a>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>