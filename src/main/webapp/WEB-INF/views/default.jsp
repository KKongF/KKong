<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#userTable").DataTable();
		/*
		$("#userTable").dataTable({
			"lengthMenu" : [ [-1, 100, 50, 25, 10], ["ALL", 100, 50, 25, 10] ]
		});
		*/
	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<table id="userTable" class="display" cellspacing="0" width="100%" >
    <thead>
        <tr>
            <th>Email</th>
            <th>Name</th>
            <th>User Status</th>
            <th>Super User</th>
        </tr>
    </thead>
    <!-- tbody 태그 필요 없다. -->
    <tbody>
    	<tr>
    		<td>night08@naver.com</td>
    		<td>공유신</td>
    		<td>M</td>
    		<td>Y</td>
    	</tr>
    	<tr>
    		<td>jiyen618@naver.com</td>
    		<td>민지연</td>
    		<td>F</td>
    		<td>Y</td>
    	</tr>
    	<tr>
    		<td>dbtls08@gmail.com</td>
    		<td>강정윤</td>
    		<td>M</td>
    		<td>Y</td>
    	</tr>
    	<tr>
    		<td>night08@naver.com</td>
    		<td>공유신</td>
    		<td>NR</td>
    		<td>Y</td>
    	</tr>
    </tbody>
</table>

<script type="text/javascript">
	$("#userTable").removeClass('display').addClass('table table-striped table-bordered');
</script>

</body>
</html>