<%--<%@ page import="java.sql.ResultSet" %>--%>
<%--<%@ page import="vn.edu.nlu.fit.basang.CuoiKy.Control.*" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ</title>
    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/animate.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/bootstrap.min.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/font-awesome.min.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/main.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/main4.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/prettyPhoto.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/price-range.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/responsive.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/fa.5/fontawesome-free-5.11.1-web/css/fontawesome.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/fa.5/fontawesome-free-5.11.1-web/css/solid.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/fa.5/fontawesome-free-5.11.1-web/css/brands.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/fa.5/fontawesome-free-5.11.1-web/css/all.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/fa.5/fontawesome-free-5.11.1-web/css/regular.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/fa.5/fontawesome-free-5.11.1-web/css/svg-with-js.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/fa.5/fontawesome-free-5.11.1-web/css/v4-shims.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/trangchucss.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/bootstrap-4.3.1-dist/css2/css/animate.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/phongto.css">
    <link rel="stylesheet" href="FinalLab/TrangChu/countdown.css">
    <script src="FinalLab/TrangChu/tet.js"></script>

    <style>
        #borderimg {
            border: 5px solid #ff0000f0;
            padding: 15px;
            border-radius: 5px;
        }
        #borderimg1 {
            border: 5px solid #ff0000f0;
            padding: 15px;
            border-radius: 5px;
        }
        #myBtn {
            display: none; /* Hidden by default */
            position: fixed; /* Fixed/sticky position */
            bottom: 80px; /* Place the button at the bottom of the page */
            right: 30px; /* Place the button 30px from the right */
            z-index: 99; /* Make sure it does not overlap */
            border: none; /* Remove borders */
            outline: none; /* Remove outline */
            background-color: red; /* Set a background color */
            color: white; /* Text color */
            cursor: pointer; /* Add a mouse pointer on hover */
            padding: 15px; /* Some padding */
            border-radius: 10px; /* Rounded corners */
            font-size: 18px; /* Increase font size */
        }

        #myBtn:hover {
            background-color: #555; /* Add a dark-grey background on hover */
        }

    </style>

</head>
<body>
<%--<%@ include file="HeaderTest.jsp"%>--%>
<jsp:include page="HeaderTest.jsp"></jsp:include>
<div id="main" style=" background: url(FinalLab/TrangChu/img/bg_top.png) no-repeat top center , url(FinalLab/TrangChu/img/bg_bot.png) no-repeat bottom center #fbf6e3">
    <br>
    <div id="sec1" class="container" style="width: 1200px">
        <div class="row">
            <div class="col-md-8">
                <div id="banner" class="banner" style="height: 300px">
<%--                    <%@include file="SlideTC.jsp"%>--%>
                </div>
            </div>
            <div class="col-md-4" style="height: 300px">
                <img src="FinalLab/TrangChu/img/398-110-398x110-1.png" style="padding-bottom: 10px; height: 150px; width: 348px">
                <img src="FinalLab/TrangChu/img/iphone-11-pro-ver-2-398-110-398x110.png" style=" height: 150px; width: 348px">
            </div>
        </div>
        <br>
        <div id="borderimg" class="row" style=" padding-top: 10px; margin: 0px; margin-top: 30px; background: white">
            <div class="row">
                <div class="col-md-12">
                    <div style="margin: auto; width: 300px">
                        <img src="FinalLab/TrangChu/img/km2.png" style="position: relative;top: -39px;left: -107px;">
                    </div>
                    <div id="clockdiv">
                        <div>
                            <span class="hours"></span>
                        </div>
                        <div>
                            <span class="minutes"></span>
                        </div>
                        <div>
                            <span class="seconds"></span>
                        </div>
                    </div>
                </div>
                <div class="items" style="padding-left: 30px">
<%--                    <%--%>
<%--                        while (rs.next())--%>
<%--                        {--%>
<%--                    %>--%>
<%--                    <div class="col-sm-3 zoom" style="width: 280px; position: relative">--%>
<%--                        <a  href="<%=FullLink.fullLink("ServletChiTietSP?id=")+rs.getInt(5)%>">--%>
<%--                            <img width="220" height="220" src="<%=rs.getString(3)%>">--%>
<%--                            <h1><%=rs.getString(1)%></h1>--%>
<%--                            <div class="price">--%>
<%--                                <strong><%=(rs.getLong(2)*rs.getLong(4)/100)%> VNĐ</strong>--%>
<%--                                <span><%=rs.getInt(2)%></span>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <% } %>--%>
                    <div class="col-sm-3 zoom" style="width: 280px; position: relative">
                        <a  href="">
                            <img width="220" height="220" src="">
                            <h1></h1>
                            <div class="price">
                                <strong> VNĐ</strong>
                                <span></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div id="borderimg1" class="row" style=" padding-top: 10px; margin: 0px; margin-top: 30px; background: white">
            <div class="row">
                <div class="col-md-12">
                    <div style="margin: auto;width: 300px">
                        <img src="FinalLab/TrangChu/img/km3.png" style="/* border-radius: 20px; */position: relative;top: -39px;left: -107px;">
                        <%--                        <p style="text-align: center; font-weight: bolder; font-size: 20px; color: orangered"><i class="fas fa-star"></i> SẢN PHẨM MỚI <i class="fas fa-star"></i></p>--%>
                    </div>
                </div>
                <div class="items" style="padding-left: 30px">
<%--                    <%--%>
<%--                        while (rs2.next())--%>
<%--                        {--%>
<%--                    %>--%>
<%--                    <div class="col-sm-3 zoom" style="width: 280px; position: relative">--%>
<%--                        <a href="<%=FullLink.fullLink("ServletChiTietSP?id=")+rs2.getInt(5)%>">--%>
<%--                            <img width="220" height="220" src="<%=rs2.getString(3)%>">--%>
<%--                            <h1><%=rs2.getString(1)%></h1>--%>
<%--                            <div class="price">--%>
<%--                                <strong><%=rs2.getInt(2)%> VNĐ</strong>--%>
<%--                                &lt;%&ndash;                                <span>28.990.000₫</span>&ndash;%&gt;--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <% } %>--%>
                        <div class="col-sm-3 zoom" style="width: 280px; position: relative">
                            <a href="">
                                <img width="220" height="220" src="">
                                <h1></h1>
                                <div class="price">
                                    <strong>VNĐ</strong>
                                </div>
                            </a>
                        </div>
                </div>

            </div>
        </div>
        <br>
    </div>
    <button onclick="topFunction()" id="myBtn" title="Go to top" style="border-radius: 61px"><i class="fas fa-arrow-up"></i></button>
    <script src="FinalLab/TrangChu/countdown.js"></script>
    <script>
        mybutton = document.getElementById("myBtn");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {scrollFunction()};

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0; // For Safari
            document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
        }
    </script>


<%--    <%@ include file="FooterTC2.jsp"%>--%>
    <jsp:include page="FooterTC2.jsp"></jsp:include>

</body>

</html>