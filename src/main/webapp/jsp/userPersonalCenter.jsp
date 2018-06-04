<%--
  Created by IntelliJ IDEA.
  User: chimeralala
  Date: 2018/6/4
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <meta name="keywords" content="美论" />
    <meta name="description" content="美论" />

    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="//img-cdn-qiniu.dcloud.net.cn/static/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="//img-cdn-qiniu.dcloud.net.cn/static/css/aw-font.css" />

    <link href="<%=basePath%>css/common.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>css/stylebankuai.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>css/classblack.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<%=basePath%>css/user.css" />

    <script src="//img-cdn-qiniu.dcloud.net.cn/static/js/jquery.2.js?v=20171108" type="text/javascript"></script>
    <script src="//img-cdn-qiniu.dcloud.net.cn/static/js/jquery.form.js?v=20171108" type="text/javascript"></script>
    <script src="//img-cdn-qiniu.dcloud.net.cn/static/js/plug_module/plug-in_module.js?v=20171108" type="text/javascript"></script>
    <script src="//img-cdn-qiniu.dcloud.net.cn/static/js/functions.js?v=20171108" type="text/javascript"></script>

    <script src="//img-cdn-qiniu.dcloud.net.cn/static/js/common.js?v=20171108" type="text/javascript"></script>

    <script type="text/javascript" src="//img-cdn-qiniu.dcloud.net.cn/static/js/compatibility.js"></script>

</head>
<style type="text/css">
    .sponsor .sponsor-level {
        width: 13px;
        height: 13px;
        position: absolute;
        left: 45px;
        top: 9px;
        margin-left: 0;
    }

    .sponsor .sponsor-count {
        width: 8px;
        height: 8px;
        position: absolute;
        left: 48px;
        top: 11px;
        margin-left: 0;
    }
</style>
<style>
    .ad-item {
        position: relative;
    }

    .ad-item .close {
        position: absolute;
        width: 18px;
        height: 18px;
        background-color: #000000;
        opacity: 0.5;
        text-align: center;
        right: 0px;
        top: 0px;
        line-height: 18px;
        display: none;
    }

    .ad-item .close a {
        font-size: 14px;
        color: #FFFFFF;
        text-decoration: none;
    }

    .ad-item .guide {
        display: none;
    }

    .ad-item:hover .close {
        display: block;
    }
</style>

<body>
<div class="aw-top-menu-wrap">
    <div class="aw-wecenter aw-top-menu clearfix">
        <div class="container">
            <!-- logo -->
            <div class="aw-logo hidden-xs">
                <img src="<%=basePath%>images/LOGO.png" style="width: 72px; height: 41px;" />
            </div>
            <!-- end logo -->
            <!-- 搜索框 -->
            <div class="aw-search-box  hidden-xs hidden-sm">
                <form class="navbar-search pull-right" action="#" id="global_search_form" method="post">
                    <div class="input-group">
                        <input value="" class="form-control" type="text" placeholder="搜索问题、话题" autocomplete="off" name="q" id="aw-search-query" class="search-query" />
                        <span class="input-group-addon" title="搜索" id="global_search_btns" onClick="$('#global_search_form').submit();"><i class="fa fa-search"></i></span>
                        <div class="clearfix"></div>

                    </div>
                </form>
            </div>
            <!-- end 搜索框 -->
            <!-- 导航 -->
            <div class="aw-top-nav navbar">
                <div class="navbar-header">
                    <button class="navbar-toggle pull-left">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <nav role="navigation" class="collapse navbar-collapse bs-navbar-collapse">
                    <ul class="nav navbar-nav">

                        <li class="nav-current" role="presentation">
                            <a href="luntanshouyetest.html">美论首页</a>
                        </li>
                        <li>
                            <a href="index.html">美乎</a>
                        </li>
                        <li>
                            <a href="#">美购</a>
                        </li>
                        <li>
                            <a href="#">美商城</a>
                        </li>
                        <li>
                            <a href="#">活动</a>
                        </li>

                        <li>
                            <a href="#">关于</a>
                        </li>

                    </ul>
                </nav>

            </div>
            <!-- end 导航 -->
            <!-- 用户栏 -->
            <div class="aw-user-nav">
                <!-- 登陆&注册栏 -->
                <span>
                    <a href="#" ><img src="<%=basePath%>images/${user.headpic}"/>${user.uname}</a>
                    <!--<a href="#">注册</a>
                    <a href="#">登录</a>-->
                </span>

                <!-- end 登陆&注册栏 -->
            </div>
            <!-- end 用户栏 -->
            <!-- 发起 -->
            <!-- end 发起 -->
        </div>
    </div>
