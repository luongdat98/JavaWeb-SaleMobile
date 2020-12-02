<%--<%@ page import="vn.edu.nlu.fit.basang.CuoiKy.Control.FullLink" %>--%>
<%--<%@ page import="vn.edu.nlu.fit.basang.CuoiKy.Model.UserDemo" %>--%>
<%--<%@ page import="java.sql.ResultSet" %>--%>
<%--<%@ page import="vn.edu.nlu.fit.basang.CuoiKy.Model.Cart" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Header</title>
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


</head>
<body>
<%--<% ResultSet rs9 = (ResultSet) request.getAttribute("rs9");%>--%>
<%--<% FullLink fl = new FullLink();%>--%>

<header id="header"><!--header-->
    <div class="header_top" style="height: 136px"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4" style="padding-top: 45px">

                    <div class="search_box pull-right" style="background: white;border-radius: 5px; margin-top: 5px;">

                        <input type="text" placeholder="Search " onkeyup="searchHelp(this.value)" style="background: white;border-radius: 5px; width: 300px"/>
                        <button style="background: none;border: 1px solid;height: 36px;background: #000000d9;/* border-radius: 3px; */border-radius-right: 3px;border-top-right-radius: 5px;border-bottom-right-radius: 5px;"><i class="fas fa-search" style="padding-right: 5px;color: white;"></i></button>
                        <div class="auto" id="search" style="width: 333px; position: absolute; z-index:10; background: white"></div>
                    </div>
                </div>
                <div class="col-sm-4">
<%--                    <a href="<%=fl.fullLink("ServletTrangChu")%>" style="text-align: center!important; margin-left: 40px;">--%>
<%--                        <img src="FinalLab/TrangChu/img/81569390_2814447088613630_8968811339560517632_n.png" style="width: 360px;position: relative;left: -34px;top: -14px;"/>--%>
<%--                    </a>--%>
                    <a href="#" style="text-align: center!important; margin-left: 40px;">
                        <img src="FinalLab/TrangChu/img/81569390_2814447088613630_8968811339560517632_n.png" style="width: 360px;position: relative;left: -34px;top: -14px;"/>
                    </a>
                </div>
                <div class="col-sm-4" style="padding-top: 50px">
                    <div class="row">
                        <div class="col-sm-9">
<%--                            <%--%>
<%--                                if(session.getAttribute("Su")!= null)--%>
<%--                                {--%>
<%--                                    UserDemo u = (UserDemo) session.getAttribute("Su");--%>
<%--                                    String name = u.getName();--%>
<%--                            %>--%>
                            <div class="row">
                                <div class="col-sm-12" style="padding: 0px">
                                    <div class="dropdown" >
                                        <ul class="nav navbar-nav collapse navbar-collapse" style="float: none; margin: 5px 0px 0px 50px;">
                                            <li class="dropdown" >
<%--                                                <a href="#" style="color: whitesmoke; padding-top: 5px; font-size: 20px; background: none">Xin chào: <%=name%></a>--%>
                                                <a href="#" style="color: whitesmoke; padding-top: 5px; font-size: 20px; background: none">Xin chào:</a>
                                                <ul role="menu" class="sub-menu">
                                                    <li><a href="http://localhost:8080/Demo/CapNhatThongTin.jsp">Thông Tin Tài Khoản</a></li>
                                                    <li>
<%--                                                        <a href="<%=FullLink.fullLink("ServletDangXuat")%>">Đăng xuất</a>--%>
                                                        <a href="">Đăng xuất</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

<%--                            <%--%>
<%--                            }--%>
<%--                            else--%>
<%--                            {--%>
<%--                            %>--%>
                            <div style="border: 1px solid silver; border-radius: 5px; width: 210px; margin-left: 30px;">
                                <div class="row">
                                    <div class="col-sm-6" style="padding: 0px">
                                        <button style="font-size:20px;background: none; border: none; margin: 2px 0px 2px 25px; ">
<%--                                            <a style="color: whitesmoke!important; font-size: 15px" href="<%=fl.fullLink("DangNhapUser.jsp")%>">Đăng Nhập</a>--%>
                                            <a style="color: whitesmoke!important; font-size: 15px" href="#">Đăng Nhập</a>
                                        </button>
                                    </div>
                                    <div class="col-sm-6" style="padding: 0px">
                                        <button style="font-size:20px;background: none;border: none; border-left: 1px solid silver; margin: 2px; padding-left: 15px;">
<%--                                            <a style="color: whitesmoke!important; font-size: 15px" href="<%=fl.fullLink("DangKyUser.jsp")%>">Đăng Ký</a>--%>
                                            <a style="color: whitesmoke!important; font-size: 15px" href="#">Đăng Ký</a>
                                        </button>
                                    </div>
                                </div>
                            </div>
<%--                            <% }%>--%>

                        </div>

                        <div class="col-sm-3" style="padding: 0px">
                            <div style="border: 1px solid silver;border-radius: 5px; width: 45px">
                                <div class="row">
                                    <div class="col-sm-12" style="padding: 0px">
                                        <button style="font-size:20px;background: none; border: none; margin: 2px 0px 2px 15px">
<%--                                            <a href="<%=fl.fullLink("ServletShowCart")%>">--%>
<%--                                                <i style="color: whitesmoke!important;" class="fa fa-shopping-cart"></i>--%>
<%--                                            </a>--%>
                                            <a href="#">
                                                <i style="color: whitesmoke!important;" class="fa fa-shopping-cart"></i>
                                            </a>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div style="border:1px solid silver;border-radius: 50%;width: 25px;height: 25px;position: relative;right: -33%;top: -45px; background: orangered">
