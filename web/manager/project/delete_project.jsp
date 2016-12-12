<%@page import="com.main.pojo.TblProject"%>
<%@page import="com.main.service.ProjectService"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%
    String idrequest = request.getParameter("projectId");
    if (idrequest.isEmpty()) {
        out.print(idrequest);
    } else {

        TblProject tblProject = ProjectService.getTblProjectlistById(idrequest.toString());
        pageContext.setAttribute("tblProject", tblProject);
    }
%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-user"></i></span><h5 style="color: red">DELETE EXISTING Project</h5></div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ProjectServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group" style="background-color: white;">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">TECHNOLOGY&nbspNAME&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" style="background-color: white" class="span12" readonly="" value="${tblProject.txtTechnologyName}" name="txtTechnologyName"/></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PROJECT&nbsp;CATEGORY&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text"  class="span12" name="txtProjectCategory" readonly="" value="${tblProject.tblTechnology.txtProjectCategory}" /></div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PROJECT&nbsp;NAME&nbsp;ID&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtProjectName"  class="span12" readonly=""value="${tblProject.txtProjectName}"   /></div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">ABSTRACT&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls"><input  type="text" name="txtAbstract" class="span12" readonly=""   value="${tblProject.txtAbstract}"/></div>
                                </div>
                            </div>
                            <div class="span11" style="clear: both "></div>
                           </div>
                            
                            <div class="control-group">
                                <center>
                                    <div class="form-actions right">
                                        <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_DELETE%>" />
                                        <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblProject.txtId}" />
                                        <input type="hidden" name="<%= IServletConstant.HIDDEN_MAPPING_ID%>" value="${tblProject.tblTechnology.txtId}" />
                                        <button type="submit" class="btn btn-danger">DELETE PROJECT</button>
                                        <button type="reset" class="btn btn-primary">RESET</button>
                                        <a href="<%= IServletConstant.PAGE_VIEW_PROJECT%>"><button type="button" class="btn btn-info">VIEW PROJECT</button></a>
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