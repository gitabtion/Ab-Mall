<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abtion
  Date: 2018/7/12
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="page">
    <nav class="fh5co-nav" role="navigation">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-2">
                    <div id="fh5co-logo"><a href="home">AbMall</a></div>
                </div>
                <div class="col-md-6 col-xs-6 text-center menu-1">
                    <ul>
                        <li class="has-dropdown">
                            <a href="products?page=1">全部商品</a>
                        </li>

                        <c:forEach items="${requestScope.nav}" var="nav">
                            <li class="has-dropdown">
                                <a href="products?cid=${nav.cid}&page=1">${nav.name}</a>
                                <ul class="dropdown">
                                    <c:forEach items="${nav.brands}" var="brand" varStatus="status">
                                        <li><a href="products?cid=${nav.cid}&bid=${brand.bid}&page=1">${brand.name}</a></li>
                                    </c:forEach>
                                </ul>

                            </li>
                        </c:forEach>


                        <li><a href="about">关于</a></li>
                        <%--<li class="has-dropdown">--%>
                            <%--<a href="services">Services</a>--%>
                            <%--<ul class="dropdown">--%>
                                <%--<li><a href="#">Web Design</a></li>--%>
                                <%--<li><a href="#">eCommerce</a></li>--%>
                                <%--<li><a href="#">Branding</a></li>--%>
                                <%--<li><a href="#">API</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li><a href="contact.jsp">Contact</a></li>--%>
                    </ul>
                </div>
                <div class="col-md-3 col-xs-4 text-right hidden-xs menu-2">
                    <ul>
                        <li class="search">
                            <div class="input-group">
                                <input type="text" name="keyWord" value="${param.keyWord}" placeholder="Search..">
                                <span class="input-group-btn">
						        <button class="btn btn-primary" type="button"><i class="icon-search" href="products?keyWord=apple"></i></button>
						      </span>
                            </div>
                        </li>
                        <li class="shopping-cart"><a href="#" class="cart"><span><small>0</small><i
                                class="icon-shopping-cart"></i></span></a></li>
                    </ul>
                </div>
            </div>

        </div>
    </nav>
