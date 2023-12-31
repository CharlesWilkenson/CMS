<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<title>CMS</title>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<c:set var="error" value="${error}"/>

<c:if test="${error}">
    <div class="alert alert-danger">Invalid Email or Password</div>
</c:if>

<c:set var="logout" value="${logout}"/>
<c:if test="${logout}">
    <div class="alert alert-warning">You have been logged out.</div>
</c:if>
<div class="card col-md-6 offset-md-3" style="margin-top: 120px">

    <form action="/login" method="post" role="form">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title mb-0">Login</h5>
            </div>
            <div class="card-body">

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-row">

                            <div class="input-group">
                                <input type="email" class="form-control" id="email" name="email" maxlength="50"
                                       placeholder="Email">
                            </div>

                            <br>
                            <div class="input-group">
                                <input type="password" class="form-control" name="password" id="password" maxlength="50"
                                       placeholder="password">
                            </div>

                            <br>
                            <div class="form-check">
                                <input type="checkbox" maxlength="1" name="remember-me" class="form-check-input"
                                       id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Remember me</label>
                            </div>

                            <br>
                            <div class="d-grid gap-2">
                                <button class="btn btn-success" type="submit">Login</button>
                            </div>

                            <br>
                            <div class="d-grid gap-2">
                                <a style="text-decoration: none"
                                   href="/api/content/management/service/views/registerForm"
                                   class="w3-bar-item w3-button">Click here to Register</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>

    </form>

</div>


</body>
</html>
