<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <title>商品详情页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="<%= basePath%>css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="<%= basePath%>css/style.css" rel='stylesheet' type='text/css' />
    <script src="<%= basePath%>js/jquery.min.js"> </script>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700|Cinzel+Decorative:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<%= basePath%>css/myresponsee.css">
    <link rel="stylesheet" href="<%= basePath%>css/style1.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<%= basePath%>css/responsive.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
    <script src="<%= basePath%>js/respond.js"></script>

    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="<%=basePath%>css/iconfont.css" rel="stylesheet"/>
    <link href="<%=basePath%>css/common1.css" rel="stylesheet"/>
    <link href="<%=basePath%>css/uc.css" rel="stylesheet"/>
    <style>

        #tu{
            width:360px;
            hight:400px;
        }
        .icon-text{
            font-family: 华文楷体;

        }
        .icon-text li a{
            color: #ffffff;
        }
        .uc-header-bg{
            background-color: #dbd2db;
        }
        .logo1{
            position: relative;
            margin-top:-210px;
            left:-450px;
        }
        nav{
            display: inline-block;
            margin-top:-40px;
            left:390px;
            font-family: 华文楷体;
            font-size: 20px;
            font-weight: bolder;
        }
        nav a{
            display: inline-block;
            color: white;
            text-decoration: none;
            perspective:200px;
        }
        nav a span{
            line-height: 50px;
            background-color: #f8fff9;
            display: inline-block;
            padding: 0 40px;
            position: relative;
            transform-origin:top;
            transition:all 1s;
            transform-style:preserve-3d;

        }
        nav a span::after{
            content: attr(data-hover);
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #1f2d3d;
            text-align: center;
            color: #ffffff;
            width: 100%;
            height: 100%;
            transform:rotateX(-90deg);
            transform-origin:top;
        }

        nav a:hover span{
            transform:rotateX(90deg) translateY(-20px);
        }

    </style>


</head>

<body class="size-1140">


<!-- SLIDESHOW START -->
<div class="uc-header-bg">
    <div class="uc-header wrapper">
        <div class="logo1"> <a class="logo" href="<%=basePath%>jsp/index.jsp">
            <img src="<%=basePath%>images/u8.png" style="width: 180px;height: 90px;" alt="" /></a></div>

    </div>
    <nav>
        <a href="">
            <span data-hover="美乎首页">美乎首页</span>
        </a>
        <a href="">
            <span data-hover="美淘首页">美淘首页</span>
        </a>
        <a href="">
            <span data-hover="美论">美论</span>
        </a>
        <a href="">
            <span data-hover="美购">美购</span>
        </a>
        <a href="">
            <span data-hover="个人中心">个人中心</span>
        </a>
        <a href="">
            <span data-hover="购物车">购物车</span>
        </a>
    </nav>
</div>
<!-- SLIDESHOW END -->
<!-- PRODUCT DETAIL START -->
<div class="section">
    <div class="line">
        <div class="margin">
            <!-- product image -->
            <div class="s-12 m-4 l-5 margin-bottom">
                <div id="tu"><img src='<%=basePath %>${product.goodpic}'/></div>
            </div>
            <!-- product detail -->
            <div class="s-12 m-8 l-7 padding-l-left">
                <h2 class="text-primary">${product.goodname}</h2>
                <p>${product.gooddetail}</p>
                <ul class="speciality margin-bottom">
                    <li>不一样的体验</li>
                    <li>重回二十岁</li>
                    <li>青春永驻，靓丽人生</li>
                </ul>
                <div class="fullwidth margin-bottom-40">
                    <div class="numbers-row">
                        <form action="<%= basePath%>goods/cart.action" id="form1" method="get">
                            <input type="hidden" name="method" value="addCart">
                            <input type="hidden" name="gid" value="${product.goodid }" >
                            <label>购买数量:</label>
                            <input type="text" name="count" value="1">
                        </form>
                    </div>
                </div>
                <div class="s-12 m-6 l-4">
                    <%--<%= basePath%>goods/cart.action--%><%--<%= basePath%>jsp/cart.jsp--%>
                    <a href="javascript:void(0)" class="button" onclick="subForm()">加入购物车</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- PRODUCT DETAIL END -->
<script type="text/javascript">
    function subForm(){
        document.getElementById("form1").submit();
    }
</script>



