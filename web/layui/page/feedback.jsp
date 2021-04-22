<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>回馈反馈</title>
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
            url: '/selectFeedBack',
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print'],
            cols: [[
                {field: 'id', width: 180, title: '编号', sort: true},
                {field: 'dormitoryid', width: 180, title: '宿舍号'},
                {field: 'time', width: 180, title: '时间', sort: true},
                {field: 'applicant', width: 180, title: '申请人'},
                {field: 'phone', width: 180, title: '手机号码'},
                {field: 'content', width: 180, title: '反馈内容'},
                {field: 'result', width: 180, title: '请填入反馈' ,edit: 'text'}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: false,
            skin: 'line'
        });

        //监听单元格编辑
        table.on('edit(currentTableFilter)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
            // layer.msg('保修结果 ' + ' 更新为：'+ value);
            console.log(data)
            //ajax方法的开始
            $.ajax({
                type: 'post',
                url: '/updateFeedBack',
                data: {
                    'id': data.id,
                    'dormitoryid': data.dormitoryid,
                    'time': data.time,
                    'applicant':data.applicant,
                    'phone':data.phone,
                    'content': data.content,
                    'result':data.result
                },
                dataType: 'text',
                success: function (res) {
                    console.log(res)
                    if (res === "已更新反馈") {
                        layer.msg('反馈结果 ' + ' 更新为：'+ value);
                    }
                }
            })
            //ajax方法的结束

        });
    });
</script>
</body>
</html>