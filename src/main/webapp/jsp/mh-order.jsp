<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>我的订单</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="<%=basePath%>css/iconfont.css" rel="stylesheet"/>
    <link href="<%=basePath%>css/common1.css" rel="stylesheet"/>
    <link href="<%=basePath%>css/uc.css" rel="stylesheet"/>
    <style>
        .uc-header-bg{
            background-color: #cdc6d7;
        }
    </style>
</head>
<body>
<!--头部-->
<div class="topper">
    <div class="wrapper">
        <div class="left-bar">
            <div class="back-home divider">
                <em></em><a href="#">美淘商城</a>
            </div>
            <div class="item"><a href="#">登录</a></div>
            <div class="item"><a href="#">注册</a></div>
        </div>
        <div class="right-bar">
            <div class="login-user sub-menu">
                <a class="menu-hd" href="">txtangxia<em></em></a>
                <div class="down">
                    <a href="">内容</a>
                    <a href="">内容</a>
                    <a href="">内容</a>
                </div>
            </div>
            <div class="item"><a href="#">消息（<span class="txt-theme">0</span>）</a></div>
            <div class="logout divider"><a href="<%=basePath%>jsp/login.jsp">退出</a></div>
            <span class=""></span>
            <div class="cart"><em></em><a href="<%=basePath%>jsp/cart.jsp">购物车<span class="txt-theme">2</span>件</a></div>
            <div class="order"><em></em><a href="<%=basePath%>jsp/mh-order.jsp">我的订单</a></div>
            <div class="fav"><em></em><a href="#">我的收藏</a></div>
            <div class="help"><em></em><a href="<%=basePath%>jsp/help.jsp">帮助中心</a></div>
        </div>
    </div>
</div>
<div class="uc-header-bg">
    <div class="uc-header wrapper">
        <a class="logo" href="<%=basePath%>jsp/index.jsp"><img src="<%=basePath%>images/u8.png" alt="" /></a>
        <div class="back-home"><a href="">返回商城首页</a></div>
        <ul class="uc-nav">
            <li><a href="<%=basePath%>jsp/index.jsp">首页</a></li>
            <li class="toggle">
                <span class="label">账户设置<i class="iconfont"></i></span>
                <div class="toggle-cont">
                    <a href="#">个人信息</a>
                    <a href="<%=basePath%>jsp/mh-address.jsp">收货地址</a>
                </div>
            </li>
            <li><a href="#">系统消息</a></li>
        </ul>
        <div class="schbox">
            <form action="" method="post">
                <input class="search-txt" type="text" placeholder="请输入搜索内容"/>
                <button class="search-btn">搜索</button>

            </form>
        </div>
    </div>
</div>

<div class="wrapper uc-router">
    <ul>
        <li><a href="<%=basePath%>jsp/index.jsp">首页</a></li>
        <li><span class="divider"></span></li>
        <li><span>个人中心</span></li>
    </ul>
</div>

<div class="wrapper">
    <div class="uc-main clearfix">
        <div class="uc-aside">
            <div class="uc-menu">
                <div class="tit">订单中心</div>
                <ul class="sublist">
                    <li><a class="active" href="<%=basePath%>jsp/mh-orders.jsp">我的订单</a></li>

                </ul>
                <div class="tit">客户服务</div>
                <ul class="sublist">
                    <li><a href="<%=basePath%>jsp/mh-cancel.jsp">取消订单记录</a></li>
                    <li><a href="<%=basePath%>jsp/mh-apply-refund.jsp">退款/退货</a></li>
                </ul>
                <div class="tit">账户中心</div>
                <ul class="sublist">

                    <li><a href="<%=basePath%>jsp/mh-address.jsp">收货地址</a></li>
                </ul>
                <div class="tit">消息中心</div>
                <ul class="sublist">
                    <li><a href="<%=basePath%>jsp/mh-total-credits.jsp">我的消费积分</a></li>
                    <li><a href="<%=basePath%>jsp/mh-discount-coupon.jsp">我的优惠卷</a></li>
                </ul>
                <div class="tit">服务中心</div>
                <ul class="sublist">
                    <li><a href="#">美淘服务</a></li>
                </ul>
            </div>
        </div>
        <div class="uc-content">
            <div class="uc-panel">
                <div class="uc-bigtit">我的订单</div>
                <div class="uc-panel-bd">
                    <div class="uc-sort">
                        <div class="uc-tabs">
                            <a class="item active" href="<%=basePath%>goods/myOrder.action">所有订单</a>
                            <a class="item " href="<%=basePath%>goods/noPayOrder.action">待付款</a>
                            <a class="item" href="<%=basePath%>goods/waitOrder.action">待发货</a>
                            <a class="item" href="<%=basePath%>goods/runOrder.action">已发货</a>
                            <a class="item" href="<%=basePath%>goods/doneOrder.action">已收货</a></div>
                        </div>
                        <div class="uc-search">
                            <form action="">
                                <input type="text" class="sch-input" placeholder="输入商品名称,订单号，商品编号" />
                                <button class="sch-btn"><i class="iconfont icon-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <table class="uc-table">
                        <thead>
                        <th>商品详情</th>
                        <th>名称</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>小计</th>
                        <th width="120">状态</th>
                        </thead>
                        <c:forEach items="${orderList}" var="myorder">
                            <tr>
                                <td>
                                    <div class="left"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${myorder.ordertime}" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单号: ${myorder.orderid}</div>

                                </td>
                            </tr>
                            <c:forEach items="${myorder.items}" var="eachdetail">
                                <td class="order-goods">
                                    <img src="${pageContext.request.contextPath }/${eachdetail.good.goodpic}" width="100px" height="100px">
                                </td>
                                <td>
                                        <div class="goods-info">
                                            <div>
                                                ${eachdetail.good.goodname}
                                            </div>
                                        </div>
                                    </td>
                                    <td>${eachdetail.good.goodprice}</td>
                                    <td>${eachdetail.count}</td>
                                    <td>
                                        <span class="text-theme fwb">${eachdetail.subtotal}</span>
                                    </td>
                                    <td>
                                    <c:choose>
                                    <c:when test="${myorder.state== 0}"> 未付款</c:when>
                                    <c:when test="${myorder.state== 1 }">待发货</c:when>
                                    <c:when test="${myorder.state == 2}">待收货</c:when>
                                    <c:when test="${myorder.state== 3}">已收货</c:when>
                                    </c:choose>
                                </td>
                                </tr>
                            </c:forEach>
                        </c:forEach>
                    </table>



                </div>
            </div>
        </div>
    </div>
</div>

<!--脚部-->
<div class="fatfooter">

</div>
<!--脚部-->
</body>
<script src="<%=basePath%>js/jquery.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/style2.css"/>
<script src="<%=basePath%>js/icheck.min.js"></script>
<script src="<%=basePath%>js/global.js"></script>
<script>


</script>
</html>