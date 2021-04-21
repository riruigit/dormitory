<%@ page import="java.util.List" %>
<%@ page import="com.lingnan.dormitory.pojo.Dornotice" %>
<%@ page import="java.util.Vector" %>
<%@ page import="javax.swing.text.html.HTMLDocument" %>
<%@ page import="org.apache.ibatis.javassist.bytecode.Descriptor" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>宿舍管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <link rel="stylesheet" href="../css/public.css" media="all">
    <style>
        .layui-card {
            border: 1px solid #f2f2f2;
            border-radius: 5px;
        }

        .icon {
            margin-right: 10px;
            color: #1aa094;
        }

        .icon-cray {
            color: #ffb800 !important;
        }

        .icon-blue {
            color: #1e9fff !important;
        }

        .icon-tip {
            color: #ff5722 !important;
        }

        .layuimini-qiuck-module {
            text-align: center;
            margin-top: 10px
        }

        .layuimini-qiuck-module a i {
            display: inline-block;
            width: 100%;
            height: 60px;
            line-height: 60px;
            text-align: center;
            border-radius: 2px;
            font-size: 30px;
            background-color: #F8F8F8;
            color: #333;
            transition: all .3s;
            -webkit-transition: all .3s;
        }

        .layuimini-qiuck-module a cite {
            position: relative;
            top: 2px;
            display: block;
            color: #666;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            font-size: 14px;
        }

        .welcome-module {
            width: 100%;
            height: 210px;
        }

        .panel {
            background-color: #fff;
            border: 1px solid transparent;
            border-radius: 3px;
            -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05)
        }

        .panel-body {
            padding: 10px
        }

        .panel-title {
            margin-top: 0;
            margin-bottom: 0;
            font-size: 12px;
            color: inherit
        }

        .label {
            display: inline;
            padding: .2em .6em .3em;
            font-size: 75%;
            font-weight: 700;
            line-height: 1;
            color: #fff;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: .25em;
            margin-top: .3em;
        }

        .layui-red {
            color: red
        }

        .main_btn > p {
            height: 40px;
        }

        .layui-bg-number {
            background-color: #F8F8F8;
        }

        .layuimini-notice:hover {
            background: #f6f6f6;
        }

        .layuimini-notice {
            padding: 7px 16px;
            clear: both;
            font-size: 12px !important;
            cursor: pointer;
            position: relative;
            transition: background 0.2s ease-in-out;
        }

        .layuimini-notice-title,
        .layuimini-notice-label {
            padding-right: 70px !important;
            text-overflow: ellipsis !important;
            overflow: hidden !important;
            white-space: nowrap !important;
        }

        .layuimini-notice-title {
            line-height: 28px;
            font-size: 14px;
        }

        .layuimini-notice-extra {
            position: absolute;
            top: 50%;
            margin-top: -8px;
            right: 16px;
            display: inline-block;
            height: 16px;
            color: #999;
        }
    </style>
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md8">
                <div class="layui-row layui-col-space15">
<%--                    <div class="layui-col-md6">--%>
<%--                        <div class="layui-card">--%>
<%--                            <div class="layui-card-header"><i class="fa fa-warning icon"></i>数据统计</div>--%>
<%--                            <div class="layui-card-body">--%>
<%--                                <div class="welcome-module">--%>
<%--                                    <div class="layui-row layui-col-space10">--%>
<%--                                        <div class="layui-col-xs6">--%>
<%--                                            <div class="panel layui-bg-number">--%>
<%--                                                <div class="panel-body">--%>
<%--                                                    <div class="panel-title">--%>
<%--                                                        <span class="label pull-right layui-bg-blue">实时</span>--%>
<%--                                                        <h5>今天日期</h5>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="panel-content">--%>
<%--                                                        <h1 class="no-margins" id="gettime"></h1>--%>
<%--                                                        <small id="getday"></small>--%>


