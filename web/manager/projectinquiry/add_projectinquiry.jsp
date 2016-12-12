
<%@page import="com.main.servlet.IServletConstant" %>

<%
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        pageContext.setAttribute("btnValue", "Edit");
        pageContext.setAttribute("btnClass", "btn btn-info");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_UPDATE);
        pageContext.setAttribute("headerTitle", "UPDATE PROJECT ENQUIRY");
    } else {
        pageContext.setAttribute("btnValue", "Save");
        pageContext.setAttribute("btnClass", "btn btn-success");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_ADD);
        pageContext.setAttribute("headerTitle", "ADD PROJECT ENQUIRY");
    }
%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-user"></i></span><h5 style="color: green">${headerTitle}</h5></div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group" style="background-color: white;">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">DOMAIN&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <select class="span12" style="text-transform: uppercase" autofocus="" name="txtDomain" id="txtDomain">
                                            <option value="-1"> -- PLEASE SELECT --</option>
                                            <option value="055c4fc6dcf237abc5aad8c49863914c">WIRELESS SENSOR NETWORK</option>
                                            <option value="099c4fc6dcf237abc5saa8c49863914c">NOT UPDATED</option>
                                            <option value="140bb476a2cc8b74a1f3871494d5050e">DATA MINING</option>
                                            <option value="2331586903a717e83bb289215a3aaadd">DIGITAL SIGNAL PROCESSING</option>
                                            <option value="2953da39dc8292fb5eddb5267d756929">ANDRIOD</option>
                                            <option value="3a92a44f7288c5520ce7c7c80ff1eb0e">DIGITAL COMMUNICATIONS</option>
                                            <option value="3e2a4f7a92fcf4f13d6fe184d9506fec">IMAGE PROCESSING</option>
                                            <option value="3f9f7b8badaa71bd066bfc91b14e9707">CLOUD COMPUTING</option>
                                            <option value="42f4aec3973d91398e321465500042da">KNOWLEDGE AND DATA ENGINEERING</option>
                                            <option value="619a7c2fff2b1aed2e713100772b7dfc">WEB MINING</option>
                                            <option value="65958c4962586416c2bf742068e57a0e">NETWORKING</option>
                                            <option value="6cb2bc48cf1bd6b968955f8806c87a9e">TEST CAT</option>
                                            <option value="6e9d1954714088b122b38668a85f145c">NETWORK SECURITY</option>
                                            <option value="942ff047401e1c80d88c9e64a56aab4b">STUDENT INTERNSHIP</option>
                                            <option value="b9f453d005aab5ed34d034a7db6f8384">MOBILE COMPUTING</option>
                                            <option value="bea3f1b51fa22381575da18c83d0a4f8">LIVE PROJECT</option>
                                            <option value="e546c487ef4f6e8966bfe3b2d6229982">PARALLEL AND DISTRIBUTED SYSTEMS</option>                
                                        </select>
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">TECHNOLOGY&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <select class="span12" name="txtTechnologyName" required="" id="txtTechnologyName">
                                            <option value="-1"> -- PLEASE SELECT -- </option>
                                            <option value="JAVA">JAVA</option>
                                            <option value="PHP">PHP</option>
                                            <option value="MATLAB">MATLAB</option>
                                            <option value="NS-2">NS-2</option>
                                            <option value="NS-3">NS-3</option>
                                            <option value="ANDROID">ANDROID</option>
                                            <option value="AWT">AWT</option>
                                            <option value="SWING">SWING</option>
                                            <option value="JSP">JSP</option>
                                            <option value="HTML">HTML</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">STREAM&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <select class="span12" name="txtStream" required="" id="txtStream">
                                            <option value="-1"> -- PLEASE SELECT -- </option>
                                            <option value="MTECH">MTECH</option>
                                            <option value="BTECH">BTECH</option>
                                            <option value="PLOY">PLOY</option>
                                            <option value="MCA">MCA</option>
                                            <option value="BCA">BCA</option>
                                            <option value="OTHER">OTHER</option>
                                            <option value="CLIENT">CLIENT</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">STUDENT&nbsp;NAME&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <input type="text" name="student_name" value="${tblClient.mobileNo}" maxlength="10" minlength="10" class="span12"  required="" placeholder="STUDENT NAME" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE&nbsp;NO&nbsp;&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <input type="text" name="phone_no_1"  onKeyPress="return isNumberKey(event)" value="${tblClient.phoneNo1}" maxlength="10" required="" minlength="8"  class="span12"   placeholder="MOBILE NO" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">EMAIL&nbsp;ID&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <input type="email" name="email" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8"  class="span12"   placeholder="EMAIL" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">COLLEGE&nbsp;NAME&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <input type="text" name="college_name" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8"  class="span12"   placeholder="COLLEGE" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">CITY&nbsp;NAME&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <input type="text" name="city_name" value="${tblClient.phoneNo1}" maxlength="20" required="" minlength="8"  class="span12"   placeholder="CITY" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  >
                                    <label class="control-label ">REFER&nbsp;BY&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <select class="span12" name="txtByRefre" required="" id="txtByRefre">
                                            <option value="-1"> -- PLEASE SELECT -- </option>
                                            <option value="EEW">EEW</option>
                                            <option value="FRIEND">FRIEND</option>
                                            <option value="WEBSITE">WEB SITE</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="span6"  >
                                    <label class="control-label ">REFER&nbsp;NAME&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <input type="text" name="refer_by" value="${tblClient.clientAddress}" maxlength="30" class="span12"  required="" placeholder="REFER BY" />
                                    </div>
                                </div>
                            </div>
                            <div class="span12">
                                <div class="span11"  >
                                    <label class="control-label ">PROJECT&nbsp;REMARK&nbsp;:&nbsp;</label>
                                    <div class="controls">
                                        <textarea name="abstract" style="height: 80px;"   maxlength="1000" required="" minlength="8"  class="span12"   placeholder="ABSTRACT" ></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="span11" style="clear: both "></div>
                        </div>

                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblClient.clientId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">RESET</button>
                                    <a href="<%= IServletConstant.PAGE_VIEW_PROJECT%>"><button type="button" class="btn btn-info">VIEW PROJECT</button></a>
                                    <a href="<%= IServletConstant.PAGE_VIEW_PROJECT_INQUIRY%>"><button type="button" class="btn btn-info">VIEW PROJECT INQUIRY</button></a>
                                </div>
                            </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>