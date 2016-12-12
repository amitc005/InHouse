package com.main.servlet;

public interface IServletConstant {

    public static final String PAGE_TITLE = "IN-HOUSE APPLICATION  | MAHAL NAGPUR";
    public static final String SERVER_URL = "http://localhost:8080/InHouse_v2/";
    public static final String LOGO_URL = "http://localhost:8080/InHouse_v2/img";

    /*
     * PAGE LEVEL SETTINGhttp://localhost:8080/InHouse_v2/
     */
    public static final String PAGE_INDEX = "";
    public static final String PAGE_SUCCESS = "";
    public static final String PAGE_FAILUER = "manager/index.jsp?requestPage=add_failure";
    public static final String PAGE_NOTFOUND = "";
    public static final String PAGE_DASHBOARD = "manager/index.jsp?requestPage=";

    public static final String PAGE_ADD_ACCOUNT = "manager/index.jsp?requestPage=add_account";
    public static final String PAGE_VIEW_ACCOUNT = "manager/index.jsp?requestPage=view_account";
    public static final String PAGE_DELETE_ACCOUNT = "manager/index.jsp?requestPage=view_account";
    
    public static final String PAGE_ADD_ALGORITHM = "index.jsp?requestPage=add_algorithm";
    public static final String PAGE_DELETE_ALGORITHM = "index.jsp?requestPage=delete_algorithm";
    public static final String PAGE_VIEW_ALGORITHM = "index.jsp?requestPage=view_algorithm";
    
    public static final String PAGE_ADD_PROJECT = "index.jsp?requestPage=add_project";
    public static final String PAGE_DELETE_PROJECT = "index.jsp?requestPage=delete_project";
    public static final String PAGE_VIEW_PROJECT = "index.jsp?requestPage=view_project";
    
    public static final String PAGE_ADD_PROJECT_INQUIRY = "index.jsp?requestPage=add_inquiry";
    public static final String PAGE_DELETE_PROJECT_INQUIRY = "index.jsp?requestPage=delete_inquiry";
    public static final String PAGE_VIEW_PROJECT_INQUIRY = "index.jsp?requestPage=view_inquiry";
    
    public static final String PAGE_ADD_GROUP = "index.jsp?requestPage=add_group";
    public static final String PAGE_DELETE_GROUP = "index.jsp?requestPage=delete_group";
    public static final String PAGE_VIEW_GROUP = "index.jsp?requestPage=view_group";
    
    public static final String PAGE_ADD_EMPLOYEE = "index.jsp?requestPage=add_employee";
    public static final String PAGE_DELETE_EMPLOYEE = "index.jsp?requestPage=delete_employee";
    public static final String PAGE_VIEW_EMPLOYEE = "index.jsp?requestPage=view_employee";
    

    /*
     * ACTION LEVEL SETTING
     */
    public static final String ACTION = "action";
    public static final String HIDDEN_ID = "updateId";
    public static final String HIDDEN_MAPPING_ID = "mappingId";
    public static final String HIDDEN_MODE = "hiddenMode";
    public static final String HIDDEN_CLIENT_ID = "clientId";
    public static final String ACTION_LOGIN = "loginaction";
    public static final String ACTION_RECOVER = "recoveraction";
    public static final String ACTION_ADD = "addaction";
    public static final String ACTION_UPDATE = "updateaction";
    public static final String ACTION_DELETE = "deleteaction";
    public static final String ACTION_VIEW = "viewaction";
    public static final String ACTION_AUTOCOMPLET = "autocompletaction";
    public static final String ACTION_SEARCH = "search";

    /*
     * ARRIBUTE LEVEL SETTING
     */
    public static final String ATTRIBUTE_USER_EMAIL = "useremailid";
    public static final String ATTRIBUTE_ADMIN_EMAIL = "adminemailid";
    public static final String ATTRIBUTE_MANAGER_EMAIL = "manageremailid";

    /*
     * MESSAGE LEVEL SETTING
     */
    public static final String MESSAGE = "message";
    public static final String MESSAGE_SUCCESS = "Operation Done!!!";
    public static final String MESSAGE_FAIL = "Operation Fail!!!";
    public static final String MESSAGE_EXCEPTION = "exception";

    /*
     * PROGRESS STATUS
     */
    public static final String NEW = "NEW";
    public static final String ACCEPTED = "ACCEPTED";
    public static final String INPROGRESS = "INPROGRESS";
    public static final String DONE = "DONE";
    public static final String REJECTED = "REJECTED";
    public static final String DELIVERED = "DELIVERED";
}
