<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.servlet.IServletConstant"%>
<%
    pageContext.setAttribute("btnValue", "EDIT ORDER");
    pageContext.setAttribute("btnClass", "btn btn-info");
    pageContext.setAttribute("actionvalue", IServletConstant.ACTION_UPDATE);
%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-file"></i> </span>
                    <h5 style="text-transform: uppercase;color: green">
                        CREATE ${titleFor} FOR <i class="icon-arrow-right"></i> 
                        <!-- ${tblClient.clientName} <i class="icon-arrow-right"></i>  
                        ${tblClient.firmName} <i class="icon-arrow-right"></i> 
                        ${tblClient.mobileNo} <i class="icon-arrow-right"></i> 
                        ${tblClient.emailId} -->
                    </h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OrderServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">${titleFor} OF :</label>
                                    <div class="controls">
                                        <input type="text" name="comment" autofocus="" value="${tblOrder.comment}" maxlength="21845" class="span12"  required="" placeholder="VC / INVITATION / BOOK " />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">CARD ID :</label>
                                    <div class="controls">
                                        <input type="text" name="card_id" value="${tblOrder.tblCard}" maxlength="11" class="span12"  required="" placeholder="ART CARD / VISTING CARD" />
                                    </div>
                                </div>
                            </div> 

                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">GSM:</label>
                                    <div class="controls">
                                        <input type="text" name="gsm_id" value="${tblOrder.tblCard}" maxlength="11" class="span12"  required="" placeholder="70 GSM, 80 GSM, 250 GSM " />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PAPER ID :</label>
                                    <div class="controls">
                                        <input type="text" name="paper_id" value="${tblOrder.tblPaper}" maxlength="11" class="span12"  required="" placeholder="MATT PAPER / GLOSS PAPER" />
                                    </div>
                                </div>
                            </div> 

                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PRINTING :</label>
                                    <div class="controls">
                                        <input type="text" name="printing_id" value="${tblOrder.tblPrinting}" maxlength="11" class="span12"  required="" placeholder="S.S / F.B / MULTI" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">QTY ID :</label>
                                    <div class="controls">
                                        <input type="text" name="qty_id" value="${tblOrder.tblQty}" maxlength="11" class="span12"  required="" placeholder="1000 / 2000 / 3000 " />
                                    </div>
                                </div>
                            </div> 

                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">LAMINATION :</label>
                                    <div class="controls">
                                        <input type="text" name="lamination_id" value="${tblOrder.tblLamination}" maxlength="11" class="span12"    placeholder="GLOASS L / MATT L" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">POST-PRESS :</label>
                                    <div class="controls">
                                        <input type="text" name="postpress_id" value="${tblOrder.tblPostpress}" maxlength="11" class="span12"   placeholder="PUCHNING / CUTTING" />
                                    </div>
                                </div>
                            </div> 
                            <c:choose>
                                <c:when test="${mode=='order'}">
                                    <div class="span11">
                                        <div class="span6"  style="float: left">
                                            <label class="control-label ">PAYMENT MODE :</label>
                                            <div class="controls">
                                                <select class="span12">
                                                    <option value="1">CASH</option>
                                                    <option value="2">CHEQUE</option>
                                                    <option value="3">CREDIT</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="span6"  style="float: left">
                                            <label class="control-label ">ORDER AMT :</label>
                                            <div class="controls">
                                                <input type="text" name="postpress_id" onKeyPress="return isNumberKey(event)" value="${tblOrder.tblPostpress}" maxlength="7" class="span12"   placeholder="ORDER AMT" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span11">
                                        <div class="span6"  style="float: left">
                                            <label class="control-label ">PAID AMT :</label>
                                            <div class="controls">
                                                <input type="text" name="postpress_id"  onKeyPress="return isNumberKey(event)" value="${tblOrder.tblPostpress}" maxlength="7" class="span12"   placeholder="PAID AMT" />
                                            </div>
                                        </div>
                                        <div class="span6"  style="float: left">
                                            <label class="control-label ">BALANCE AMT :</label>
                                            <div class="controls">
                                                <input type="text" name="postpress_id" value="${tblOrder.tblPostpress}" readonly="" maxlength="7" class="span12"   placeholder="BALANCE AMT" />
                                            </div>
                                        </div>
                                    </div>
                                </c:when>    
                            </c:choose>

                            <div class="span11">
                                <div class="span12"  style="float: left">
                                    <label class="control-label ">REMARK :</label>
                                    <div class="controls">
                                        <input type="text" name="postpress_id" value="${tblOrder.tblPostpress}" maxlength="11" class="span12"   placeholder="REMARK" />
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblOrder.orderId}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_MODE%>" value="${mode}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_CLIENT_ID%>" value="${tblClient.clientId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">RESET</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_ORDER%>">
                                        <button type="button" class="btn btn-danger">VIEW ORDER</button>
                                    </a>
                                </div>
                            </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>