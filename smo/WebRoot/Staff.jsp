<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Staff MS</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/easyui/themes/icon.css" />
<script
	src="${pageContext.request.contextPath }/resources/easyui/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/easyui/jquery.easyui.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/easyui/locale/easyui-lang-zh_CN.js"></script>
</head>

<body>
	
	<div style="margin: 10px 30px">
	
	  <div id="searchCarForm" style="padding: 10px">
	  	 <div style="margin-bottom: 10px">
	  	 	   
	  	 </div>
	  	 
	  
		</div>

		<div style="margin-top: 10px">
			<table id="staffDataGrid">

			</table>
		</div>
	</div>
	<script type="text/javascript">
	  $(function(){		  
		  $("#staffDataGrid").datagrid({
			  url : "StaffList",
        title : 'Staff列表',
        fitColumns : true, 
        striped : true,    
        rownumbers : true, 
        columns:[[{ 
          field : 'ename',  // field 名必需与json中的名一致
          title : '姓名',
          width : 50,
          checkbox : true,
          sortable : true
        }, {
          field : 'job',
          title : '职位',
          width : 100,
          sortable : true,
        }, {
         field : 'dname',
         title : '部门名',
         width : 200,
         sortable : true,
       }, {
         field : 'loc',
         title : '所在地',
         width : 100,
         sortable : true,
       }, {
          field : 'sal',
          title : '工资',
          width : 100,
          sortable : true,
        }]],
       toolbar : "#searchCarForm",
       pagination : true, 
       pageSize : 5,
       pageList : [5, 10, 15, 20, 50 ],
       sortName : "sal", 
       sortOrder : "DESC", 
		  });
	  });
	</script>
</body>
</html>