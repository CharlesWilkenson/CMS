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
    <h2>Add Content</h2>
    <hr>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title mb-0">Content Forms Elements</h5>
        </div>
        <div class="card-body">

            <div class="row">
                <div id="postResultDiv" class="row">

                    <div class="col-md-12">
                        <div class="form-row col-9">
                            <form id="contentForm">
                                <div class="form-group">
                                    <label for="title" >Title </label>
                                    <input type="text" class="form-control" id="title" name="title" aria-describedby="emailHelp"
                                           placeholder="Enter the title">
                                </div>

                                <br>
                                <div class="form-group">
                                    <label for="brief">Brief </label>
                                    <textarea type="text" class="form-control" id="brief" name="brief"></textarea>
                                </div>

                                <br>
                                <div class="form-group">
                                    <label for="content">Content </label>
                                    <textarea class="form-control" id="content" name="content" rows="3"></textarea>
                                </div>

                                <br>
                                <button id="btAdd" type="submit" class="btn btn-outline-secondary">Submit button</button>
                                <button id="btnReset"  type="reset" class="btn btn-outline-secondary">Reset button</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="/js/validationError.js"> </script>
<script src="/js/content.js"> </script>
<script src="/js/messages.js"> </script>

</body>
</html>
