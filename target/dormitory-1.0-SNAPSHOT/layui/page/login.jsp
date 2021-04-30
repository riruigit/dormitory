<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>宿舍管理系统</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../lib/layui-v2.6.3/css/layui.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .main-body {
            top: 50%;
            left: 50%;
            position: absolute;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            overflow: hidden;
        }

        .login-main .login-bottom .center .item input {
            display: inline-block;
            width: 227px;
            height: 22px;
            padding: 0;
            position: absolute;
            border: 0;
            outline: 0;
            font-size: 14px;
            letter-spacing: 0;
        }

        .login-main .login-bottom .center .item .icon-1 {
            background: url(../images/icon-login.png) no-repeat 1px 0;
        }

        .login-main .login-bottom .center .item .icon-2 {
            background: url(../images/icon-login.png) no-repeat -54px 0;
        }

        .login-main .login-bottom .center .item .icon-3 {
            background: url(../images/icon-login.png) no-repeat -106px 0;
        }

        .login-main .login-bottom .center .item .icon-4 {
            background: url(../images/icon-login.png) no-repeat 0 -43px;
            position: absolute;
            right: -10px;
            cursor: pointer;
        }

        .login-main .login-bottom .center .item .icon-5 {
            background: url(../images/icon-login.png) no-repeat -55px -43px;
        }

        .login-main .login-bottom .center .item .icon-6 {
            background: url(../images/icon-login.png) no-repeat 0 -93px;
            position: absolute;
            right: -10px;
            margin-top: 8px;
            cursor: pointer;
        }

        .login-main .login-bottom .tip .icon-nocheck {
            display: inline-block;
            width: 10px;
            height: 10px;
            border-radius: 2px;
            border: solid 1px #9abcda;
            position: relative;
            top: 2px;
            margin: 1px 8px 1px 1px;
            cursor: pointer;
        }

        .login-main .login-bottom .tip .icon-check {
            margin: 0 7px 0 0;
            width: 14px;
            height: 14px;
            border: none;
            background: url(../images/icon-login.png) no-repeat -111px -48px;
        }

        .login-main .login-bottom .center .item .icon {
            display: inline-block;
            width: 33px;
            height: 22px;
        }

        .login-main .login-bottom .center .item {
            width: 288px;
            height: 35px;
            border-bottom: 1px solid #dae1e6;
            margin-bottom: 35px;
        }

        .login-main {
            width: 428px;
            position: relative;
            float: left;
        }

        .login-main .login-top {
            height: 117px;
            background-color: #148be4;
            border-radius: 12px 12px 0 0;
            font-family: SourceHanSansCN-Regular;
            font-size: 30px;
            font-weight: 400;
            font-stretch: normal;
            letter-spacing: 0;
            color: #fff;
            line-height: 117px;
            text-align: center;
            overflow: hidden;
            -webkit-transform: rotate(0);
            -moz-transform: rotate(0);
            -ms-transform: rotate(0);
            -o-transform: rotate(0);
            transform: rotate(0);
        }

        .login-main .login-top .bg1 {
            display: inline-block;
            width: 74px;
            height: 74px;
            background: #fff;
            opacity: .1;
            border-radius: 0 74px 0 0;
            position: absolute;
            left: 0;
            top: 43px;
        }

        .login-main .login-top .bg2 {
            display: inline-block;
            width: 94px;
            height: 94px;
            background: #fff;
            opacity: .1;
            border-radius: 50%;
            position: absolute;
            right: -16px;
            top: -16px;
        }

        .login-main .login-bottom {
            width: 428px;
            background: #fff;
            border-radius: 0 0 12px 12px;
            padding-bottom: 53px;
        }

        .login-main .login-bottom .center {
            width: 288px;
            margin: 0 auto;
            padding-top: 40px;
            padding-bottom: 15px;
            position: relative;
        }

        .login-main .login-bottom .tip {
            clear: both;
            height: 16px;
            line-height: 16px;
            width: 288px;
            margin: 0 auto;
        }

        body {
            background: url(../images/loginbg.png) 0% 0% / cover no-repeat;
            position: static;
            font-size: 12px;
        }

        input::-webkit-input-placeholder {
            color: #a6aebf;
        }

        input::-moz-placeholder { /* Mozilla Firefox 19+ */
            color: #a6aebf;
        }

        input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color: #a6aebf;
        }

        input:-ms-input-placeholder { /* Internet Explorer 10-11 */
            color: #a6aebf;
        }

        input:-webkit-autofill { /* 取消Chrome记住密码的背景颜色 */
            -webkit-box-shadow: 0 0 0 1000px white inset !important;
        }

        html {
            height: 100%;
        }

        .login-main .login-bottom .tip {
            clear: both;
            height: 16px;
            line-height: 16px;
            width: 288px;
            margin: 0 auto;
        }

        .login-main .login-bottom .tip .login-tip {
            font-family: MicrosoftYaHei;
            font-size: 12px;
            font-weight: 400;
            font-stretch: normal;
            letter-spacing: 0;
            color: #9abcda;
            cursor: pointer;
        }

        .login-main .login-bottom .tip .forget-password {
            font-stretch: normal;
            letter-spacing: 0;
            color: #1391ff;
            text-decoration: none;
            position: absolute;
            right: 62px;
        }

        .login-main .login-bottom .login-btn {
            width: 288px;
            height: 40px;
            background-color: #1E9FFF;
            border-radius: 16px;
            margin: 24px auto 0;
            text-align: center;
            line-height: 40px;
            color: #fff;
            font-size: 14px;
            letter-spacing: 0;
            cursor: pointer;
            border: none;
        }

        .login-main .login-bottom .center .item .validateImg {
            position: absolute;
            right: 1px;
            cursor: pointer;
            height: 36px;
            border: 1px solid #e6e6e6;
        }

        .footer {
            left: 0;
            bottom: 0;
            color: #fff;
            width: 100%;
            position: absolute;
            text-align: center;
            line-height: 30px;
            padding-bottom: 10px;
            text-shadow: #000 0.1em 0.1em 0.1em;
            font-size: 14px;
        }

        .padding-5 {
            padding: 5px !important;
        }

        .footer a, .footer span {
            color: #fff;
        }

        @media screen and (max-width: 428px) {
            .login-main {
                width: 360px !important;
            }

            .login-main .login-top {
                width: 360px !important;
            }

            .login-main .login-bottom {
                width: 360px !important;
            }
        }
    </style>
