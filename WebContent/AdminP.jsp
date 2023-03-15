<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="admin.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
  <title>Document</title>
</head>
<body>
	<div class="container" id="container">
           <h1 style=" color:black">HI,<c:if LoginA="${!empty sessionScope.username }">
                         ${ sessionScope.username }
                            </c:if></h1>       
		<div class="form-container login-container">
		
			<form action="AddMenu" method="post"  >
				<br><h1>form</h1><br>
				<input type="text" name="name" placeholder="Name">
                <input type="file" name="PDF"  placeholder="PDF">
				<input type="file" name="image" placeholder="image">
				<button>ADD</button><br>
			</form>
		</div>

		<div class="overlay-container">
			<div class="overlay">
				
				<div class="overlay-panel overlay-right">
					<h1>You're welcome to ADD an Book here.</h1>
					
					<button class="ghost" id="signUp"><a href="./MenuS">Return to Menu</a></button>
				</div>
			</div>
		</div>
	</div>

	<script src="script.js" charset="utf-8"></script>
</body>
</html>