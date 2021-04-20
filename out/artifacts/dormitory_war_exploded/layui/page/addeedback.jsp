<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>信息反馈</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../lib/layui-v2.6.3/css/layui.css" media="all">
		<link rel="stylesheet" href="../css/public.css" media="all">
		<link rel="stylesheet" href="../lib/lay-module/step-lay/step.css" media="all">
		<style>
			body {
				background-color: #ffffff;
			}
		</style>
	</head>
	<body>



		<div class="layui-form layuimini-form">
			<div class="layui-form-item">
				<label class="layui-form-label required">申报人</label>
				<div class="layui-input-block">
					<!-- <input type="text" name="username" lay-verify="required" lay-reqtext="用户名不能为空" placeholder="请输入用户名"
						value="" class="layui-input"> -->
					<input type="text" name="username" lay-verify="required" placeholder="请输入姓名" value="" class="layui-input" autocomplete="off">

				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label required">宿舍号</label>
				<div class="layui-input-block">
					<input type="number" name="phone" lay-verify="required|" placeholder="请输入宿舍号" value="" class="layui-input" autocomplete="off">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">联系方式</label>
				<div class="layui-input-block">
					<input type="text" name="work" lay-verify="required|phone|number" placeholder="请输入联系方式" value="" class="layui-input" autocomplete="off">
				</div>
			</div>


			<div class="layui-inline layui-form-item" >
				<label class="layui-form-label">日期</label>
				<div class="layui-input-inline">
					<input type="text" name="birthday" id="test1" placeholder="yyyy-MM-dd" class="layui-input" autocomplete="off">
				</div>
			</div>

			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">反馈内容</label>
				<div class="layui-input-block">
					<textarea name="remark" class="layui-textarea" placeholder="请输入反馈信息" autocomplete="off"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn layui-btn-normal" lay-submit lay-filter="saveBtn">确认保存</button>
				</div>
			</div>
		</div>


		<script src="../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
		<!-- 这是引入的js，开始部分 -->
		<script src="../js/lay-config.js?v=1.0.4" charset="utf-8"></script>
		<script>
			layui.use(['layer', 'form', 'layarea'], function() {
				var layer = layui.layer,
					form = layui.form,
					layarea = layui.layarea;

				layarea.render({
					elem: '#area-picker',
					change: function(res) {
						//选择结果
						console.log(res);
					}
				});
			});
		</script>
		
	
		<script>
		layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  
		  //常规用法
		  laydate.render({
		    elem: '#test1'
		  });
		  
		});
		</script>
		
		
		
		<!-- 这是引入的js，结束部分 -->
		<script>
			layui.use(['form'], function() {
				var form = layui.form,
					layer = layui.layer,
					$ = layui.$;
				//监听提交
				form.on('submit(saveBtn)', function(data) {
					var index = layer.alert(JSON.stringify(data.field), {
						title: '最终的提交信息'
					}, function() {
						// 关闭弹出层
						layer.close(index);
						var iframeIndex = parent.layer.getFrameIndex(window.name);
						parent.layer.close(iframeIndex);
					});
					return false;
				});
			});
		</script>
	</body>
</html>