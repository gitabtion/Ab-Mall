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

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i" rel="stylesheet">

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

</head>
<body>

<div class="fh5co-loader"></div>
<%@include file="_nav.jsp"%>
    <aside id="fh5co-hero" class="js-fullheight">
        <div class="flexslider js-fullheight">
            <ul class="slides">
                <c:forEach items="${requestScope.list.products}" var="product">
                    <li>
                        <img src="${product.imgUrl}" style="position: absolute;padding-left: 30%;padding-right: 30%;padding-top: 5%;margin-left: 20%">
                        <div class="overlay-gradient"></div>
                        <div class="container">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 js-fullheight slider-text">
                                <div class="slider-text-inner">
                                    <div class="desc">
                                        <span class="price">￥${product.price}</span>
                                        <h3>${product.name}</h3>
                                        <p>${product.description}</p>
                                        <p><a href="product/${product.pid}" class="btn btn-primary btn-outline btn-lg">马上购买</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </aside>

    <div id="fh5co-services" class="fh5co-bg-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 text-center">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-credit-card"></i>
						</span>
                        <h3>Credit Card</h3>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                            there live the blind texts. Separated they live in Bookmarksgrove</p>
                        <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 text-center">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-wallet"></i>
						</span>
                        <h3>Save Money</h3>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                            there live the blind texts. Separated they live in Bookmarksgrove</p>
                        <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 text-center">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-paper-plane"></i>
						</span>
                        <h3>Free Delivery</h3>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                            there live the blind texts. Separated they live in Bookmarksgrove</p>
                        <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="fh5co-product">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                    <span>Cool Stuff</span>
                    <h2>Products.</h2>
                    <p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident.
                        Odit ab aliquam dolor eius.</p>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${requestScope.list.products}" var="product">
                    <div class="col-md-4 text-center animate-box">
                        <div class="product">
                            <div class="product-grid" style="background-image:url(${product.imgUrl})">
                                <div class="inner">
                                    <p>
                                        <a href="product/${product.pid}" class="icon"><i class="icon-shopping-cart"></i></a>
                                    </p>
                                </div>
                            </div>
                            <div class="desc">
                                <h3><a href="single">${product.name}</a></h3>
                                <span class="price">￥${product.price}</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <p style="display: flex;justify-content: center;align-items: center"><a href="products?page=2" class="btn btn-primary btn-outline btn-lg" style="margin: auto">查看更多</a>
        </div>
    </div>

    <div id="fh5co-testimonial" class="fh5co-bg-section">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                    <span>Testimony</span>
                    <h2>Happy Clients</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="row animate-box">
                        <div class="owl-carousel owl-carousel-fullwidth">
                            <div class="item">
                                <div class="testimony-slide active text-center">
                                    <figure>
                                        <img src="images/person1.jpg" alt="user">
                                    </figure>
                                    <span>Jean Doe, via <a href="#" class="twitter">Twitter</a></span>
                                    <blockquote>
                                        <p>&ldquo;Far far away, behind the word mountains, far from the countries
                                            Vokalia and Consonantia, there live the blind texts. Separated they live in
                                            Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                                    </blockquote>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-slide active text-center">
                                    <figure>
                                        <img src="images/person2.jpg" alt="user">
                                    </figure>
                                    <span>John Doe, via <a href="#" class="twitter">Twitter</a></span>
                                    <blockquote>
                                        <p>&ldquo;Separated they live in Bookmarksgrove right at the coast of the
                                            Semantics, a large language ocean.&rdquo;</p>
                                    </blockquote>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-slide active text-center">
                                    <figure>
                                        <img src="images/person3.jpg" alt="user">
                                    </figure>
                                    <span>John Doe, via <a href="#" class="twitter">Twitter</a></span>
                                    <blockquote>
                                        <p>&ldquo;Far from the countries Vokalia and Consonantia, there live the blind
                                            texts. Separated they live in Bookmarksgrove right at the coast of the
                                            Semantics, a large language ocean.&rdquo;</p>
                                    </blockquote>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="fh5co-counter" class="fh5co-bg fh5co-counter" style="background-image:url(images/img_bg_5.jpg);">
        <div class="container">
            <div class="row">
                <div class="display-t">
                    <div class="display-tc">
                        <div class="col-md-3 col-sm-6 animate-box">
                            <div class="feature-center">
								<span class="icon">
									<i class="icon-eye"></i>
								</span>

                                <span class="counter js-counter" data-from="0" data-to="22070" data-speed="5000"
                                      data-refresh-interval="50">1</span>
                                <span class="counter-label">Creativity Fuel</span>

                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 animate-box">
                            <div class="feature-center">
								<span class="icon">
									<i class="icon-shopping-cart"></i>
								</span>

                                <span class="counter js-counter" data-from="0" data-to="450" data-speed="5000"
                                      data-refresh-interval="50">1</span>
                                <span class="counter-label">Happy Clients</span>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 animate-box">
                            <div class="feature-center">
								<span class="icon">
									<i class="icon-shop"></i>
								</span>
                                <span class="counter js-counter" data-from="0" data-to="700" data-speed="5000"
                                      data-refresh-interval="50">1</span>
                                <span class="counter-label">All Products</span>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 animate-box">
                            <div class="feature-center">
								<span class="icon">
									<i class="icon-clock"></i>
								</span>

                                <span class="counter js-counter" data-from="0" data-to="5605" data-speed="5000"
                                      data-refresh-interval="50">1</span>
                                <span class="counter-label">Hours Spent</span>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
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

    <%@include file="_footer.jsp"%>
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

