<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<title>CMS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
</head>
<body>

<jsp:include page="templates/menu.jsp"/>
<jsp:include page="templates/sidebar.jsp"/>

<br>
<div class="cms-container" style="margin-left:270px">
    <h2>View Content</h2>
    <hr>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title mb-0">Content Forms Elements</h5>
        </div>
        <div class="card-body">

            <div class="row">
                <div class="col-md-12">
                    <div class="form-row">
                        <table class="table table-bordered" id="content">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Title</th>
                                <th scope="col">Brief</th>
                                <th scope="col">Created Date</th>
                            </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script src="/js/content.js"> </script>

</body>
</html>
