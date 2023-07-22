<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/sideBar.css">
</head>

<body>
<div class="wrapper">
<div class="sidebar ">

    <ul style="padding-left: 0%;">
        <li>
            <div class="input-group my-1 col-6 mx-auto" style="padding-left:3%; padding-right:6%;">
                <input class="form-control py-1 border-left-0 border-right-0 rounded-1" type="search"
                       placeholder="Search" id="example-search-input">
                <span class="input-group-append">
                            <button class="btn btn-outline-primary border border-left-0 border-right-0 rounded-0"
                                    type="button">
                                <i style="color: #333333"  class="fas fa-search"></i>
                            </button>
                        </span>
            </div>
        </li>

        <li> <a href="#">  </a> </li>
        <li>
            <a href="/api/content/management/service/views/viewContent">
                <span class="icon"><i class="fa fa-table"></i></span>
                <span class="item">View contents</span>
            </a>
        </li>
        <li>
            <a href="/api/content/management/service/views/addContent">
                <span class="icon"><i class="fas fa-edit"></i></span>
                <span class="item">Form content</span>
            </a>
        </li>

    </ul>
</div>
</div>
<%--<div class="w3-sidebar w3-bar-block w3-light-grey w3-card" style="width:250px;">
  <br>
  <form class="d-flex">
    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success" type="submit">Search</button>
  </form>
  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
    <li><a class="dropdown-item" href="#">Action</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Something else here</a></li>
  </ul>

  <li><hr class="dropdown-divider"></li>
  <a href="/api/content/management/service/views/viewContent" class="w3-bar-item w3-button">View contents</a>
  <hr class="dropdown-divider">
  <a href="/api/content/management/service/views/addContent" class="w3-bar-item w3-button">Form Content</a>
  <hr class="dropdown-divider">
</div>--%>


<%--<script>
function myAccFunc() {
  var x = document.getElementById("demoAcc");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-green";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-green", "");
  }
}

function myDropFunc() {
  var x = document.getElementById("demoDrop");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-green";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-green", "");
  }
}
</script>--%>

</body>
</html>
