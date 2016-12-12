
<%@page import="com.main.service.GroupService"%>
<%@page import="com.main.pojo.TblProjectGroup"%>
<%@page import="com.main.servlet.IServletConstant" %>

<%
    String idrequest = request.getParameter("groupId");
    if (idrequest != null) {
        pageContext.setAttribute("btnValue", "Edit");
        pageContext.setAttribute("btnClass", "btn btn-info");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_UPDATE);
        pageContext.setAttribute("headerTitle", "UPDATE GROUP");
        TblProjectGroup tblprojectgroup = GroupService.getTblProjectGroupById(idrequest);
        pageContext.setAttribute("tblprojectgroup", tblprojectgroup);
    } else {
        pageContext.setAttribute("btnValue", "Save");
        pageContext.setAttribute("btnClass", "btn btn-success");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_ADD);
        pageContext.setAttribute("headerTitle", "ADD GROUP");
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
                                <div class="span12" style="float: left">
                                    <label class="control-label ">PROJECT&nbsp;NAME&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input class="span12" type="text" name="txtProjectName" value="${tblprojectgroup.txtProjectName}" maxlength="30" required="" minlength="8" placeholder="PROJECT NAME" />
                                    </div>
                                </div>
                            </div>

                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">GROUP&nbsp;CODE&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input  class="span12" type="text" name="txtGroupCode" value="${tblprojectgroup.txtGroupCode}" maxlength="10" minlength="10" required="" placeholder="PROJECT NAME" />
                                    </div>
                                </div>
                                <div class="span6"   >
                                    <label class="control-label ">GROUP&nbsp;MEMBER&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <select  class="span12" name="txtGropuMember" id="txtGropuMember">
                                            <option value="-1"> -- PLEASE SELECT -- </option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                        </select>                               
                                    </div>

                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6" style="float: left">
                                    <label class="control-label ">AMOUNT&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <select class="span12" name="txtProjectAmt" required="" id="txtProjectAmt">
                                            <option value="-1"> -- PLEASE SELECT -- </option>
                                            <option value="500">500</option>
                                            <option value="1000">1000</option>
                                            <option value="1500">1500</option>
                                            <option value="2000">2000</option>
                                            <option value="2500">2500</option>
                                            <option value="3000">3000</option>
                                            <option value="3500">3500</option>
                                            <option value="4000">4000</option>
                                            <option value="4500">4500</option>
                                            <option value="5000">5000</option>
                                            <option value="5500">5500</option>
                                            <option value="6000">6000</option>
                                            <option value="6500">6500</option>
                                            <option value="7000">7000</option>
                                            <option value="7500">7500</option>
                                            <option value="8000">8000</option>
                                            <option value="8500">8500</option>
                                            <option value="9000">9000</option>
                                            <option value="9500">9500</option>
                                            <option value="10000">10000</option>
                                            <option value="10500">10500</option>
                                            <option value="11000">11000</option>
                                            <option value="11500">11500</option>
                                            <option value="12000">12000</option>
                                            <option value="12500">12500</option>
                                            <option value="13000">13000</option>
                                            <option value="13500">13500</option>
                                            <option value="14000">14000</option>
                                            <option value="14500">14500</option>
                                            <option value="15000">15000</option>
                                            <option value="15500">15500</option>
                                            <option value="16000">16000</option>
                                            <option value="16500">16500</option>
                                            <option value="17000">17000</option>
                                            <option value="16500">16500</option>
                                            <option value="17000">17000</option>
                                            <option value="17500">17500</option>
                                            <option value="18000">18000</option><option value="18500">18500</option><option value="19000">19000</option><option value="19500">19500</option><option value="20000">20000</option><option value="20500">20500</option><option value="21000">21000</option><option value="21500">21500</option><option value="22000">22000</option><option value="22500">22500</option><option value="23000">23000</option><option value="23500">23500</option><option value="24000">24000</option><option value="24500">24500</option><option value="25000">25000</option></select>
                                    </div>
                                </div>
                                <div class="span6" style="float: left">
                                    <label class="control-label ">PAID&nbsp;AMOUT&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input class="span12" type="text" name="txtPaidAmt"  onKeyPress="return isNumberKey(event)" value="${tblprojectgroup.txtPaidAmt}" maxlength="30" required="" minlength="8" placeholder="PROJECT COST" />
                                    </div>
                                </div>    
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">BALANCE&nbsp;AMOUNT&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input class="span12" type="text" name="txtBalanceAmt" required="" value="${tblprojectgroup.txtBalanceAmt}" maxlength="30" required="" minlength="8" placeholder="BALANCE AMOUNT"/>
                                    </div> 
                                </div>  
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">DELIVERY&nbsp;DATE&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input class="span12 datepicker" type="text" name="txtEntryDate" required="" value="${tblprojectgroup.txtEntryDate}" maxlength="30" required="" minlength="8" placeholder=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">ACTIVE&nbsp;&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="checkbox" name="isActive"/>
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">DELETED&nbsp;&nbsp;&nbsp;:</label>
                                    <div class="controls">
                                        <input type="checkbox" name="isDeleted"/>
                                    </div>
                                </div>
                            </div>

                            <div class="span11" style="clear: both "></div>
                        </div>

                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblprojectgroup.txtId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">RESET</button>
                                    <a href="<%= IServletConstant.PAGE_VIEW_GROUP%>"><button type="button" class="btn btn-info">VIEW GROUP</button></a>
                                </div>
                            </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>