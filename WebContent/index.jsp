<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ticket Booking System</title>

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Lato:400,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.min.css" />

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />

</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="booking-cta">
							<h1></h1>
							<p></p>
						</div>
					</div>
					<div class="col-md-7 col-md-offset-1">
						<div class="booking-form">
							<form method="get" action="BookTicketController">
								<div class="form-group">
									<div class="form-checkbox">
										<label for="roundtrip"> <input type="radio"
											id="roundtrip" name="flight-type" checked> <span></span>Metro
										</label> <label for="one-way"> <input type="radio"
											id="one-way" name="flight-type"> <span></span>Railway
										</label>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Source</span> <select
												class="form-control" name="source" id="source" onchange="validateSourceAndDestination()">
												<option value="ghatkopar">Ghatkopar</option>
												<option value="andheri">Andheri</option>
												<option value="chakala">Chakala</option>
												<option value="marolnaka">Marol Naka</option>
												<option value="versova">Versova</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Destination</span> <select
												class="form-control" name="destination" id="destination" onchange="validateSourceAndDestination()">
												<option value="andheri">Andheri</option>
												<option value="ghatkopar">Ghatkopar</option>
												<option value="chakala">Chakala</option>
												<option value="marolnaka">Marol Naka</option>
												<option value="versova">Versova</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<span class="form-label">Departing date</span> <input
												class="form-control" type="date" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Adults (18+)</span> <select
												class="form-control">
												<option>1</option>
												<option>2</option>
												<option>3</option>
											</select> <span class="select-arrow"></span>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Children (0-17)</span> <select
												class="form-control">
												<option>0</option>
												<option>1</option>
												<option>2</option>
											</select> <span class="select-arrow"></span>
										</div>
									</div>
								</div>
								<div class="form-btn">
									<button class="submit-btn" name="btnSubmit" id="btnSubmit">Book Ticket</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
function validateSourceAndDestination(){
	var x = document.getElementById("source").value;
	var y = document.getElementById("destination").value;
	if(x===y){
		document.getElementById("btnSubmit").disabled = true;
		alert('Source and destination cannot be same');
	}else{
		document.getElementById("btnSubmit").disabled = false;
	}
	
}
</script>
</html>