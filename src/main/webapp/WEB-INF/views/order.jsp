<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Shop &mdash; Free Website Template, Free HTML5 Template by gettemplates.co</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Website Template by gettemplates.co"/>
    <meta name="keywords"
          content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive"/>
    <meta name="author" content="gettemplates.co"/>


    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"> -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i" rel="stylesheet"> -->

    <!-- Animate.css -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Flexslider  -->
    <link rel="stylesheet" href="css/flexslider.css">

    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .order-item{
            border: 1px #cccccc solid;
            margin-bottom: 20px;
        }
        .item-header{
            background: #f5f5f5;
            height: 36px;
        }
        .item-header span{
            line-height: 36px;
            padding-left: 30px;
        }
    </style>
</head>
<body>

<div class="fh5co-loader"></div>


<%@include file="_nav.jsp" %>
<div class="col-md-10" style="display: flex;flex-direction: column;justify-content: center;align-items: center;padding: 50px;width: 100%">
    <h3>订单列表</h3>
    <div class="row">
        <c:forEach items="${requestScope.orderItems}" var="orderItem">
            <div class="order-item">
                <div class="item-header">
                    <span>下单时间：${orderItem.createTime}</span>
                    <span>订单号：${orderItem.id}</span>
                </div>
                <table class="table" style="margin-bottom: 0">
                    <tbody>
                    <c:forEach items="${orderItem.products}" var="product" varStatus="status">
                        <tr>
                            <td style="width: 70px">
                                    <%--<img class="img-thumbnail" style="padding: 2px" src="${product.imgUrl}?imageView2/1/w/50/h/50/q/75|imageslim" alt="">--%>
                                <img class="img-thumbnail" style="padding: 2px" src="${product.imgUrl}" alt="">
                            </td>
                            <td style="width: 420px"><a href="/product/${product.pid}/">${product.name}</a></td>
                            <td>${product.quantity}</td>
                            <td>${product.price}</td>
                            <c:if test="${status.count == 1}">
                                <td style="vertical-align: middle;border-left: 1px #ddd solid" rowspan="${fn:length(orderItem.products)}">${orderItem.address.name} <br>${orderItem.address.tel}
                                    <br>${orderItem.address.addr}</td>
                                <td style="vertical-align: middle;border-left: 1px #ddd solid" rowspan="${fn:length(orderItem.products)}">总金额：<br>${orderItem.totalPrice} </td>
                            </c:if>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:forEach>
    </div>
</div>

<%@include file="_footer.jsp" %>
</div>

<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
</div>

<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<!-- Carousel -->
<script src="js/owl.carousel.min.js"></script>
<!-- countTo -->
<script src="js/jquery.countTo.js"></script>
<!-- Flexslider -->
<script src="js/jquery.flexslider-min.js"></script>
<!-- Main -->
<script src="js/main.js"></script>

</body>
</html>

