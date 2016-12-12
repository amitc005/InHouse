
<%@page import="com.main.servlet.IServletConstant"%>
<%
    Object requestActivePage = request.getParameter("requestPage");
    String requestActive = "";
    try {
        String string[] = requestActivePage.toString().split("_");
        requestActive = string[1];
    } catch (Exception e) {
        requestActive = "dashboard";
    }
%>

<ul>
    <li class="<%=requestActive.equals("dashboard") ? "active" : ""%>"><a href="../<%=IServletConstant.PAGE_DASHBOARD %>"><i class="icon icon-home"></i> <span>DASHBOARD</span></a> </li>
    <li class="<%=requestActive.equals("employee") ? "active" : ""%>"> <a href="<%=IServletConstant.PAGE_ADD_EMPLOYEE%>"><i class="icon icon-eye-open"></i> <span>MANAGE EMPLOYEE</span></a></li>
    <li class="<%=requestActive.equals("projectinquiry") ? "active" : ""%>"> <a href="<%=IServletConstant.PAGE_ADD_PROJECT_INQUIRY %>"><i class="icon icon-book"></i> <span>MANAGE INQUIRY</span></a></li>
    <li class="<%=requestActive.equals("project") ? "active" : ""%>"> <a href="<%=IServletConstant.PAGE_ADD_PROJECT%>"><i class="icon icon-paper-clip"></i> <span>MANAGE PROJECT</span></a> </li>
    <li class="<%=requestActive.equals("group") ? "active" : ""%>"><a href="<%=IServletConstant.PAGE_ADD_GROUP%>"><i class="icon icon-group"></i> <span>MANAGE GROUP</span></a></li>
    

</ul>