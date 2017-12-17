<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
$(document).ready(function() {
	$("#userTable").dataTable({
		pageLength : 3,
		bPaginate : true,
		bLengChange : true,
		lengthMenu : [ [3, 5, 10, -1], [3, 5, 10, "ALL"] ],
		bAutoWidth : false,
		processing : true,
		ordering : true,
		serverSide : false,
		searching : true,
		ajax : {
			"url"  : "getUserList.do",
			"type" : "POST",
			"data" : function(d) {
				d.userStatCd = "NR";
			}
		},
		columns : [
			{data : "email"},
			{data : "fullNmKr"},
			{data : "userStatCd"},
			{data : "superUser"}
		]
	});
});
</script>

<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css">
<script type="text/javascript" src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<table id="userTable" class="table table-striped table-bordered table-hover" >
    <thead>
        <tr>
            <th>Email</th>
            <th>Name</th>
            <th>User Status</th>
            <th>Super User</th>
        </tr>
    </thead>
    <!-- tbody 태그 필요 없다. -->
</table>


</body>
</html>