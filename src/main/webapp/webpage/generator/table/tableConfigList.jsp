<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="table-scrollable">
	<table class="table table-striped table-hover table-success">
		<thead>
			<tr>
				<th>#</th>
				<th>功能描述</th>
				<th>表名</th>
				<th>类名</th>
				<th>是否有多选框</th>
				<th>是否分页</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${page.result }" var="table" varStatus="vs">
			<tr>
				<td>${vs.count + page.offset}</td>
				<td>${table.description }</td>
				<td>${table.tableName }</td>
				<td>${table.className }</td>
				<td>${table.isCheckbox }</td>
				<td>${table.isPage }</td>
				<td>
					<a href="javascript:;" class="btn btn-sm blue" onclick="update('/tableConfig/tableConfig?id=${table.id}')">
						<i class="fa fa-edit"></i>编辑
					</a>
					<a href="javascript:;" class="btn btn-sm purple" onclick="update('/generator/goBuild?id=${table.id}')">
						<i class="fa fa-external-link"></i>生成代码
					</a>
					<a href="javascript:;" class="btn btn-sm red" onclick="del('/tableConfig/delete?id=${table.id}')">
						<i class="fa fa-trash"></i>删除
					</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div class="pageination-panel">${page}</div>