</div>

<!--主体-->

<div class="aw-container-wrap">
    <div class="container">
        <div class="row">
            <div class="aw-content-wrap clearfix">
                <div class="col-sm-12 col-md-9 aw-main-content">
                    <!-- 用户数据内容 -->
                    <div class="aw-mod aw-user-detail-box">
                        <div class="mod-head">
                            <img src="<%=basePath%>images/${user.headpic}" />
                            <span class="pull-right operate">
                                <a href="<%=basePath%>jsp/userInfo.jsp" class="btn btn-mini btn-success">编辑</a>
                            </span>
                            <h1>${user.uname}</h1>
                            <!--用户名-->
                            <p class="text-color-999">发帖小能手</p>
                            <!--称号-->
                            <p class="aw-user-flag">
                            </p>
                        </div>
                        <div class="mod-body">
                            <div class="meta">
                                <span><i class="icon icon-score"></i> 积分 : <em class="aw-text-color-orange">250</em></span>
                                <span><i class="icon icon-agree"></i> 赞同 : <em class="aw-text-color-orange">0</em></span>
                            </div>

                        </div>
                        <div class="mod-footer">
                            <ul class="nav nav-tabs aw-nav-tabs">
                                <li class="active">
                                    <a href="#overview" id="page_overview" data-toggle="tab">概述</a>
                                </li>
                                <li>
                                    <a href="#questions" id="page_questions" data-toggle="tab">发问<span class="badge">0</span></a>
                                </li>
                                <li>
                                    <a href="#answers" id="page_answers" data-toggle="tab">回复<span class="badge">0</span></a>
                                </li>

                                <li>
                                    <a href="#focus" id="page_focus" data-toggle="tab">关注话题</a>
                                </li>

                                <li>
                                    <a href="#detail" id="page_detail" data-toggle="tab">详细资料</a>
                                </li>
                                <li>
                                    <a href="#integral" id="page_integral" data-toggle="tab">我的积分</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- end 用户数据内容 -->

                    <div class="aw-user-center-tab">
                        <div class="tab-content">
                            <div class="tab-pane active" id="overview">
                                <!-- 回复 -->
                                <div class="aw-mod">
                                    <div class="mod-head">
                                        <h3>回复</h3>
                                    </div>
                                    <div class="mod-body">
                                        <div class="aw-profile-answer-list">
                                            <p class="padding10 text-center">没有内容</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- end 回复 -->

                                <!-- 发问 -->
                                <div class="aw-mod">
                                    <div class="mod-head">
                                        <h3>发问</h3>
                                    </div>
                                    <div class="mod-body">
                                        <div class="aw-profile-publish-list">
                                            <p class="padding10 text-center">没有内容</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- end 发问 -->

                                <!-- 最新动态 -->

                            </div>
                            <div class="tab-pane" id="questions">
                                <div class="aw-mod">
                                    <div class="mod-head">
                                        <h3>发问</h3>
                                    </div>
                                    <div class="mod-body">
                                        <div class="aw-profile-publish-list" id="contents_user_actions_questions">
                                            这里是问题
                                        </div>
                                    </div>
                                    <div class="mod-footer">
                                        <!-- 加载更多内容 -->
                                        <a class="aw-load-more-content" id="bp_user_actions_questions_more">
                                            <span>更多</span>
                                        </a>
                                        <!-- end 加载更多内容 -->
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="answers">
                                <div class="aw-mod">
                                    <div class="mod-head">
                                        <h3>回复</h3>
                                    </div>
                                    <div class="mod-body">
                                        <div class="aw-profile-answer-list" id="contents_user_actions_answers"></div>
                                    </div>
                                    <div class="mod-footer">
                                        <!-- 加载更多内容 -->
                                        <a class="aw-load-more-content" id="bp_user_actions_answers_more">
                                            <span>更多</span>
                                        </a>
                                        <!-- end 加载更多内容 -->
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="articles">
                                <div class="aw-mod">
                                    <div class="mod-head">
                                        <h3>文章</h3>
                                    </div>
                                    <div class="mod-body">
                                        <div class="aw-profile-publish-list" id="contents_user_actions_articles"></div>
                                    </div>
                                    <div class="mod-footer">
                                        <!-- 加载更多内容 -->
                                        <a class="aw-load-more-content" id="bp_user_actions_articles_more">
                                            <span>更多</span>
                                        </a>
                                        <!-- end 加载更多内容 -->
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="focus">
                                <!-- 自定义切换 -->
                                <div class="aw-mod">

                                    <div class="mod-body">
                                        <div class="aw-tab-content">
                                            <div class="aw-mod aw-user-center-follow-mod">
                                                <div class="mod-body">
                                                    <ul id="contents_user_follows" class="clearfix">
                                                        <li>asdas d</li>
                                                    </ul>
                                                </div>
                                                <div class="mod-footer">
                                                    <!-- 加载更多内容 -->
                                                    <a class="aw-load-more-content" id="bp_user_follows_more">
                                                        <span>更多</span>
                                                    </a>
                                                    <!-- end 加载更多内容 -->
                                                </div>
                                            </div>
                                            <div class="aw-mod aw-user-center-follow-mod collapse">
                                                <div class="mod-body">
                                                    <ul class="clearfix" id="contents_user_fans"></ul>
                                                </div>
                                                <div class="mod-footer">
                                                    <!-- 加载更多内容 -->
                                                    <a class="aw-load-more-content" id="bp_user_fans_more">
                                                        <span>更多</span>
                                                    </a>
                                                    <!-- end 加载更多内容 -->
                                                </div>
                                            </div>
                                            <div class="aw-mod aw-user-center-follow-mod collapse">
                                                <div class="mod-body">
                                                    <ul id="contents_user_topics" class="clearfix"></ul>
                                                </div>
                                                <div class="mod-footer">
                                                    <!-- 加载更多内容 -->
                                                    <a class="aw-load-more-content" id="bp_user_topics_more">
                                                        <span>更多</span>
                                                    </a>
                                                    <!-- end 加载更多内容 -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end 自定义切换 -->
                            </div>

                            <div class="tab-pane" id="detail">
                                <div class="aw-mod">
                                    <div class="mod-head">
                                        <h3>详细资料</h3>
                                    </div>
                                    <div class="mod-body aw-user-center-details">
                                        <dl>
                                            <dt><span>个人成就:</span></dt>
                                            <dd>
                                                <p class="meta">
                                                    <span><i class="icon icon-score"></i>积分: <em class="aw-text-color-orange">250</em></span>
                                                    <span><i class="icon icon-agree"></i>赞同: <em class="aw-text-color-orange">0</em></span>
                                                </p>
                                            </dd>
                                        </dl>



                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="integral">
                                <div class="aw-mod">
                                    <div class="mod-head">
                                        <h3><i class="icon icon-point"></i>我的积分</h3>
                                    </div>
                                    <div class="mod-body">
                                        <table class="table table-hover aw-table">
                                            <thead>
                                            <tr class="info">
                                                <th width="14%">时间</th>
                                                <th width="8%">数额</th>
                                                <th width="17%">描述</th>
                                            </tr>
                                            </thead>
                                            <tbody id="contents_user_integral">
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="mod-footer">
                                        <!-- 加载更多内容 -->
                                        <a class="aw-load-more-content" id="bp_user_integral">
                                            <span>更多</span>
                                        </a>
                                        <!-- end 加载更多内容 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 侧边栏 -->
                <div class="aw-side-bar-mod top-articles">
                    <!--<div class="aw-mod-head">-->
                    <!--<h3>置顶</h3>-->
                    <!--</div>-->

                    <div class="aw-side-bar-mod">
                        <div class="aw-mod-head">
                            <p style="font-size: 20px;">关注详情</p>
                        </div>
                        <br />
                        <div class="aw-mod-body">
                            <ul>
                                <li>关注5人</li>
                            </ul>
                        </div>
                        <br />
                        <br />
                        <div class="aw-mod-body">
                            <ul>
                                <li>被5人关注</li>
                            </ul>
                        </div>
                        <br /><br />
                        <div class="aw-mod-body">
                            <ul>
                                <li>关注帖子5个</li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
            <!-- end 侧边栏 -->
        </div>
    </div>
</div>
</div>

<div class="aw-footer aw-wecenter">
    <p>© 2018 美乎. All rights reserved | Design by
        <a href="#">第六组</a>
    </p>
    </span>

</div>
</div>

</body>

</html>
