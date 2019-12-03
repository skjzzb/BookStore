<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
	
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"> <!-- Resource style -->
	<link rel="stylesheet" href="css/demo.css"> <!-- Demo style -->
  	
	<title>Log In &amp; Sign Up Form | CodyHouse</title>
</head>
<body>
	<header class="cd-main-header">
		<div class="cd-main-header__logo"><a href="#0"><img src="images/logo.png" alt="Logo"></a></div>

		<nav class="cd-main-nav js-main-nav">
			<ul class="cd-main-nav__list trigger">
				<!-- inser more links here -->
				<li class="dropdown">
        		<a class=" --dropdown " data-toggle="dropdown" href="#">Store
        		<span class="caret"></span></a>
			        <ul class="dropdown-menu">
			          <li><a href="#">Historicals</a></li>
			          <li><a href="#">Thriller</a></li>
			          <li><a href="#">Novels</a></li>
			           <li><a href="#">Drama</a></li>
			        </ul>1
		      </li>	
				<li class="product"><a class=" product-nav" href="Viewproduct.jsp" >Product</a></li>
				<li class="product"><a class=" product-nav" href="product.jsp" >Product123</a></li>		      
				<li><a class="sign-in" href="#0" data-signin="login">Sign in</a></li>
				<li><a class=" --signup" href="#0" data-signin="signup">Sign up</a></li>
				
				</ul>
			
		</nav>
	</header>

	  <!-- Indicators <div class="cd-intro">
		<h1>Login/Signup Modal Window</h1>
		<div class="cd-nugget-info">--> <!-- MY   carsol -->
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/3.jpg" alt="Los Angeles">
    </div>

    <div class="item">
      <img src="images/1.jpg" alt="Chicago">
    </div>

    <div class="item">
      <img src="images/2.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	<!--	</div>  Carosole information 
	</div>-->

	<div class="signin-background js-signin-modal"> <!-- this is the entire modal form, including the background -->
		<div class="signin-background__container"> <!-- this is the container wrapper -->
			<ul class="signin-background__switcher ">
				<li><a href="#0" data-signin="login" data-type="login">Sign in</a></li>
				<li><a href="#0" data-signin="signup" data-type="signup">New account</a></li>
			</ul>

			<div class=" signin-modal" data-type="login"> <!-- log in form -->
				<form class="signin-form" action="login.jsp" method="post">
					<p class="fieldset">
						<label class=" --email " for="signin-email">E-mail</label>
						<input class="background__input " name="username" id="signin-email" type="text" placeholder="E-mail">
						<span class="background__error">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class=" --password " for="signin-password">Password</label>
						<input class="background__input " name="password"id="signin-password" type="text"  placeholder="Password">
						<a href="#0" class="hide-pass js-hide-password">Hide</a>
						<span class="background__error">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked class="background__input ">
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="submit" value="Login">
					</p>
				</form>
				
				<p class="bottom-message trigger"><a href="#0" data-signin="reset">Forgot your password?</a></p>
			</div> <!--  -->

			<div class=" signin-modal" data-type="signup"> <!-- sign up form -->
				<form class="signin-form" action="signup.jsp" method="post">
					<p class="fieldset">
						<label class=" --username " for="signup-username">Username</label>
						<input class="background__input " name="username" id="signup-username" type="text" placeholder="Username">
						<span class="background__error">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class=" --email " for="signup-email">E-mail</label>
						<input class="background__input " name="email" id="signup-email" type="email" placeholder="E-mail">
						<span class="background__error">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class=" --password " for="signup-password">Password</label>
						<input class="background__input " name="password" id="signup-password" type="text"  placeholder="Password">
						<a href="#0" class="hide-pass js-hide-password">Hide</a>
						<span class="background__error">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms" class="background__input ">
						<label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Create account">
					</p>
				</form>
			</div> <!--  -->

			<div class=" signin-modal" data-type="reset"> <!-- reset password form -->
				<p class="signin-background__message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

				<form class="signin-form">
					<p class="fieldset">
						<label class=" --email " for="reset-email">E-mail</label>
						<input class="background__input" id="reset-email" type="email" placeholder="E-mail">
						<span class="background__error">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
				</form>

				<p class="bottom-message trigger"><a href="#0" data-signin="login">Back to log-in</a></p>
			</div> <!--  -->
			<a href="#0" class="signin-background__close js-close">Close</a>
		</div> <!-- signin-background__container -->
	</div> <!-- signin-background -->
	<div>
		
	</div>
<script src="js/placeholders.min.js"></script> <!-- polyfill for the HTML5 placeholder attribute -->
<script src="js/main.js"></script> <!-- Resource JavaScript -->
</body>
</html>