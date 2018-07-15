<%--
  Created by IntelliJ IDEA.
  User: abtion
  Date: 2018/7/14
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Shop &mdash; Free Website Template, Free HTML5 Template by gettemplates.co</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

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

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="/css/bootstrap.css">

    <!-- Flexslider  -->
    <link rel="stylesheet" href="/css/flexslider.css">

    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- Modernizr JS -->
    <script src="/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="/js/respond.min.js"></script>
    <![endif]-->
    <style>
        .address-item {
            border: 1px #cccccc solid;
            margin-bottom: 20px;
        }

        .item-header {
            background: #f5f5f5;
            height: 36px;
        }

        .item-header span {
            line-height: 36px;
            padding-left: 30px;
        }
    </style>
</head>
<body>

<div id="page">
    <%@include file="_nav.jsp" %>

    <div id="fh5co-product">
        <div class="container">


            <div class="row" style="display: flex">
                <c:forEach items="${requestScope.productInCarts}" var="productInCart">

                    <div class="col-md-4 text-center animate-box" style="margin-right: 120px">
                        <div class="image">
                            <img src="${productInCart.imgUrl}"/>
                        </div>
                    </div>
                    <div class="col-md-9 animate-box" style="display: flex;justify-content: center;align-items: center">
                        <div class="caption">
                            <div class="name"><h3><a
                                    href="/product/${productInCart.pid}">${productInCart.name}</a></h3></div>
                            <div class="info">
                                <ul>
                                    <li>品牌: <a
                                            href="/list?bid=${productInCart.brand.bid}">${productInCart.brand.name}</a>
                                    </li>
                                    <li>ID: ${productInCart.pid}</li>
                                    <li>库存: ${productInCart.inventory}</li>
                                    <li>已售: ${productInCart.salesVolume}</li>
                                    <li>价格: ￥${productInCart.price}</li>
                                </ul>
                            </div>

                            <form action="/updateQuantity">
                                <label>数量: </label>
                                <input class="form-inline quantity" name="quantity" type="text"
                                       value="${productInCart.quantity}">
                                <input type="hidden" name="pid" value="${productInCart.pid}">
                                    <%--<a href="#" class="btn btn-2 ">Update</a>--%>
                                <button type="submit" class="btn btn-primary btn-outline">Update</button>
                            </form>
                            <hr>
                            <a href="/delete?pid=${productInCart.pid}"
                               class="btn btn-primary btn-outline pull-right">删除</a>
                        </div>
                    </div>
                    <div class="clear"></div>

                </c:forEach>

            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-8 ">
                    <center><a href="/products" class="btn btn-primary btn-outline">Continue To Shopping</a></center>
                </div>
            </div>
            <form action="/checkout">
                <div class="row">
                    <table class="table table-striped table-hover">
                        <caption class="text-left">确认收货地址</caption>
                        <thead class="item-header address-item">
                        <tr>
                            <th></th>
                            <th>收件人</th>
                            <th>电话</th>
                            <th>详细地址</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${requestScope.addresses}" var="address">
                            <tr class="address-item">
                                <td><input type="radio" name="aid" value="${address.aid}"
                                           <c:if test="${address.isDefault == 1}">checked</c:if>></td>
                                <td>${address.name}</td>
                                <td>${address.tel}</td>
                                <td>${address.addr}</td>
                                <td><c:if test="${address.isDefault == 1}">默认地址</c:if></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="pricedetails">
                        <div class="col-md-4 col-md-offset-8"
                             style="display: flex;flex-direction: column;justify-content: center;align-items: center">
                            <table style="margin-bottom: 32px">
                                <h6>价格明细</h6>
                                <tr>
                                    <td>总数量</td>
                                    <td>${requestScope.cartDetail.totalCount}</td>
                                </tr>
                                <tr style="border-top: 1px solid #333">
                                    <td>总价</td>
                                    <td>${requestScope.cartDetail.totalPrice}</td>
                                </tr>
                            </table>
                            <button type="submit" class="btn btn-primary btn-outline">Checkout</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div id="fh5co-started">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                    <h2>Newsletter</h2>
                    <p>Just stay tune for our latest Product. Now you can subscribe</p>
                </div>
            </div>
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2">
                    <form class="form-inline">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <label for="email" class="sr-only">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-default btn-block">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>
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


