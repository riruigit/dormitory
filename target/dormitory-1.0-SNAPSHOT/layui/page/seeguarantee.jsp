<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>宿舍保修</title>
    <meta name="renderer" content="webkit">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">


        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>


    </div>
</div>
<script src="../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>

<script language=JavaScript>
    $(document).ready(function () {
        if(location.href.indexOf("#reloaded")===-1){
            location.href=location.href+"#reloaded";
            location.reload();
        }
    })
</script>

<script>
    layui.use(['form', 'table'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table;

        table.render({
            elem: '#currentTableId',
            url: '/allguarantee',
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print'],
            cols: [[
                {field: 'time', width: 180, title: '时间', sort: true},
                {field: 'dormitoryid', width: 180, title: '宿舍号'},
                {field: 'content', width: 180, title: '内容'},
                {field: 'result', width: 180, title: '回复' }
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: false,
            skin: 'line'
        });
        table.reload()
    });
</script>
</body>
</html>