<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="teammates.common.util.Const" %>
<%@ page import="teammates.ui.controller.PageData"%>
<%@ page import="teammates.ui.controller.StudentCourseJoinConfirmationPageData"%>
<%
    StudentCourseJoinConfirmationPageData data = (StudentCourseJoinConfirmationPageData) request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="/favicon.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TEAMMATES - Student</title>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/stylesheets/teammatesCommon.css" type="text/css">

    <script type="text/javascript" src="/js/googleAnalytics.js"></script>
    <script type="text/javascript" src="/js/jquery-minified.js"></script>
    <script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    
    <script type="text/javascript" src="/js/student.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    
    <jsp:include page="../enableJS.jsp"></jsp:include>    
</head>

<body>
    <jsp:include page="<%=Const.ViewURIs.STUDENT_HEADER%>" />
    <div class="container-fluid theme-showcase" id="frameBodyWrapper">
        <div id="topOfPage"></div>
        <jsp:include page="<%=Const.ViewURIs.STATUS_MESSAGE%>" />
        <br>
        <div class="panel panel-primary panel-narrow">
            <div class="panel-heading">
                <h4>Confirm your Google account</h4>
            </div>
            <div class="panel-body">
                <p>
                    You are currently logged in as <span><strong><%=data.account.googleId%></strong></span>. 
                    <br>If this is not you please <a href="<%=data.logoutUrl%>">log out</a> and re-login using your own Google account.
                    <br>If this is you, please confirm below to complete your registration.
                    <br>
                </p>
                <div class="align-center">
                    <a href="<%=data.confirmUrl%>" 
                        class="btn btn-success"
                        id="button_confirm">Yes, this is my account</a>
                    <a href="<%=data.logoutUrl%>" 
                        class="btn btn-danger"
                        id="button_cancel">No, this is not my account</a>
                </div>
                
            </div>
        </div>
    </div>
    <jsp:include page="<%=Const.ViewURIs.FOOTER%>" />
</body>
</html>