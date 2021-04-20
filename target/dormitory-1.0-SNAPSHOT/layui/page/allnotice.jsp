<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
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

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="del">查看</a>
</script>

<script src="../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>

<script>
    layui.use(['form', 'table'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table;
        table.render({
            elem: '#currentTableId',
            url: '/allList',
            toolbar: '#toolbarDemo',
            cellMinWidth: 80,
            defaultToolbar: ['filter', 'exports', 'print'],
            cols: [[
                {field: 'time', title: '时间', sort: true},
                {field: 'theme', title: '主题'},
                {field: 'content', title: '内容'},
                {field: 'author', title: '发布者'},

                // {field: 'sign', title: '签名', minWidth: 150},

                {title: '操作', minWidth: 150, toolbar: '#barDemo', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: false,
            skin: 'line'
        });

        //工具条事件
        table.on('tool(currentTableFilter)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'del') { //查看
                layer.confirm('<br>'+data.content+'<br><br>');
            }
        });
    });
</script>


</body>
</html>