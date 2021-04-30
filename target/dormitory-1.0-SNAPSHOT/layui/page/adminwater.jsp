<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>查看取水</title>
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

<script>
    layui.use(['form', 'table'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table;
        table.render({
            elem: '#currentTableId',
            url: '/seewater',
            toolbar: '#toolbarDemo',
            cellMinWidth: 80,
            defaultToolbar: ['filter', 'exports', 'print'],
            cols: [[
                // {field: 'id', title: 'id', sort: true},
                {field: 'time', title: '时间', sort: true},
                {field: 'dormitoryid', title: '宿舍号'}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: false,
            skin: 'line'
        });
    });
</script>


</body>
</html>