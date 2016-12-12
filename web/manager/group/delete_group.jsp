<%@page import="com.main.pojo.TblProjectGroup"%>
<%@page import="com.main.service.GroupService"%>
<%@page import="com.main.pojo.TblProject"%>
<%@page import="com.main.service.ProjectService"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%
    String idrequest = request.getParameter("groupId");
    if (idrequest.isEmpty()) {
        out.print(idrequest);
    } else {

        TblProjectGroup tblGroup = GroupService.getTblProjectGroupById(idrequest);
        pageContext.setAttribute("tblGroup", tblGroup);
    }
%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-user"></i></span><h5 style="color: red">DELETE EXISTING Project</h5></div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../GroupServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group" style="background-color: white;">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PROJECT &nbspNAME&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" style="background-color: white" class="span12" readonly="" value="${tblGroup.txtProjectName}" name="txtProjectName"/></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">GROUP&nbsp;CODE&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" name="txtGroupCode" readonly="" value="${tblGroup.txtGroupCode}" /></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PROJECT&nbsp;AMOUNT&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtProjectAmt"  class="span12" readonly=""value="${tblGroup.txtProjectAmt}"   /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PAID&nbsp;AMOUNT&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtPaidAmt" class="span12" readonly=""   value="${tblGroup.txtPaidAmt}"/></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">BALANCE&nbsp;AMOUNT&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtBalanceAmt"  class="span12" readonly=""value="${tblGroup.txtBalanceAmt}"   /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">DATE&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtEntryDate" class="span12" readonly=""   value="${tblGroup.txtEntryDate}"/></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">GROUP&nbsp;MEMBER&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtGropuMember"  class="span12" readonly=""value="${tblGroup.txtGropuMember}"   /></div>
                                </div>
                                
                            </div>
                            <div class="control-group">
                                <center>
                                    <div class="form-actions right">
                                        <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_DELETE%>" />
                                        <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblGroup.txtId}" />
                                        
                                        <button type="submit" class="btn btn-danger">DELETE GROUP</button>
                                        <button type="reset" class="btn btn-primary">RESET</button>
                                        <a href="<%= IServletConstant.PAGE_VIEW_GROUP %>"><button type="button" class="btn btn-info">VIEW GROUP</button></a>
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