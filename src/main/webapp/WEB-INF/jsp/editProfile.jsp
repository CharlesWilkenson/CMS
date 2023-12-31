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
    <div class="row">
        <jsp:include page="templates/message.jsp"/>
    </div>
    <h3>Edit profile</h3>
    <hr>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title mb-0">Profile form element</h5>
        </div>
        <div class="card-body">

            <div class="row">

                <div class="col-md-12">
                    <div class="form-row col-9">
                        <form id="profileForm">
                            <div class="form-group">
                                <label for="firstname">First Name </label>
                                <input type="text" class="form-control" id="firstname" name="firstname"
                                       placeholder="Enter the firstname">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="lastname">Last Name</label>
                                <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Enter the lastname">
                            </div>

                            <br>
                            <div class="form-group">
                                <label>Email</label>
                                <br>
                                <h6 id="email"> hfffff@gmail.com</h6>

                            </div>

                            <br>
                            <div class="form-group">
                                <label for="phone">Phone </label>
                                <input type="text" class="form-control" id="phone" name="phone"
                                       placeholder="Enter your phone number">
                            </div>

                            <br>
                            <div class="form-group">
                                <label for="description">Description </label>
                                <textarea class="form-control" id="description" rows="2" name="description"></textarea>
                            </div>

                            <br>
                            <button type="submit" class="btn btn-outline-secondary">Submit Button</button>
                            <button id="btnReset" type="reset"  class="btn btn-outline-secondary">Reset Button</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/js/validationError.js"> </script>
<script src="/js/member.js"> </script>
<script src="/js/messages.js"> </script>

<script>
    $(document).ready(function () {
        $.ajax({
            type: "GET",
            url: "/api/content/management/service/members/view-profile",
            contentType: "application/json",
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (response) {
                $("#firstname").val(response.data.firstname);
                $("#lastname").val(response.data.lastname);
                $("#phone").val(response.data.phone);
                $("#description").val(response.data.description);
                document.getElementById("email").innerHTML = response.data.email;
            },
            error: function (e) {
                //  alert("ERROR: " + e);
                console.log("ERROR: ", e.responseText);
            }
        });
    });
</script>

</body>
</html>
