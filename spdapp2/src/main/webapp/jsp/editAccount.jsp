<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit bank props</title>
</head>

<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

<body>
	<h1 align="center">СПД <c:out value="${spd.alias}"/> | Редактирование счета</h1>
	<p>
	<form class="form" role="form" action="account" method="post">
		<input type="hidden" name="edit">
		<input type="hidden" name="id" value="${account.id}">
		
		<table border="0" width="50%">
			
			<tr>
				<td valign="top">
					<div class="form-group">
						<input type="hidden" class="form-control" id="spdId"
							name="spdId" value="${account.spdId}">
					</div>
					<div class="form-group">
						<label for="bankAccount" class="col-sm-10 control-label">Номер счета</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="accountNumber"
								name="accountNumber" placeholder="Введите номер счета" value="${account.accountNumber}">
						</div>
					</div>
					<div class="form-group">
						<label for="bankName" class="col-sm-6 control-label">Наименование банка</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="bankName"
								name="bankName" placeholder="Введите наименование банка" value="${account.bankName}">
						</div>
					</div>
					<div class="form-group">
						<label for="mfo" class="col-sm-10 control-label">МФО</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="mfo"
								name="mfo" placeholder="Введите МФО" value="${account.mfo}">
						</div>
					</div>
			</tr>
		</table>
		<!-- ---------------------------------------------------------------------------------------- -->
		<div class="form-group">
			<label for="button" class="col-sm-10 control-label"></label>
			<div class="col-sm-offset-10 col-sm-10">
				<input type="submit" class="btn btn-success" id="button"
					value="Сохранить"> <br> <a href="listAllSPD">Вернуться
					к списку СПД</a>
			</div>
		</div>
	</form>



	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>