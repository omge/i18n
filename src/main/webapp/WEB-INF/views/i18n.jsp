<%--
  Created by IntelliJ IDEA.
  User: WGS
  Date: 2017/1/1
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <script type="text/javascript" src="scripts/jquery-1.7.2.js"></script>
    <script src="//cdn.bootcss.com/URI.js/1.18.3/URI.min.js"></script>
</head>
<script>
    $(document).ready(function(){
        $(".i18n-choose").click(function () {
            var uri = new URI();
            uri.setSearch("locale",$(this).attr("data-language"));
            location.href = uri.toString();
        });
    });

</script>

<style type="text/css">
    .i18n-choose {
        cursor: pointer;
    }
    .i18n-choose hover{
        text-decoration: underline;
    }
</style>


<body>

    <h2>I18N  PAGE</h2>
    <br>
    <a>
        <span class="i18n-choose" data-language="zh_CN">中文</span>
        &nbsp; | &nbsp;
        <span class="i18n-choose" data-language="en_US">English</span>
    </a>
    <br><br>
    show:
    <br>
    <table class="table table-striped" border="1" cellspacing="0" cellpadding="10">

        <tr >
            <td><fmt:message key="i18n.username"></fmt:message></td>
        </tr>
        <tr>
            <td><fmt:message key="i18n.password"></fmt:message></td>
        </tr>
    </table>


</body>
</html>
