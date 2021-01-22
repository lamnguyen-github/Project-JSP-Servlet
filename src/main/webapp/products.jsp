<%@ page import="com.dao.ProductDAO" %>
<%@ page import="com.dtos.ProductDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<!-- Mirrored from www.themenesia.com/themeforest/archi-light/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:03:59 GMT -->

<head>
    <jsp:useBean id="t" class="com.dao.ProductDAO" scope="request"/>
    <meta charset="utf-8">
    <title>Shop Furniture</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Minimal Bootstrap Theme">
    <meta name="keywords" content="onepage,responsive,minimal,bootstrap,theme">
    <meta name="author" content="">


    <!--[if lt IE 9]>
    <script src="js/jsp5shiv.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="stylesheet" type="text/css" href="detail/css/style.css">
    <link rel="stylesheet" type="text/css" href="detail/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="detail/css/smoothproducts.css">

    <!-- CSS Files
    ================================================== -->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/jpreloader.css" type="text/css">
    <link rel="stylesheet" href="css/animate.css" type="text/css">
    <link rel="stylesheet" href="css/plugin.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.css" type="text/css">
    <link rel="stylesheet" href="css/owl.transitions.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="demo/demo.css" type="text/css">

    <!-- custom background -->
    <link rel="stylesheet" href="css/bg.css" type="text/css">

    <!-- color scheme -->
    <link rel="stylesheet" href="css/color.css" type="text/css" id="colors">

    <!-- load fonts -->
    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.css" type="text/css">
    <link rel="stylesheet" href="fonts/elegant_font/HTML_CSS/style.css" type="text/css">
    <link rel="stylesheet" href="fonts/et-line-font/style.css" type="text/css">

    <!-- revolution slider -->
    <link rel="stylesheet" href="rs-plugin/css/settings.css" type="text/css">
    <link rel="stylesheet" href="css/rev-settings.css" type="text/css">
    <link rel="stylesheet" href="shop.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body id="homepage">


