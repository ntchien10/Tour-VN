<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title><decorator:title /></title>
    <link href="/resources/css/style_web.css" rel="stylesheet" type="text/css" />
    <link href="/resources/css/style_common.css" rel="stylesheet" type="text/css" />
    <link href="/resources/css/style_table.css" rel="stylesheet" type="text/css" />
    <link href="/resources/css/nav_menu.css" rel="stylesheet" type="text/css" />
    <link href="/resources/css/message.css" rel="stylesheet" type="text/css" />
    <link href="/resources/js/jquery/jquery-ui-1.8.23.custom.css" rel="stylesheet">
    <script src="/resources/js/jquery/jquery-1.8.2.js" type="text/javascript"></script>
    <script src="/resources/js/jquery/jquery-ui.min-1.8.9.js" type="text/javascript"></script>
</head>
<body>
<div id="header">
    <%@ include file="/includes/header.jsp"%>
</div>
<div id="menu">
    <%@ include file="/includes/menu-web.jsp"%>
</div>
<div id="content" class="clearfix">
    <div class="body-content">
        <div class="heading">
            <h1>
                <decorator:getProperty property="page.heading" />
            </h1>
        </div>
        <%@ include file="/includes/messages.jsp"%>
        <div class="separator-x"></div>
        <decorator:body />
    </div>

    <div class="clear"></div>
</div>
<div id="footer">
    <%@ include file="/includes/footer.jsp"%>
</div>
</body>
</html>