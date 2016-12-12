<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-book"></i> </span>
                    <h5>SEARCH CLIENT'S ORDER</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OrderServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CLIENT NAME :</label>
                            <div class="controls">
                                <select class="span11" name="client_id" id="clientId">
                                    <c:forEach var="client" items="${pageScope.Client}">
                                        <option value="${client.clientId}">${client.clientName}</option>
                                    </c:forEach>  
                                </select>
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-info">SEARCH</button>
                                <button type="button" class="btn btn-success" onclick="addOrder('../<%= IServletConstant.PAGE_ADD_ORDER%>')">
                                    CREATE ORDER
                                </button>
                            </div>
                        </div>
                    </form>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-content nopadding">
                                <table class="table table-bordered table-striped" style="border-top: solid 1px rgb(220,220,220);text-transform: capitalize">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th></th>
                                            <th>CLIENT NAME</th>
                                            <th>ORDER OF</th>
                                            <th>GSM</th>
                                            <th>LAMIN</th>
                                            <th>PRINTING</th>
                                            <th>QTY</th>
                                            <th>SIDE</th>
                                            <th>PAPER</th>
                                            <th>DATE</th>
                                            <th>STATUS</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="order" items="${pageScope.tblOrder}"> 
                                            <tr>
                                                <td><a title="Eidt Order" href="../<%=IServletConstant.PAGE_ADD_ORDER%>&id=${order.orderId}"><i class="icon-pencil"></i></a></td>
                                                <td><a title="Delete Order" href="../<%=IServletConstant.PAGE_ADD_ORDER%>&id=${order.orderId}"><i class="icon-remove"></i></a></td>
                                                <td>${order.tblClient.clientName}</td>
                                                <td>${order.tblCard.cardName}</td>
                                                <td>${order.tblGsm.gsmName}</td>
                                                <td>${order.tblLamination.laminationName}</td>
                                                <td>${order.tblPrinting.printingName}</td>
                                                <td>${order.tblQty.qtyName}</td>
                                                <td>${order.tblSides.sideName}</td>
                                                <td>${order.tblPaper.paperName}</td>
                                                <td> </td>
                                                <td>
                                                    <a href="#">
                                                        <c:choose>
                                                            <c:when test="${order.orderstatus eq 'done' }">
                                                                <span style="font-weight: normal" class="badge badge-success"><c:out value="${order.orderstatus}"/></span>
                                                            </c:when>
                                                            <c:when test="${order.orderstatus eq 'in-progres' }">
                                                                <span style="font-weight: normal"  class="badge badge-warning"><c:out value="${order.orderstatus}"/></span>
                                                            </c:when>
                                                            <c:when test="${order.orderstatus eq 'rejected' }">
                                                                <span  style="font-weight: normal"  class="badge badge-danger"><c:out value="${order.orderstatus}"/></span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span  style="font-weight: normal"  class="badge badge-important"><c:out value="${order.orderstatus}"/></span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </a>    
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function addOrder(url) {
        var clientId = document.getElementById("clientId").value;
        window.location.href = url + "&clientId=" + clientId;
    }
</script>