</head>
<body>
<div class="main-body">
    <div class="login-main">
        <div class="login-top">
            <span>宿舍管理登录</span>
            <span class="bg1"></span>
            <span class="bg2"></span>
        </div>
        <form class="layui-form login-bottom">
            <div class="center">
                <div class="item">
                    <span class="icon icon-2"></span>
                    <input type="text" name="id" autocomplete="off" lay-verify="required|name" placeholder="请输入登录学号"
                           maxlength="24"/>
                </div>

                <div class="item">
                    <span class="icon icon-3"></span>
                    <input type="password" name="password" autocomplete="off" lay-verify="required|pass" placeholder="请输入密码"
                           maxlength="20">
                    <span class="bind-password icon icon-4"></span>
                </div>


                <div id="validatePanel" class="item" style="width: 137px;">
                    <input type="text" name="captcha" placeholder="请输入验证码" maxlength="4" autocomplete="off">
                    <img id="refreshCaptcha" class="validateImg" src="/easy/cap">
                </div>


                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="radio" name="identity" value="学生" title="学生" checked="">
                        <input type="radio" name="identity" value="楼管" title="楼管">
                        <input type="radio" name="identity" value="管理员" title="管理员">
                    </div>
                </div>

            </div>
<%--            <div class="tip">--%>

<%--                <span class="login-tip" style="color: #1391ff ">注册账号</span>--%>
<%--                <a href="javascript:" class="forget-password">忘记密码</a>--%>
<%--                <!--                <a style="position: absolute;right: 130px;color: #1391ff" href="https://www.baidu.com">注册账号</a>-->--%>
<%--                <!--                这个在一个div中的位置div右边130px的位置-->--%>
<%--            </div>--%>
            <div class="layui-form-item" style="text-align:center; width:100%;height:100%;margin:0px;">
                <button class="login-btn" lay-submit="login" lay-filter="login">立即登录</button>
            </div>
        </form>
    </div>
</div>
<div class="footer">
    ©版权所有 2014-2018 叁贰柒工作室<span class="padding-5">|</span><a target="_blank" href="http://www.miitbeian.gov.cn">粤ICP备16006642号-2</a>
</div>
<script src="../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
<!--因为需要使用jquery.ajax，所以需要引入jquery。（在线引入，百度的cdn）-->
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script>
    layui.use(['form', 'jquery'], function () {
        const $ = layui.jquery,
            form = layui.form,
            layer = layui.layer;
        //进行登录操作
        form.on('submit(login)', function (data) {
            data = data.field;
            console.log('获取到的验证码' + data.captcha + '获取到的id' + data.id + '获取到的password' + data.password)
            // 登陆页面使用ajax来传递参数
            if (data.captcha === '') {
                layer.msg("请输入验证码", {time: 2000}, function () {
                    location.reload()
                })
                return false;
            }




            //ajax方法的开始
            $.ajax({
                type: 'post',
                url: '/login',
                data: {
                    'id': data.id,
                    'password': data.password,
                    'captcha': data.captcha,
                    'identity': data.identity
                },
                dataType: 'text',
                success: function (res) {
                    console.log(res)
                    if (res === "账号不存在") {
                        layer.msg("账号不存在,即将刷新页面", {time: 2000}, function () {
                            location.reload()
                        })
                    } else {
                        if (res === "密码错误") {
                            layer.msg("密码错误,即将刷新页面", {time: 2000}, function () {
                                location.reload()
                            })
                        } else {
                            if (res === "验证码错误") {
                                layer.msg("验证码错误,即将刷新页面", {time: 2000}, function () {
                                    location.reload()
                                })
                            } else {
                                if (res === "身份选择错误") {
                                    layer.msg("身份错误,即将刷新页面", {time: 2000}, function () {
                                        location.reload()
                                    })
                                } else {
                                    layer.msg("登录成功")
                                    window.location = '../index.jsp';
                                }
                            }
                        }
                    }
                }
            })
            //ajax方法的结束
            return false;
        });


        form.verify({

            //用户名-函数
            name: [
                /^\d{10}$/
                ,'账号必须10位纯数字'
            ]

            //密码-正则
            ,pass: [
                /^[\S]{6}$/
                ,'密码必须6位，且不能出现空格'
            ]
        });
    });
</script>
</body>
</html>
,