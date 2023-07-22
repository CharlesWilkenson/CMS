<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<title>CMS</title>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
</head>
<body>

<div class="card col-md-6 offset-md-3" style="margin-top: 120px">

    <div class="card">
        <div class="card-header">
            <h5 class="card-title mb-0">Register</h5>
        </div>
        <div class="card-body">
            <div class="row">
                <jsp:include page="templates/message.jsp"/>
                <div class="col-md-12">
                    <form id="formRegister">
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="form-control" id="username" name="username"
                                       placeholder="Username">
                            </div>
                            <br>
                            <div class="form-group">
                                <input type="email" class="form-control" id="email" name="email" maxlength="50"
                                       placeholder="Email">
                            </div>
                            <br>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password" name="password" maxlength="50"
                                       placeholder="Password">
                            </div>
                            <br>
                            <div class="form-group">
                                <input type="password" class="form-control" id="rePassword" name="rePassword"
                                       maxlength="50" placeholder="Re Password">
                            </div>
                            <br>
                            <div class="d-grid gap-2">
                                <button class="btn btn-success" type="submit">Register</button>
                            </div>

                            <br>
                            <div class="d-grid gap-2">
                                <a style="text-decoration: none" href="/api/content/management/service/views/loginForm"
                                   class="w3-bar-item w3-button">Click here to Login</a>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        // SUBMIT FORM
        $("#formRegister").submit(function (event) {
            // Prevent the form from submitting via the browser.
            event.preventDefault()

            //ajaxPost();
            const formData = {
                username: $("#username").val(),
                email: $("#email").val(),
                password: $("#password").val(),
                rePassword: $("#rePassword").val(),
            };

            // DO POST
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "/api/content/management/service/members/register",
                data: JSON.stringify(formData),
                dataType: 'json',
                success: function (result) {
                    successMessage (result);
                },
                error: function (error) {
                    createErrorValidationResponse(error);
                }
            });
        });
    });
    function successMessage (result){
        document.getElementById("alert-danger").style.display = "none";
        document.getElementById("alert-success").style.display = "inline";
        document.getElementById("alert-success").innerHTML = result.message;
    }

    function createErrorValidationResponse(error) {
        const obj = JSON.parse(error.responseText);

        if(error.status === 400 &&  Array.isArray(obj)){
                $.each(JSON.parse(error.responseText), function (key, value) {
                    // Add the span element, if doesn't exists, and apply the icon classes to it.
                    if (!$('input[name=' + value.fieldName + ']').next("span")[0]) {
                        let query = $('input[name=' + value.fieldName + ']');
                        query.after('<span>' + value.message + '</span>');
                        query.addClass("has-error").removeClass("has-success");
                        query.next("span").css("color", "#FF0000");
                    }
                });
        }else{
            document.getElementById("alert-success").style.display = "none";
            document.getElementById("alert-danger").style.display = "inline";
            document.getElementById("alert-danger").innerHTML = obj.message;
            console.log(obj.message)
        }

    }
</script>

</body>
</html>