<!-- PRODUCT TAB START -->
<div class="section padding-top-0">
    <div class="line">
        <div class="fullwidth">
            <div class="tabs left">
                <div class="tab-item">
                    <a class="tab-label">极致特效</a>
                    <div class="tab-content padding-left-10">
                        <h3>极致特效</h3>
                        <p class="margin-bottom">肌肤是女人永葆青春的最直接的体现。</p>
                        <ul class="speciality padding padding-top-0">
                            <li>此款化妆品让你体会不一样的疗养特效</li>
                            <li>睡前请让自己精致美美哒</li>
                            <li>遇见更美丽的  </ul>
                    </div>
                </div>
                <div class="tab-item tab-active">
                    <a class="tab-label active-btn">相关描述</a>
                    <div class="tab-content padding-left-10">
                        <h3>相关描述</h3>
                        <p>${product.gooddetail}</p>
                        <p>新品上市，快快来体验吧！</p>
                        <p>遇见更美丽的自己！邂逅最正确的他！！</p>
                        <p>相信我们，我们会是你最好的选择！！！！</p>
                        <p>最好的化妆，其实不是去掩盖一个人的缺点，而是去突出一个人的优点。就像爱情一样，当你爱一个人的时候，你眼中只是看到对方的优点，不是看不见缺点，而是不介意，好的化妆，不是伪装。</p>
                    </div>
                </div>

                <div class="tab-item">
                    <a class="tab-label">购买优惠</a>
                    <div class="tab-content padding-left-10">
                        <h3>购买优惠</h3>
                        <p>现阶段购买，优惠多多</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- PRODUCT TAB END -->




<!-- RELATED PRODUCTS START -->
<div class="section padding-top-0">
    <div class="line">
        <div class="margin">
            <div class="fullwidth margin-bottom-20">
                <h2 class="text-center">相关推荐</h2>
                <hr class="break-small break-center">
            </div>

            <!-- product 1 -->
            <div class="s-12 m-4 l-3 margin-bottom-30">
                <div class="margin">
                    <div class="fullwidth">
                        <figure class="imghvr-reveal-down">
                            <img src="<%= basePath%>img/products/1.png">
                            <figcaption>
                                <div class="product-hover-content">
                                    <div class="btn-box">
                                        <a href="" class="btn">查看详情</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="fullwidth">
                        <h5>Lorem Ipsum Elit Dolor</h5>
                        <p class="text-center"><span class="strike">$149.00</span> &nbsp;&nbsp; <span class="text-primary">$130.00</span></p>
                    </div>
                </div>
            </div>

            <!-- product 2 -->
            <div class="s-12 m-4 l-3 margin-bottom-30">
                <div class="margin">
                    <div class="fullwidth">
                        <figure class="imghvr-reveal-down">
                            <img src="<%= basePath%>img/products/2.png">
                            <figcaption>
                                <div class="product-hover-content">
                                    <div class="btn-box">
                                        <a href="" class="btn">查看详情</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="fullwidth">
                        <h5>Lorem Ipsum Elit Dolor</h5>
                        <p class="text-center"><span class="strike">$149.00</span> &nbsp;&nbsp; <span class="text-primary">$130.00</span></p>
                    </div>
                </div>
            </div>

            <!-- product 3 -->
            <div class="s-12 m-4 l-3 margin-bottom-30">
                <div class="margin">
                    <div class="fullwidth">
                        <figure class="imghvr-reveal-down">
                            <img src="<%= basePath%>img/products/3.png">
                            <figcaption>
                                <div class="product-hover-content">
                                    <div class="btn-box">
                                        <a href="" class="btn">查看详情</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="fullwidth">
                        <h5>Lorem Ipsum Elit Dolor</h5>
                        <p class="text-center"><span class="strike">$149.00</span> &nbsp;&nbsp; <span class="text-primary">$130.00</span></p>
                    </div>
                </div>
            </div>

            <!-- product 4 -->
            <div class="s-12 m-4 l-3 margin-bottom-30">
                <div class="margin">
                    <div class="fullwidth">
                        <figure class="imghvr-reveal-down">
                            <img src="<%= basePath%>img/products/4.png">
                            <figcaption>
                                <div class="product-hover-content">
                                    <div class="btn-box">
                                        <a href="" class="btn">查看详情</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="fullwidth">
                        <h5>Lorem Ipsum Elit Dolor</h5>
                        <p class="text-center"><span class="strike">$149.00</span> &nbsp;&nbsp; <span class="text-primary">$130.00</span></p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- RELATED PRODUCTS END -->



