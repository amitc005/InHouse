
<%@page import="com.main.servlet.IServletConstant" %>

<%
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        pageContext.setAttribute("btnValue", "Edit");
        pageContext.setAttribute("btnClass", "btn btn-info");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_UPDATE);
        pageContext.setAttribute("headerTitle", "UPDATE EMPLOYEE");
    } else {
        pageContext.setAttribute("btnValue", "Save");
        pageContext.setAttribute("btnClass", "btn btn-success");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_ADD);
        pageContext.setAttribute("headerTitle", "ADD EMPLOYEE");
    }
%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-user"></i></span><h5 style="color: green">${headerTitle}</h5></div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../GroupServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group" style="background-color: white;">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">EMPLOYEE&nbsp;NAME&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="text" class="span12" name="txtEmpName" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8" placeholder="EMPLOYEE NAME" />
                                    </div>
                                </div>  
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">EMPLOYEE&nbsp;EMAIL&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="email" class="span12" name="txtEmpEmail" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8" placeholder="USER EMAIL" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PASSWORD&nbsp;&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="password" class="span12" name="password" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8" placeholder="PASSWORD" />
                                    </div>
                                </div>  
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">CONFIRM&nbsp;&nbsp;<br>PASSWORD&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="password" class="span12" name="confirm_password" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8" placeholder="CONFIRM PASSWORD" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PHONE&nbsp;NUMBER&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="text" class="span12" name="txtPhoneNo" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8" placeholder="FIRST NAME" />
                                    </div>
                                </div>  
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE&nbsp;NUMBER&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="text" class="span12" name="txtMobileNo" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8" placeholder="MOBILE NUMBER " />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">EMPLOYEE&nbsp;ROLE&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="email" class="span12" name="email" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8" placeholder="EMAIL ID" />
                                    </div>
                                </div>    
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">ACTIVE&nbsp;&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="checkbox" name="isActive" value="${tblClient.phoneNo1}"/>
                                    </div>
                                </div>
                            </div>
                        </div>               
                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblClient.clientId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">RESET</button>
                                    <a href="<%= IServletConstant.PAGE_VIEW_EMPLOYEE%>"><button type="button" class="btn btn-info">VIEW EMPLOYEE</button></a>
                                </div>
                            </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>