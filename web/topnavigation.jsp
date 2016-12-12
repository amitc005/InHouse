<%@page import="com.main.servlet.IServletConstant"%>
<ul class="nav">
    <li  class="dropdown" id="profile-messages" >
        <a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle" style="color: white">
            <i class="icon icon-user"></i>  
            <span class="text">WELCOME, <%out.println("IN-HOUSE");%></span>
            <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
            <li><a href="../<%= IServletConstant.PAGE_DASHBOARD%>"><i class="icon-user"></i>MY PROFILE</a></li>
            <li class="divider"></li>
            <li><a href="../<%= IServletConstant.PAGE_DASHBOARD%>"><i class="icon-check"></i>MY TASKS</a></li>
        </ul>
    </li>
    <li class="">
        <a title="LOG OUT" href="logout.jsp">
            <i class="icon icon-share-alt"></i> 
            <span class="text">LOGOUT</span>
        </a>
    </li>
</ul>