<!--/start-footer-section-->
<div class="footer-section">
    <div class="footer-grids">
        <div class="col-md-3 footer-grid">
            <h4>最受欢迎</h4>
            <div class="border2"></div>
            <p>清透润白系列 「淡斑小瓷瓶」清透润白淡斑亮肤精华乳</p>
            <p class="sub">焕颜紧致系列 「全明星眼霜」焕颜紧致眼霜.</p>
            <p class="sub">恒润奇肌保湿系列 「小蓝瓶」恒润奇肌保湿精华液</p>
            <p class="sub" >相宜本草 「红景天莹」透彻幼白精华乳（亮白乳液护肤）</p>
        </div>
        <div class="col-md-3 footer-grid tags">
            <h4>类别</h4>
            <div class="border2"></div>
            <ul class="tag">
                <li><a href="#">面 部 洁 白</a></li>
                <li><a href="#">防 晒 护 理</a></li>
                <li><a href="#">美 妆 护 理</a></li>
                <li><a href="#">眼 部 护 理</a></li>
                <li><a href="#">保 湿 护 肤</a></li>
                <li><a href="#">香 气 怡 人</a></li>
                <li><a href="#">全 面 呵 护</a></li>
                <li><a href="#">特 别 活 动</a></li>
                <li><a href="#">礼品及超值套餐</a></li>


            </ul>
        </div>
        <div class="col-md-3 footer-grid tweet">
            <h4>关于我们</h4>
            <div class="border2"></div>
            <div class="icon-3-square">
                <a href="#"><i class="square-3"></i></a>
            </div>
            <div class="icon-text">
                <ul>
                    <li><a href="#">选 择 美 乎</a></li>
                    <li><a href="#">美 乎 妆 品</a></li>
                    <li><a href="#">美 乎 中 心</a></li>
                    <li><a href="#">品 类 选 择</a></li>
                    <li><a href="#">美 妆 护 理</a></li>

                </ul>
            </div>

            <div class="clearfix"></div>
            <div class="icon-3-square">
                <a href="#"><i class="square-3"></i></a>
            </div>
            <div class="icon-text">
                <ul>
                    <li><a href="#">服 务 中 心</a></li>
                    <li><a href="#">常 见 问 题</a></li>
                    <li><a href="#">联 系 我 们</a></li>
                    <li><a href="#">tel:135-2551-6040</a></li>
                    <li><a href="#">email:920758051@qq.com</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-3 footer-grid flickr">
            <h4>flickr feed</h4>
            <div class="border2"></div>
            <div class="flickr-grids">
                <div class="flickr-grid">
                    <a href="#"><img src="<%= basePath%>images/1_06.jpg" alt=""/></a>
                </div>
                <div class="flickr-grid">
                    <a href="#"><img src="<%= basePath%>images/4_15.jpg" alt=""/></a>
                </div>
                <div class="flickr-grid">
                    <a href="#"><img src="<%= basePath%>images/6_03.jpg" alt=""/></a>
                </div>
                <div class="clearfix"> </div>

                <div class="flickr-grid">
                    <a href="#"><img src="<%= basePath%>images/3_05.jpg" alt=""/></a>
                </div>
                <div class="flickr-grid">
                    <a href="#"><img src="<%= basePath%>images/2_04.jpg" alt=""/></a>
                </div>
                <div class="flickr-grid">
                    <a href="#"><img src="<%= basePath%>images/5_09.jpg" alt=""/></a>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--//end-footer-section-->
<!--/start-copyright-section-->
<div class="copyright">
    <p class="write">Copyright &copy; 2018 All rights  Reserved | Design by <a href="#">美乎网</a></p>
</div>


<!--//end-footer-section-->
<!--/start-copyright-section-->

<!-- jQuery Files -->
<script type="text/javascript" src="<%= basePath%>js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%= basePath%>js/jquery-ui.min.js"></script>
<script type="text/javascript" src="<%= basePath%>owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="<%= basePath%>js/custom.js"></script>

<script src="<%=basePath%>js/jquery.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/style2.css"/>
<script src="<%=basePath%>js/icheck.min.js"></script>
<script src="<%=basePath%>js/laydate.js"></script>
<script src="<%=basePath%>js/global.js"></script>



</body>
</html>

