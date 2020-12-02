<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/11/2020
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css2/css/animate.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css2/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css2/css/font-awesome.min.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css2/css/main.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css2/css/prettyPhoto.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css2/css/price-range.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css2/css/responsive.css">
    <link rel="stylesheet" href="fa.5/fontawesome-free-5.11.1-web/css/fontawesome.css">
    <link rel="stylesheet" href="fa.5/fontawesome-free-5.11.1-web/css/solid.css">
    <link rel="stylesheet" href="fa.5/fontawesome-free-5.11.1-web/css/brands.css">
    <link rel="stylesheet" href="fa.5/fontawesome-free-5.11.1-web/css/all.css">
    <link rel="stylesheet" href="fa.5/fontawesome-free-5.11.1-web/css/regular.css">
    <link rel="stylesheet" href="fa.5/fontawesome-free-5.11.1-web/css/svg-with-js.css">
    <link rel="stylesheet" href="fa.5/fontawesome-free-5.11.1-web/css/v4-shims.css">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css2/css/dangky.css">
    <script src="js/tet.js"></script>
</head>
<body>
    <%@include file="Header.jsp"%>
    <div id="form-dangky">
        <div class="contain" style=" background: url(http://localhost:63342/Demo/web/FinalLab/TrangChu/img/bg_top.png) no-repeat top center , url(http://localhost:63342/Demo/web/FinalLab/TrangChu/img/bg_bot.png) no-repeat bottom center #fbf6e3">

            <div class="welcome" style="font-weight: bolder; font-size: 50px; text-align: center; font-family: Calibri">TẠO TÀI KHOẢN KPT</div>
            <div class="form" id="form" style="margin: auto; width: 900px;height: auto;border: 1px solid #ff00005c; border-radius: 5px; background: whitesmoke">
                <div class="row">
                    <div class="col-sm-6">
                        <form action="http://localhost:8080/Demo/ServletDangKyUser" method="get">
                            <span style="font-family:Calibri;font-size: 20px; font-weight: bold; float: left; padding: 20px; margin-left: 30%">ĐĂNG KÝ</span><br>

                            <ul>
                                <li><i class="fas fa-user" style="padding-right: 5px"></i> <input type="text" id="user" name="email" placeholder="Nhập tên tài khoản hoặc Email" ></li>
                                <li><i class="fas fa-key" style="padding-right: 5px"></i> <input type="password" id="pass" name="pass" placeholder="Nhập mật khẩu"></li>
                                <li><i class="fas fa-key" style="padding-right: 5px"></i> <input type="password" id="repass" name="repass" placeholder="Nhập lại mật khẩu"></li>
<%--                                <%--%>
<%--                                    if(session.getAttribute("errDKU")!= null)--%>
<%--                                    {--%>
<%--                                        Err err = (Err) session.getAttribute("errDKU");--%>
<%--//                                String[] errMang = err.getLoi().toArray(new String[0]);--%>
<%--                                        for(String errCon:err.getLoi())--%>
<%--                                        {--%>
<%--                                %>--%>
<%--                                <p style="width: 256px;color: red;margin-left: 50px;">  <%=errCon%></p>--%>
<%--                                <%--%>
<%--                                        }--%>
<%--                                    }%>--%>
                                <button type="submit" class="submittext" id="submit">Đăng Ký</button>
                            </ul>
                        </form>
                    </div>
                    <div class="col-sm-6">
                        <div id="abc" style="padding-top: 15%; padding-left: 15%">
                            <p>Đã có tài khoản?<a href=""> Đăng nhập</a> ngay!</p>
                            <p>Hoặc đăng nhập bằng</p>
                            <a href="" id="fb"  class="img_fb"><img src="FinalLab/FormDangKy/img/fb.png" height="50" width="50"/></a>
                            <a href="" id="gg" class="img_gg"><img src="FinalLab/FormDangKy/img/gg.png" height="50" width="50"/></a>
                            <a href="" id="twi" class="img_gg"><img src="FinalLab/FormDangKy/img/twi.jpg" height="60" width="60"/></a>
                        </div>
                    </div>
                </div>
            </div>
            <br>
        </div>
    </div>



<%--    <%@include file="FooterTC.jsp"%>--%>
</body>
</html>
