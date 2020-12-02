<%@ page import="vn.edu.nlu.fit.nhattruong.CuoiKy.Control.FullLink" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Slide</title>
    <link rel="stylesheet" href="FinalLab/TrangChu/min2.css">
    <%--    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/bootstrap.min.css">--%>
    <script src="FinalLab/TrangChu/ajax/jquery.min.js"></script>
    <script src="FinalLab/TrangChu/ajax/popper.min.js"></script>
    <script src="FinalLab/TrangChu/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
</head>
<body>




<div id="demo" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
        <li data-target="#demo" data-slide-to="4"></li>
    </ul>
    <div class="carousel-inner" >
        <div class="carousel-item active"style="height: 300px">
            <img src="http://localhost:63342/Demo/src/vn/edu/nlu/fit/nhattruong/CuoiKy/img/1.png" height="300" width="750"/>
        </div>
        <div class="carousel-item" style="height: 300px">
            <img src="http://localhost:63342/Demo/src/vn/edu/nlu/fit/nhattruong/CuoiKy/img/2.png" height="300" width="750"/>
        </div>
        <div class="carousel-item" style="height: 300px" >
            <img src="http://localhost:63342/Demo/src/vn/edu/nlu/fit/nhattruong/CuoiKy/img/3.png" height="433" width="750"/>
        </div>
        <div class="carousel-item" style="height: 300px" >
            <img src="http://localhost:63342/Demo/src/vn/edu/nlu/fit/nhattruong/CuoiKy/img/4.png" height="300" width="750"/>
        </div>
        <div class="carousel-item" style="height: 300px" >
            <img src="http://localhost:63342/Demo/src/vn/edu/nlu/fit/nhattruong/CuoiKy/img/5.png" height="300" width="780"/>
        </div>
    </div>
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>



</body>
</html>