<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'>

<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
 <link rel="stylesheet" href="Style.css">
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
body {
	background-position: center;
	background-image:url(./images/log2.jpg) ;
	background-size: cover;
	font-weight: bold;
	justify-content: center;
	 text-align:center;
}

.forgot {
	background-color: #fff;
	padding: 12px;
	border: 1px solid #dfdfdf
}

.padding-bottom-3x {
	padding-bottom: 72px !important
}

.card-footer {
	background-color: #fff
}

.btn {
	font-size: 13px
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #76b7e9;
	outline: 0;
	box-shadow: 0 0 0 0px #28a745
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body'>
	<div class="container padding-bottom-3x mb-2 mt-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
			<br><br><br><br><br><br>
			<h2 class="titre-texte">
				<span>F</span>orgot your password?
			</h2>
		
				<form class="card mt-4" action="Password" method="POST">
					<div class="card-body">
						<div class="form-group">
							<label for="email-for-pass">Enter your email address</label> <input
								class="form-control" type="text" name="email" id="email-for-pass" required=""><small
								class="form-text text-muted">Enter the registered email address .</small>
						</div>
					</div>
					<div class="card-footer">
						<button class="btn btn-success" type="submit">Get New
							Password</button>
						<button class="btn btn-danger" type="submit">Back to
							Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript' src=''></script>
	<script type='text/javascript' src=''></script>
	<script type='text/Javascript'></script>
</body>
</html>