<div id="wrapper">
    <%@include file="header.jsp" %>
    <!-- header close -->

    <!-- subheader -->
    <section id="subheader" data-speed="8" data-type="background">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Sản Phẩm</h1>
                    <ul class="crumb">
                        <li><a href="index-2.jsp">Trang Chủ</a></li>
                        <li class="sep">/</li>
                        <li><a style="color: aliceblue;" href="products.jsp"> Sản Phẩm</a></li>
                        <li class="sep">/</li>
                        <li>
                            <a style="color: aliceblue;" href="pkhach.jsp">phòng khách </a>
                        </li>


                        <li class="sep">/</li>

                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- subheader close -->


    <!-- content begin -->
    <!-- content begin -->
    <div id="content" class="no-bottom no-top">
        <br><br><br><br>


        <br><br><br><br><br>


        <div class="container">
            <div class="row">
                <div id="sidebar" class="col-md-3">
                    <div class="widget widget_search">
                        <form action="SearchProduct" method="get">
                        <input   type='text' name='search' id='search' class="form-control"
                               placeholder="tìm kiếm sản phẩm">
                            <input id="index" hidden name="index" value="1">
                        <button id="btn-search" type='submit'></button>
                        </form>
                        <div class="clearfix"></div>
                    </div>
                    <div class="widget widget_category">
                        <h4>DANH MỤC SẢN PHẨM</h4>
                        <ul class="product">

                            <li><a href="<c:url value="/Products?index=1"/>">Tất cả <i class="fa fa-angle-right"
                                                                                       style="padding-top:5px ;"></i>
                            </a></li>
                            <c:forEach items="${listC}" var="d">
                                <li><a href="Category?category_name=${d.loai}">${d.loai} <i class="fa fa-angle-right"
                                                             style="padding-top:5px ;"></i> </a></li>
                            </c:forEach>
                        </ul>
                    </div>


                    <div class="widget widget_top_rated_product">
                        <h4>Các SẢN PHẨM mới NHẤT </h4>
                        <c:forEach items="${t.top5}" var="o">
                            <ul class="test">
                                <li>
                                    <a class="font_new" href="ProductDetailController?id=${o.getIdProduct()}">
                                        <div>
                                            <img src="images/products/${o.getImages().get(0)}" alt="">
                                        </div>
                                        <div class="text">
                                            <div class="name">${o.tenProduct}</div>
                                            <div class="price"> ${o.giaTien }</div>
                                            <a href="cart.jsp " data-tip="Thêm vào giỏ hàng "><i
                                                    style="color:  #FAB702;" class="fa fa-shopping-cart "></i></a>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </c:forEach>
                    </div>

                </div>

                <div class="col-md-9">
                    <div class="row">

                        <div class="row " style="padding-left: 30px;">
                            <%--                                        product--%>
                            <c:forEach items="${data}" var="d">
                                <div class="col-md-3 col-sm-6 ">
                                    <div class="product-grid ">
                                        <div class="product-image ">
                                            <a href="ProductDetailController?id=${d.getIdProduct()}">
                                                <img class="pic-1 "
                                                     src="${pageContext.request.contextPath}/images/products/${d.getImages().get(0)}">
                                                <img class="pic-2 "
                                                     src="${pageContext.request.contextPath}/images/products/${d.getImages().get(0)}">
                                            </a>
                                            <!-- <span class="product-trend-label ">Mới</span> -->

                                            <ul class="social ">
                                                <li>
                                                        <%--                                                    <a href="${servlet}index=${i}">${i}</a>--%>

                                                    <a href="cart?id=${d.getIdProduct()}" data-tip="Thêm vào giỏ hàng "><i
                                                            class="fa fa-shopping-cart "></i></a>
                                                </li>
                                                    <%--                                                <li><a href="# " data-tip="Thích "><i class="fa fa-heart "></i></a></li>--%>
                                                    <%--                                                <li><a href="# " data-tip="So sánh "><i class="fa fa-random "></i></a></li>--%>
                                                <li>
                                                    <a href="ProductDetailController?id=${d.getIdProduct()}"
                                                       data-tip="Xem thêm"><i class="fa fa-search "></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content ">
                                            <h3 class="title ">
                                                <a style="font-size: 11px"
                                                   href="ProductDetailController?id=${d.getIdProduct()}">${d.tenProduct}</a>

                                            </h3>
                                            <div class="price  ">${d.giaTien}</div>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>

                            <%--end product--%>


                            <!-- end -->

                        </div>
                        <div class="otherInfo ">

                            <ul class="pagination">

                                <c:forEach begin="1" end="${endPage}" var="i">
                                    <a href="${servlet}index=${i}">${i}</a>
                                </c:forEach>

                            </ul>
                            <%--                            <div class="otherInfoBody ">--%>
                            <%--                                <div class="col-md-3 col-sm-6 ">--%>
                            <%--                                    <div class="product-grid ">--%>
                            <%--                                        <div class="product-image ">--%>
                            <%--                                            <a href="giuong.jsp ">--%>
                            <%--                                                <img class="pic-1 " src="images/shop/bankhach15.jpg ">--%>
                            <%--                                                <img class="pic-2 " src="images/shop/bankhach15.jpg ">--%>
                            <%--                                            </a>--%>
                            <%--                                            <span class="product-trend-label ">Mới</span>--%>

                            <%--                                            <ul class="social ">--%>
                            <%--                                                <li><a href="cart.jsp " data-tip="Thêm vào giỏ hàng "><i--%>
                            <%--                                                        class="fa fa-shopping-cart "></i></a></li>--%>
                            <%--                                                <li><a href="# " data-tip="Thích "><i class="fa fa-heart "></i></a></li>--%>
                            <%--                                                <li><a href="# " data-tip="So sánh "><i class="fa fa-random "></i></a>--%>
                            <%--                                                </li>--%>
                            <%--                                                <li><a href="product-details.jsp " data-tip="Xem thêm "><i--%>
                            <%--                                                        class="fa fa-search "></i></a></li>--%>
                            <%--                                            </ul>--%>
                            <%--                                        </div>--%>
                            <%--                                        <div class="product-content ">--%>
                            <%--                                            <h3 class="title "><a href="pkhach-ban.jsp">Kệ Tivi MFC Màu Xám </a></h3>--%>
                            <%--                                            <div class="price ">1.890.000 đ</div>--%>
                            <%--                                        </div>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>

                        </div>


                    </div>

                </div>


            </div>

        </div>


        <div class="phobien ">
            <!-- Greatest Offer News Start -->
            <div class="news " style="background-color: white; ">
                <div class="container ">
                    <h4 style="text-align: center; font-weight: bolder; ">SẢN PHẨM BÁN CHẠY NHẤT TRONG DANH MỤC NÀY</h4>
                    <div class="owl-carousel ">

                        <div class="item ">
                            <div class="product-grid ">
                                <div class="product-image ">
                                    <a href="giuong.jsp ">
                                        <img class="pic-1 " src="images/shop/ketivi21.jpg ">
                                        <img class="pic-2 " src="images/shop/ketivi20.jpg ">
                                    </a>
                                    <span class="product-trend-label ">Mới</span>

                                    <ul class="social ">
                                        <li><a href="cart.jsp " data-tip="Thêm vào giỏ hàng "><i
                                                class="fa fa-shopping-cart "></i></a></li>
                                        <li><a href="# " data-tip="Thích "><i class="fa fa-heart "></i></a></li>
                                        <li><a href="# " data-tip="So sánh "><i class="fa fa-random "></i></a></li>
                                        <li><a href="product-details.jsp " data-tip="Xem thêm "><i
                                                class="fa fa-search "></i></a></li>
                                    </ul>
                                </div>
                                <div class="product-content ">
                                    <h3 class="title "><a href="# ">Giường GD1</a></h3>
                                    <div class="price ">$100</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="support ">


        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js "></script>
        <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js "></script>


        <!-- footer begin -->
        <%@include file="footer.jsp" %>
        <!-- footer close -->


</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/products.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->

</html>