<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs6">--%>
<%--                                            <div class="panel layui-bg-number">--%>
<%--                                                <div class="panel-body">--%>
<%--                                                    <div class="panel-title">--%>
<%--                                                        <span class="label pull-right layui-bg-cyan">实时</span>--%>
<%--                                                        <h5>保修申请</h5>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="panel-content">--%>
<%--                                                        <h1 class="no-margins">4</h1>--%>
<%--                                                        <small>当前分类总记录数</small>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs6">--%>
<%--                                            <div class="panel layui-bg-number">--%>
<%--                                                <div class="panel-body">--%>
<%--                                                    <div class="panel-title">--%>
<%--                                                        <span class="label pull-right layui-bg-orange">实时</span>--%>
<%--                                                        <h5>取水订单</h5>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="panel-content">--%>
<%--                                                        <h1 class="no-margins">4</h1>--%>
<%--                                                        <small>当前分类总记录数</small>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs6">--%>
<%--                                            <div class="panel layui-bg-number">--%>
<%--                                                <div class="panel-body">--%>
<%--                                                    <div class="panel-title">--%>
<%--                                                        <span class="label pull-right layui-bg-green">实时</span>--%>
<%--                                                        <h5>反馈消息</h5>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="panel-content">--%>
<%--                                                        <h1 class="no-margins">4</h1>--%>
<%--                                                        <small>当前分类总记录数</small>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="layui-col-md6">--%>
<%--                        <div class="layui-card">--%>
<%--                            <div class="layui-card-header"><i class="fa fa-credit-card icon icon-blue"></i>快捷入口</div>--%>
<%--                            <div class="layui-card-body">--%>
<%--                                <div class="welcome-module">--%>
<%--                                    <div class="layui-row layui-col-space10 layuimini-qiuck">--%>

