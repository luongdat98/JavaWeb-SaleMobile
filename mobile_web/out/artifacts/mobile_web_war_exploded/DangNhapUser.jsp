<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.model.Err" %>
<%@ page import="vn.edu.nlu.fit.filter.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="FinalLab/FormDangKy/bootstrap-4.3.1-dist/css2/css/animate.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/bootstrap-4.3.1-dist/css2/css/bootstrap.min.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/bootstrap-4.3.1-dist/css2/css/font-awesome.min.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/bootstrap-4.3.1-dist/css2/css/main.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/bootstrap-4.3.1-dist/css2/css/prettyPhoto.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/bootstrap-4.3.1-dist/css2/css/price-range.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/bootstrap-4.3.1-dist/css2/css/responsive.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/fa.5/fontawesome-free-5.11.1-web/css/fontawesome.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/fa.5/fontawesome-free-5.11.1-web/css/solid.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/fa.5/fontawesome-free-5.11.1-web/css/brands.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/fa.5/fontawesome-free-5.11.1-web/css/all.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/fa.5/fontawesome-free-5.11.1-web/css/regular.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/fa.5/fontawesome-free-5.11.1-web/css/svg-with-js.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/fa.5/fontawesome-free-5.11.1-web/css/v4-shims.css">
    <link rel="stylesheet" href="FinalLab/FormDangKy/bootstrap-4.3.1-dist/css2/css/dangky.css">
    <script src="FinalLab/TrangChu/tet.js"></script>

</head>
<body>
<jsp:include page="HeaderTest.jsp"></jsp:include>

<div id="form-dangky">
    <div class="contain" style=" background: url(FinalLab/TrangChu/img/bg_top.png) no-repeat top center , url(FinalLab/TrangChu/img/bg_bot.png) no-repeat bottom center #fbf6e3">

        <div class="welcome" style="font-family:Calibri;font-weight: bolder; font-size: 50px; text-align: center">Chào mừng đến KPTechnology. Đăng Nhập Ngay!</div>
        <div class="form" id="form" style="margin: auto; width: 900px; height: 350px; border: 1px solid #ff00005c; border-radius: 5px; background: whitesmoke">
            <div class="row">
                <div class="col-sm-6">
                    <form action="<%=Util.fullLink("ServletDangNhapUser")%>" method="post">
                        <span style="font-size: 20px; font-weight: bold; float: left; padding: 20px; margin-left: 30%">ĐĂNG NHẬP</span><br>
                        <ul>
                            <li><i class="fas fa-user" style="padding-right: 5px"></i> <input type="text" id="user" name="user" placeholder="Nhập tên tài khoản" ></li>
                            <li><i class="fas fa-key" style="padding-right: 5px"></i> <input type="password" id="pass" name="pass" placeholder="Nhập mật khẩu"></li>
                            <div class="row">
                                <div class="col-sm-6">
                                    <input  type="checkbox" name="tick" value="none" style="margin-left: 10px"> <label> Ghi nhớ </label>
                                </div>
                                <div class="col-sm-6">
                                    <a href="<%=Util.fullLink("QuenMatKhau.jsp")%>"> Quên mật khẩu?</a>
                                </div>
                            </div>
                            <%
                                if(session.getAttribute("errDNU")!= null)
                                {
                                    Err err = (Err) session.getAttribute("errDNU");
                                    for(String errCon:err.getLoi())
                                    {
                            %>
                            <p style="width: 256px;color: red;margin-left: 50px;">  <%=errCon%></p>
                            <%
                                    }
                                }%>

                            <button type="submit" class="submittext" id="submit">Đăng Nhập</button>
                        </ul>
                    </form>

                </div>
                <div class="col-sm-6">
                    <div id="abc" style="padding-top: 15%; padding-left: 15%">
                        <p>Chưa có tài khoản?<a href=""> Đăng ký</a> ngay!</p>
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



<%@include file="FooterTC2.jsp"%>


</body>
</html>