<%--                                <%--%>
<%--                                    Cart c = (Cart) session.getAttribute("Cart");--%>
<%--                                    int count = c == null ? 0 : c.getSoSP();--%>
<%--                                    long tongTien = c == null ? 0000 : c.tongTien();--%>
<%--                                %>--%>
<%--                                <p style="color: white; padding: 2px 6px"><%=count%></p>--%>
                            <p style="color: white; padding: 2px 6px"></p>
                            </div>
                            <div style="width: 100px;height: 25px;position: relative;right: 6%;top: -18px;">
<%--                                <p style="padding: 2px 6px; color: whitesmoke"><%=tongTien/1000%> kVND</p>--%>
                                <p style="padding: 2px 6px; color: whitesmoke">kVND</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->
    <div class="header-bottom" ><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">

<%--                            <li><a href="<%=fl.fullLink("ServletLoaiSanPham?type=1")%>" class="pic3" style="text-align: center!important;" ><img src="FinalLab/TrangChu/img/Header/apple.png"/></a></li>--%>
<%--                            <li><a href="<%=fl.fullLink("ServletLoaiSanPham?type=2")%>" class="pic3" style="text-align: center!important; padding-top: 18px" ><img src="FinalLab/TrangChu/img/hu.png"/><input type="hidden" value="3" name="menuHeader"></a></li>--%>
<%--                            <li><a href="<%=fl.fullLink("ServletLoaiSanPham?type=3")%>" class="pic3" style="text-align: center!important;" ><img src="FinalLab/TrangChu/img/Header/samsung.png"/><input type="hidden" value="2" name="menuHeader"></a></li>--%>
<%--                            <li><a href="<%=fl.fullLink("ServletLoaiSanPham?type=4")%>" class="pic3" style="text-align: center!important;" ><img src="FinalLab/TrangChu/img/Header/oppo.png"/><input type="hidden" value="5" name="menuHeader"></a></li>--%>
<%--                            <li><a href="<%=fl.fullLink("ServletLoaiSanPham?type=5")%>" class="pic3" style="text-align: center!important;" ><img src="FinalLab/TrangChu/img/Header/xiaomi.png"/><input type="hidden" value="4" name="menuHeader"></a></li>--%>
<%--                            <li><a href="<%=fl.fullLink("ServletLoaiSanPham?type=6")%>" class="pic3" style="text-align: center!important;" ><img src="FinalLab/TrangChu/img/Header/vsmart.png"/><input type="hidden" value="6" name="menuHeader"></a></li>--%>
                            <li><a href="#" class="pic3" style="text-align: center!important;" ><img src="img/imgheader/apple.png"/></a></li>
                            <li><a href="#" class="pic3" style="text-align: center!important; padding-top: 15px" ><img src="img/imgheader/hu.png"/><input type="hidden" value="3" name="menuHeader"></a></li>
                            <li><a href="#" class="pic3" style="text-align: center!important;" ><img src="img/imgheader/samsung.png"/><input type="hidden" value="2" name="menuHeader"></a></li>
                            <li><a href="#" class="pic3" style="text-align: center!important;" ><img src="img/imgheader/oppo.png"/><input type="hidden" value="5" name="menuHeader"></a></li>
                            <li><a href="#" class="pic3" style="text-align: center!important;" ><img src="img/imgheader/xiaomi.png"/><input type="hidden" value="4" name="menuHeader"></a></li>
                            <li><a href="#" class="pic3" style="text-align: center!important;" ><img src="img/imgheader/vsmart.png"/><input type="hidden" value="6" name="menuHeader"></a></li>
                        </ul>
                    </div>
                </div>

            </div>

        </div>
    </div><!--/header-bottom-->
</header>
</body>
<%--    <script>--%>
<%--        var obj = {};--%>
<%--        var phone = [];--%>
<%--        <% while (rs9.next()) {%>--%>
<%--        obj = {--%>
<%--            name : '<%=rs9.getString(2)%>',--%>
<%--            price : '<%=rs9.getInt(3)%>',--%>
<%--            img : '<%=rs9.getString(4)%>',--%>
<%--            id : '<%=rs9.getInt(1)%>'--%>
<%--        }--%>
<%--        phone.push(obj);--%>
<%--        <% } %>--%>
<%--        var str = "";--%>
<%--        function searchHelp(x){--%>
<%--            var r = phone.filter(item => {--%>
<%--                return  item.name.indexOf(x) != -1 || item.name.toLowerCase().indexOf(x) != -1;--%>
<%--            });--%>
<%--            if( x != ""){--%>
<%--                str = mapFunc(r);--%>
<%--            }--%>
<%--            else{--%>
<%--                str = "Không tìm thấy kết quả";--%>
<%--            }--%>
<%--            document.getElementById("search").innerHTML = str;--%>
<%--        }--%>
<%--    --%>
<%--        function mapFunc(arr){--%>
<%--            let result = "";--%>
<%--            if(arr){--%>
<%--                arr.map(item => {--%>
<%--                    &lt;%&ndash;return result += '<a href="<%=FullLink.fullLink("ServletChiTietSP?id=2")%>">' + item + '</a>';&ndash;%&gt;--%>
<%--                    return result += '<a href="<%=FullLink.fullLink("ServletChiTietSP?id=")%>'+item.id+'"><div class="row"style="padding-bottom: 7px"><div class="col-md-8" style="position: relative;right: -10px;top: 5px;"><p>'+ item.name +'</p><p>Giá: '+ item.price +' VNĐ</p></div><div class = "col-md-4"><img src="'+item.img +'"style="width: 80px"></div></div></a><hr> ';--%>
<%--                });--%>
<%--            }--%>
<%--            return result;--%>
<%--        }--%>
<%--    </script>--%>
</html>