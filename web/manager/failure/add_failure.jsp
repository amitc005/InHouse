<%@page import="com.main.servlet.IServletConstant"%>
<%
    Object failuerMessage = request.getSession().getAttribute(IServletConstant.MESSAGE_FAIL);
    Object failuerTrace = request.getSession().getAttribute(IServletConstant.MESSAGE_EXCEPTION);
    request.getSession().setAttribute(IServletConstant.MESSAGE_EXCEPTION, "");
%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
                    <h5>Error 500</h5>
                </div>
                <div class="widget-content">
                    <div class="error_ex">
                        <h1>500</h1>
                        <h3>Something is wrong here. Method not allowed!</h3>
                        <p>Access to this page is forbidden</p>
                    </div>
                    <div class="control-group">
                        <center>
                            <div class="form-actions right">
                                <a href="../<%=IServletConstant.PAGE_VIEW_CLIENT %>"><button type="button" class="btn btn-info">VIEW CLIENT</button></a>
                                <a href="../<%=IServletConstant.PAGE_VIEW_QUOTATION%>"><button type="button" class="btn btn-success">VIEW QUOTATION</button></a>
                                <a href="../<%=IServletConstant.PAGE_VIEW_ORDER%>"><button type="button" class="btn btn-warning">VIEW ORDER</button></a>
                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>