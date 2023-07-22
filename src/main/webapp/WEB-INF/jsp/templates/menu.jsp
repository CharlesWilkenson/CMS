<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/menu.css">

</head>
<body>

<div class="wrapper">

    <nav class="navbar navbar-expand-lg ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">CMS</a>
            <!-- <ul class="navbar-nav me-auto mb-2 mb-lg-0"> </ul> -->

            <ul class="nav" style="background-color: rgb(245, 245, 245); border-bottom: rgb(230, 230, 230)">
                <li class="button-dropdown">
                    <a href="javascript:void(0)" class="dropdown-toggle">
                        <span class="icon"><i style="color: #333333" class="fa fa-user"></i></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="/api/content/management/service/views/editProfile">
                                <span class="icon"><i style="color: #333333"  class="fa fa-user"></i></span> User Profile
                            </a>
                        </li>
                        <hr>
                        <li>
                            <a href="/logout">
                                <span class="icon"><i style="color: #333333" class="fas fa-sign-out-alt"></i></span> Logout
                            </a>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</div>
<script src="/js/menu.js"> </script>
</body>
</html>