<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <a href="javascript:" layuimini-content-href="page/allnotice.jsp"--%>
<%--                                               data-title="公告管理" data-icon="fa fa-window-maximize">--%>
<%--                                                <i class="layui-icon layui-icon-user"></i>--%>
<%--                                                <cite>全部公告</cite>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <a href="javascript:" layuimini-content-href="page/setting.html"--%>
<%--                                               data-title="宿舍保修" data-icon="fa fa-gears">--%>
<%--                                                <i class="fa fa-gears"></i>--%>
<%--                                                <cite>宿舍保修</cite>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <a href="javascript:" layuimini-content-href="page/table.html"--%>
<%--                                               data-title="取水预约" data-icon="fa fa-file-text">--%>
<%--                                                <i class="fa fa-file-text"></i>--%>
<%--                                                <cite>取水预约</cite>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <a href="javascript:" layuimini-content-href="page/icon.html"--%>
<%--                                               data-title="信息反馈" data-icon="fa fa-dot-circle-o">--%>
<%--                                                <i class="fa fa-dot-circle-o"></i>--%>
<%--                                                <cite>信息反馈</cite>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                    </div>--%>
                    <div class="layui-col-md12">
                        <div class="layui-card">
                            <div class="layui-card-header" style="text-align: center"><i
                                    class="fa fa-line-chart icon "></i>宿舍管理系统
                            </div>
                            <div class="layui-card-body">

                                <div style="width:100%;min-height:300px;">
                                    <p style=" padding:5px 20px 5px 50px;">姓名：${sessionScope.userInfo.name}<br/></p>
                                    <p style=" padding:5px 20px 5px 50px;">学号：${sessionScope.userInfo.id}<br/></p>
                                    <p style=" padding:5px 20px 5px 50px;">性别：${sessionScope.userInfo.gender}<br/></p>
                                    <p style=" padding:5px 20px 5px 50px;">身份：${sessionScope.userInfo.identity} <br/>
                                    </p>
                                    <p style=" padding:5px 20px 5px 50px;">苑区：${sessionScope.userInfo.courtyard}<br/>
                                    </p>
                                    <p style=" padding:5px 20px 5px 50px;">宿舍号：${sessionScope.userInfo.dormitoryid}<br/>
                                    </p>
                                    <p style=" padding:5px 20px 5px 50px;">院系：${sessionScope.userInfo.department}<br/>
                                    </p>
                                    <p style=" padding:5px 20px 5px 50px;">班别：${sessionScope.userInfo.classroom}<br/>
                                    </p>
                                    <p style=" padding:5px 20px 5px 50px;">联系方式：${sessionScope.userInfo.phone}<br/></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="layui-col-md4">

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-bullhorn icon icon-tip"></i>宿舍公告</div>
                    <div class="layui-card-body layui-text">

                        <% List<Dornotice> notelist = (List<Dornotice>) request.getSession().getAttribute("notelist");
                            for (Dornotice deprecated : notelist) {

                        %>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title"><%=deprecated.getTheme()%>
                            </div>
                            <div class="layuimini-notice-extra"><%=deprecated.getTime()%>
                            </div>
                            <div class="layuimini-notice-content layui-hide">
                                <br>
                                <%=deprecated.getContent()%>
                                <br>
                                <br>
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>

<%--                <div class="layui-card">--%>
<%--                    <div class="layui-card-header"><i class="fa fa-fire icon"></i>最近订单 <i style="float: right;">更多订单</i>--%>
<%--                    </div>--%>
<%--                    <div class="layui-card-body layui-text">--%>
<%--                        <table class="layui-table">--%>
<%--                            <colgroup>--%>
<%--                                <col width="100">--%>
<%--                                <col>--%>
<%--                            </colgroup>--%>
<%--                            <tbody>--%>
<%--                            <tr>--%>
<%--                                <td>4月14</td>--%>
<%--                                <td>--%>
<%--                                    未配送--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td>4月12</td>--%>
<%--                                <td>已配送</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td>4月12</td>--%>
<%--                                <td>已退款</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td>4月12</td>--%>
<%--                                <td>已配送</td>--%>
<%--                            </tr>--%>
<%--                            </tbody>--%>
<%--                        </table>--%>
<%--                    </div>--%>
<%--                </div>--%>


            </div>
        </div>
    </div>
</div>
<script src="../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
<script src="../js/lay-config.js?v=1.0.4" charset="utf-8"></script>


<%--<script>--%>
<%--    setInterval("gettime.innerHTML=' 星期'+'日一二三四五六'.charAt(new Date().getDay());", 1000);--%>
<%--</script>--%>
<%--<script>--%>
<%--    setInterval("getday.innerHTML=new Date().toLocaleString();", 1000);--%>
<%--</script>--%>


<script>
    layui.use(['layer', 'miniTab', 'echarts'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            miniTab = layui.miniTab,
            echarts = layui.echarts;

        miniTab.listen();

        /**
         * 查看公告信息
         **/
        $('body').on('click', '.layuimini-notice', function () {
            var title = $(this).children('.layuimini-notice-title').text(),
                noticeTime = $(this).children('.layuimini-notice-extra').text(),
                content = $(this).children('.layuimini-notice-content').html();
            var html =
                '<div style="padding:15px 20px; text-align:justify; line-height: 22px;border-bottom:1px solid #e2e2e2;background-color: #2f4056;color: #ffffff">\n' +
                '<div style="text-align: center;margin-bottom: 20px;font-weight: bold;border-bottom:1px solid #718fb5;padding-bottom: 5px"><h4 class="text-danger">' +
                title + '</h4></div>\n' +
                '<div style="font-size: 12px">' + content + '</div>\n' +
                '</div>\n';
            parent.layer.open({
                type: 1,
                title: '系统公告' + '<span style="float: right;right: 1px;font-size: 12px;color: #b1b3b9;margin-top: 1px">' +
                    noticeTime + '</span>',
                area: '300px;',
                shade: 0.8,
                id: 'layuimini-notice',
                btn: ['确定'],
                btnAlign: 'c',
                moveType: 1,
                content: html,
                // success: function (layero) {
                //     var btn = layero.find('.layui-layer-btn');
                //     btn.find('.layui-layer-btn0').attr({
                //         href: 'https://gitee.com/zhongshaofa/layuimini',
                //         target: '_blank'
                //     });
                // }
            });
        });
    });
</script>
</body>
</html>
