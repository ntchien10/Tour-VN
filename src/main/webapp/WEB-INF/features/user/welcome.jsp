<%@ include file="/includes/taglibs.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js"  lang="en">

	<head>
		<!-- META DATA -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />

		<!-- TITLE OF SITE -->
		<title>Travel</title>

		<!-- favicon img -->
		<link rel="shortcut icon" type="image/icon" href="<c:url value="/resources/logo/favicon.png" />"/>

		<!--font-awesome.min.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"  />"/>

		<!--animate.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/animate.css"  />"/>

		<!--hover.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/hover-min.css" />">

		<!--datepicker.css-->
		<link rel="stylesheet"  href="<c:url value="/resources/css/datepicker.css"  />">

		<!--owl.carousel.css-->
        <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css" />">
		<link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css" />"/>

		<!-- range css-->
        <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.min.css"  />"/>

		<!--bootstrap.min.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"  />"/>

		<!-- bootsnav -->
		<link rel="stylesheet" href="<c:url value="/resources/css/bootsnav.css" />"/>

		<!--style.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />

		<!--responsive.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"  />"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

		<!--[if lt IE 9]>
		<script type="text/javascript" src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script type="text/javascript" src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

	</head>

	<body>
		<!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
			your browser</a> to improve your experience and security.</p>
		<![endif]-->

		<!-- main-menu Start -->
		<header class="top-area">
			<div class="header-area">
				<div class="container">
					<div class="row">
						<div class="col-sm-2">
							<div class="logo">
								<li class="smooth-menu">
								<a href="#home">
									Tour<span>VN</span>
								</a>
								</li>
								
							</div><!-- /.logo-->
						</div><!-- /.col-->
						<div class="col-sm-10">
							<div class="main-menu">
							
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
										<i class="fa fa-bars"></i>
									</button><!-- / button-->
								</div><!-- /.navbar-header-->
								<div class="collapse navbar-collapse">		  
									<ul class="nav navbar-nav navbar-right">
										<li class="smooth-menu"><a href="#home">Trang ch???</a></li>
										<li class="smooth-menu"><a href="#gallery">??i???m ?????n</a></li>
										<li class="smooth-menu"><a href="#pack">G??i </a></li>
										<li class="smooth-menu"><a href="#spo">??u ????i</a></li>
										<li class="smooth-menu"><a href="#blog">Tin t???c</a></li>
										<li class="smooth-menu"><a href="#subs">????ng k??</a></li>
										<li>
											<button class="book-btn">book now
											</button>
										</li><!--/.project-btn--> 
									</ul>
								</div><!-- /.navbar-collapse -->
							</div><!-- /.main-menu-->
						</div><!-- /.col-->
					</div><!-- /.row -->
					<div class="home-border"></div><!-- /.home-border-->
				</div><!-- /.container-->
			</div><!-- /.header-area -->

		</header><!-- /.top-area-->
		<!-- main-menu End -->

		
		<!--about-us start -->
		<section id="home" class="about-us">
			<div class="container">
				<div class="about-us-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="single-about-us">
								<div class="about-us-txt">
									<h2>
										Du l???ch v?? kh??m ph?? v??? ?????p Vi???t Nam

									</h2>
									<div class="about-btn">
										<button  class="about-view">
											Kh??m ph?? ngay
										</button>
									</div><!--/.about-btn-->
								</div><!--/.about-us-txt-->
							</div><!--/.single-about-us-->
						</div><!--/.col-->
						<div class="col-sm-0">
							<div class="single-about-us">
								
							</div><!--/.single-about-us-->
						</div><!--/.col-->
					</div><!--/.row-->
				</div><!--/.about-us-content-->
			</div><!--/.container-->

		</section><!--/.about-us-->
		<!--about-us end -->

		<!--travel-box start-->
		<section  class="travel-box">
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
        				<div class="single-travel-boxes">
        					<div id="desc-tabs" class="desc-tabs">

								<ul class="nav nav-tabs" role="tablist">

									<li role="presentation" class="active">
									 	<a href="#tours" aria-controls="tours" role="tab" data-toggle="tab">
									 		<i class="fa fa-tree"></i>
									 		tours
									 	</a>
									</li>

									<li role="presentation">
										<a href="#hotels" aria-controls="hotels" role="tab" data-toggle="tab">
											<i class="fa fa-building"></i>
											Kh??ch s???n
										</a>
									</li>

									<li role="presentation">
									 	<a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">
									 		<i class="fa fa-plane"></i>
									 		flights
									 	</a>
									</li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">

									<div role="tabpanel" class="tab-pane active fade in" id="tours">
										<div class="tab-para">

											<div class="row">
												<div class="col-lg-4 col-md-4 col-sm-12">
													<div class="single-tab-select-box">

														<h2>??i???m ?????n</h2>

														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">enter your destination country</option><!-- /.option-->

															  	<option value="turkey">turkey</option><!-- /.option-->

															  	<option value="russia">russia</option><!-- /.option-->
															  	<option value="egept">egypt</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->

														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">enter your destination location</option><!-- /.option-->

															  	<option value="istambul">istambul</option><!-- /.option-->

															  	<option value="mosko">mosko</option><!-- /.option-->
															  	<option value="cairo">cairo</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->

													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-3 col-sm-4">
													<div class="single-tab-select-box">
														<h2>Ng??y ?????n</h2>
														<div class="travel-check-icon">
															<form action="#">
																<input type="text" name="check_in" class="form-control" data-toggle="datepicker" placeholder="12 -01 - 2017 ">
															</form>
														</div><!-- /.travel-check-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-3 col-sm-4">
													<div class="single-tab-select-box">
														<h2>Ng??y ??i</h2>
														<div class="travel-check-icon">
															<form action="#">
																<input type="text" name="check_out" class="form-control"  data-toggle="datepicker" placeholder="22 -01 - 2017 ">
															</form>
														</div><!-- /.travel-check-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-1 col-sm-4">
													<div class="single-tab-select-box">
														<h2>L???ch tr??nh</h2>
														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">5</option><!-- /.option-->

															  	<option value="10">10</option><!-- /.option-->

															  	<option value="15">15</option><!-- /.option-->
															  	<option value="20">20</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-1 col-sm-4">
													<div class="single-tab-select-box">
														<h2>s??? ng?????i</h2>
														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">1</option>
															  	<option value="2">2</option>
																<option value="2">3</option>
															  	<option value="4">4</option>
															  	<option value="4">5</option>
															  	<option value="4">6</option>
															  	<option value="4">7</option>
															  	<option value="8">8</option>
															  	<option value="4">Nhi???u h??n</option>

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

											</div><!--/.row-->

											<div class="row">
												<div class="col-sm-5">
													<div class="travel-budget">
														<div class="row">
															<div class="col-md-3 col-sm-4">
																<h3>budget : </h3>
															</div><!--/.col-->
															<div class="co-md-9 col-sm-8">
																<div class="travel-filter">
																	<div class="info_widget">
																		<div class="price_filter">
																			
																			<div id="slider-range"></div><!--/.slider-range-->

																			<div class="price_slider_amount">
																				<input type="text" id="amount" name="price"  placeholder="Add Your Price" />
																			</div><!--/.price_slider_amount-->
																		</div><!--/.price-filter-->
																	</div><!--/.info_widget-->
																</div><!--/.travel-filter-->
															</div><!--/.col-->
														</div><!--/.row-->
													</div><!--/.travel-budget-->
												</div><!--/.col-->
												<div class="clo-sm-7">
													<div class="about-btn travel-mrt-0 pull-right">
														<button  class="about-view travel-btn">
															search	
														</button><!--/.travel-btn-->
													</div><!--/.about-btn-->
												</div><!--/.col-->

											</div><!--/.row-->

										</div><!--/.tab-para-->

									</div><!--/.tabpannel-->

									<div role="tabpanel" class="tab-pane fade in" id="hotels">
										<div class="tab-para">

											<div class="row">
												<div class="col-lg-4 col-md-4 col-sm-12">
													<div class="single-tab-select-box">

														<h2>destination</h2>

														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">enter your destination country</option><!-- /.option-->

															  	<option value="turkey">turkey</option><!-- /.option-->

															  	<option value="russia">russia</option><!-- /.option-->
															  	<option value="egept">egypt</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->

														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">enter your destination location</option><!-- /.option-->

															  	<option value="istambul">istambul</option><!-- /.option-->

															  	<option value="mosko">mosko</option><!-- /.option-->
															  	<option value="cairo">cairo</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->

													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-3 col-sm-4">
													<div class="single-tab-select-box">
														<h2>check in</h2>
														<div class="travel-check-icon">
															<form action="#">
																<input type="text" name="check_in" class="form-control" data-toggle="datepicker" placeholder="12 -01 - 2017 ">
															</form>
														</div><!-- /.travel-check-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-3 col-sm-4">
													<div class="single-tab-select-box">
														<h2>check out</h2>
														<div class="travel-check-icon">
															<form action="#">
																<input type="text" name="check_out" class="form-control"  data-toggle="datepicker" placeholder="22 -01 - 2017 ">
															</form>
														</div><!-- /.travel-check-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-1 col-sm-4">
													<div class="single-tab-select-box">
														<h2>duration</h2>
														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">5</option><!-- /.option-->

															  	<option value="10">10</option><!-- /.option-->

															  	<option value="15">15</option><!-- /.option-->
															  	<option value="20">20</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-1 col-sm-4">
													<div class="single-tab-select-box">
														<h2>members</h2>
														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">1</option><!-- /.option-->

															  	<option value="2">2</option><!-- /.option-->

															  	<option value="4">4</option><!-- /.option-->
															  	<option value="8">8</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

											</div><!--/.row-->

											<div class="row">
												<div class="col-sm-5"></div><!--/.col-->
												<div class="clo-sm-7">
													<div class="about-btn travel-mrt-0 pull-right">
														<button  class="about-view travel-btn">
															search	
														</button><!--/.travel-btn-->
													</div><!--/.about-btn-->
												</div><!--/.col-->

											</div><!--/.row-->

										</div><!--/.tab-para-->

									</div><!--/.tabpannel-->

									<div role="tabpanel" class="tab-pane fade in" id="flights">
										<div class="tab-para">
											<div class="trip-circle">
												<div class="single-trip-circle">
													<input type="radio" id="radio01" name="radio" />
  													<label for="radio01">
  														<span class="round-boarder">
  															<span class="round-boarder1"></span>
  														</span>round trip
  													</label>
												</div><!--/.single-trip-circle-->
												<div class="single-trip-circle">
													<input type="radio" id="radio02" name="radio" />
  													<label for="radio02">
  														<span class="round-boarder">
  															<span class="round-boarder1"></span>
  														</span>on way
  													</label>
												</div><!--/.single-trip-circle-->
											</div><!--/.trip-circle-->
											<div class="row">
												<div class="col-lg-4 col-md-4 col-sm-12">
													<div class="single-tab-select-box">

														<h2>from</h2>

														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">enter your location</option><!-- /.option-->

															  	<option value="turkey">turkey</option><!-- /.option-->

															  	<option value="russia">russia</option><!-- /.option-->
															  	<option value="egept">egypt</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-3 col-sm-4">
													<div class="single-tab-select-box">
														<h2>departure</h2>
														<div class="travel-check-icon">
															<form action="#">
																<input type="text" name="departure" class="form-control" data-toggle="datepicker"
																placeholder="12 -01 - 2017 ">
															</form>
														</div><!-- /.travel-check-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-3 col-sm-4">
													<div class="single-tab-select-box">
														<h2>return</h2>
														<div class="travel-check-icon">
															<form action="#">
																<input type="text" name="return" class="form-control" data-toggle="datepicker" placeholder="22 -01 - 2017 ">
															</form>
														</div><!-- /.travel-check-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-1 col-sm-4">
													<div class="single-tab-select-box">
														<h2>adults</h2>
														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">5</option><!-- /.option-->

															  	<option value="10">10</option><!-- /.option-->

															  	<option value="15">15</option><!-- /.option-->
															  	<option value="20">20</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

												<div class="col-lg-2 col-md-1 col-sm-4">
													<div class="single-tab-select-box">
														<h2>childs</h2>
														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">1</option><!-- /.option-->

															  	<option value="2">2</option><!-- /.option-->

															  	<option value="4">4</option><!-- /.option-->
															  	<option value="8">8</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->

											</div><!--/.row-->

											<div class="row">
												<div class="col-lg-4 col-md-4 col-sm-12">
													<div class="single-tab-select-box">

														<h2>to</h2>

														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">enter your destination location</option><!-- /.option-->

															  	<option value="istambul">istambul</option><!-- /.option-->

															  	<option value="mosko">mosko</option><!-- /.option-->
															  	<option value="cairo">cairo</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->

													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->
												<div class="col-lg-3 col-md-3 col-sm-4">
													<div class="single-tab-select-box">

														<h2>class</h2>
														<div class="travel-select-icon">
															<select class="form-control ">

															  	<option value="default">enter class</option><!-- /.option-->

															  	<option value="A">A</option><!-- /.option-->

															  	<option value="B">B</option><!-- /.option-->
															  	<option value="C">C</option><!-- /.option-->

															</select><!-- /.select-->
														</div><!-- /.travel-select-icon -->
													</div><!--/.single-tab-select-box-->
												</div><!--/.col-->
												<div class="clo-sm-5">
													<div class="about-btn pull-right">
														<button  class="about-view travel-btn">
															search	
														</button><!--/.travel-btn-->
													</div><!--/.about-btn-->
												</div><!--/.col-->
												
											</div><!--/.row-->

										</div>

									</div><!--/.tabpannel-->

								</div><!--/.tab content-->
							</div><!--/.desc-tabs-->
        				</div><!--/.single-travel-box-->
        			</div><!--/.col-->
        		</div><!--/.row-->
        	</div><!--/.container-->

        </section><!--/.travel-box-->
		<!--travel-box end-->

        <!--service start-->
		<section id="service" class="service">
			<div class="container">

				<div class="service-counter text-center">

					<div class="col-md-4 col-sm-4">
						<div class="single-service-box">
							<div class="service-img">
								<img src="<c:url value="/resources/images/service/s1.png" />" alt="service-icon" />
							</div><!--/.service-img-->
							<div class="service-content">
								<h2>
									<a href="#">
									amazing tour packages
									</a>
								</h2>
								<p>Duis aute irure dolor in  velit esse cillum dolore eu fugiat nulla.</p>
							</div><!--/.service-content-->
						</div><!--/.single-service-box-->
					</div><!--/.col-->

					<div class="col-md-4 col-sm-4">
						<div class="single-service-box">
							<div class="service-img">
								<img src="<c:url value="/resources/images/service/s2.png" />" alt="service-icon" />
							</div><!--/.service-img-->
							<div class="service-content">
								<h2>
									<a href="#">
										book top class hotel
									</a>
								</h2>
								<p>Duis aute irure dolor in  velit esse cillum dolore eu fugiat nulla.</p>
							</div><!--/.service-content-->
						</div><!--/.single-service-box-->
					</div><!--/.col-->

					<div class="col-md-4 col-sm-4">
						<div class="single-service-box">
							<div class="statistics-img">
								<img src="<c:url value="/resources/images/service/s3.png" />" alt="service-icon" />
							</div><!--/.service-img-->
							<div class="service-content">

								<h2>
									<a href="#">
										online flight booking
									</a>
								</h2>
								<p>Duis aute irure dolor in  velit esse cillum dolore eu fugiat nulla.</p>
							</div><!--/.service-content-->
						</div><!--/.single-service-box-->
					</div><!--/.col-->

				</div><!--/.statistics-counter-->	
			</div><!--/.container-->

		</section><!--/.service-->
		<!--service end-->

		<!--galley start-->
		<section id="gallery" class="gallery">
			<div class="container">
				<div class="gallery-details">
					<div class="gallary-header text-center">
						<h2>
							top ??i???m ?????n
						</h2>
						<p>
							C??c ??i???m ?????n th???nh h??nh
						</p>
					</div><!--/.gallery-header-->
					<div class="gallery-box">
						<div class="gallery-content">
						  	<div class="filtr-container">
						  		<div class="row">

						  			<div class="col-md-6">
						  				<div class="filtr-item">
											<img src="<c:url value="/resources/images/imgPhuQuoc.jpg" />" alt="portfolio image"  width="570" height="320"/>
											<div class="item-title">
												<a href="#">
													Ph?? Qu???c
												</a>
												<p><span>20 tours</span><span>15 places</span></p>
											</div><!-- /.item-title -->
										</div><!-- /.filtr-item -->
						  			</div><!-- /.col -->

						  			<div class="col-md-6">
						  				<div class="filtr-item">
											<img src="<c:url value="/resources/images/imgPhuQuoc.jpg"/>" alt="portfolio image" width="570" height="320"/>
											<div class="item-title">
												<a href="#">
													???? N???ng
												</a>
												<p><span>12 tours</span><span>9 places</span></p>
											</div> <!-- /.item-title-->
										</div><!-- /.filtr-item -->
						  			</div><!-- /.col -->

						  			<div class="col-md-4">
						  				<div class="filtr-item">
											<img src="<c:url value="/resources/images/imgHaGiang.jpg" />" alt="anh ha giang" width="370" height="670"/>
											<div class="item-title">
												<a href="#">
													H?? Giang
												</a>
												<p><span>25 tours</span><span>10 places</span></p>
											</div><!-- /.item-title -->
										</div><!-- /.filtr-item -->
						  			</div><!-- /.col -->

						  			<div class="col-md-4">
						  				<div class="filtr-item">
											<img src="<c:url value="/resources/images/imgTamDao.jpg" />" alt="portfolio image" width="370" height="320"/>
											<div class="item-title">
												<a href="#">
													Tam ?????o 
												</a>
												<p><span>18 tours</span><span>9 places</span></p>
											</div> <!-- /.item-title-->
										</div><!-- /.filtr-item -->
						  			</div><!-- /.col -->

						  			<div class="col-md-4">
						  				<div class="filtr-item">
											<img src="<c:url value="/resources/images/imgCaMau.jpg" />" alt="portfolio image" width="370" height="320"/>
											<div class="item-title">
												<a href="#">
													C?? Mau
												</a>
												<p><span>14 tours</span><span>12 places</span></p>
											</div> <!-- /.item-title-->
										</div><!-- /.filtr-item -->
						  			</div><!-- /.col -->

						  			<div class="col-md-8">
						  				<div class="filtr-item">
											<img src="<c:url value="/resources/images/imgMaiChau.jpg" />" alt="portfolio image" width="770" height="320"/>
											<div class="item-title">
												<a href="#">
													Mai Ch??u
												</a>
												<p><span>14 tours</span><span>6 places</span></p>
											</div> <!-- /.item-title-->
										</div><!-- /.filtr-item -->
						  			</div><!-- /.col -->

						  		</div><!-- /.row -->

						  	</div><!-- /.filtr-container-->
						</div><!-- /.gallery-content -->
					</div><!--/.galley-box-->
				</div><!--/.gallery-details-->
			</div><!--/.container-->

		</section><!--/.gallery-->
		<!--gallery end-->


		<!--discount-offer start-->
		<section class="discount-offer">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="dicount-offer-content text-center">
							<h2>Tham gia v???i ch??ng t??i ng??y 05/05/2022 ????? ???????c gi???m 40%</h2>
							<div class="campaign-timer">
								<div id="timer">
									<div class="time time-after" id="days">
										<span></span>
									</div><!--/.time-->
									<div class="time time-after" id="hours">

									</div><!--/.time-->
									<div class="time time-after" id="minutes">

									</div><!--/.time-->
									<div class="time" id="seconds">

									</div><!--/.time-->
								</div><!--/.timer-->
							</div><!--/.campaign-timer-->
							<div class="about-btn">
								<button  class="about-view discount-offer-btn">
									Tham gia ngay
								</button>
							</div><!--/.about-btn-->


						</div><!-- /.dicount-offer-content-->
					</div><!-- /.col-->
				</div><!-- /.row-->
			</div><!-- /.container-->

		</section><!-- /.discount-offer-->
		<!--discount-offer end-->

		<!--packages start-->
		<section id="pack" class="packages">
			<div class="container">
				<div class="gallary-header text-center">
					<h2>
						G??i ?????c bi???t
					</h2>
					<p>
						Duis aute irure dolor in  velit esse cillum dolore eu fugiat nulla.  
					</p>
				</div><!--/.gallery-header-->
				<div class="packages-content">
					<div class="row">

						<div class="col-md-4 col-sm-6">
							<div class="single-package-item">
								<img src="<c:url value="/resources/images/packages/p1.jpg" />" alt="package-place">
								<div class="single-package-item-txt">
									<h3>???? n???ng <span class="pull-right">5.000.000VN??</span></h3>
									<div class="packages-para">
										<p>
											<span>
												<i class="fa fa-angle-right"></i> 5 daays 6 nights
											</span>
											<i class="fa fa-angle-right"></i>  5 star accomodation
										</p>
										<p>
											<span>
												<i class="fa fa-angle-right"></i>  transportation
											</span>
											<i class="fa fa-angle-right"></i>  food facilities
										 </p>
									</div><!--/.packages-para-->
									<div class="packages-review">
										<p>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<span>2544 review</span>
										</p>
									</div><!--/.packages-review-->
									<div class="about-btn">
										<button  class="about-view packages-btn">
											book now
										</button>
									</div><!--/.about-btn-->
								</div><!--/.single-package-item-txt-->
							</div><!--/.single-package-item-->

						</div><!--/.col-->

						<div class="col-md-4 col-sm-6">
							<div class="single-package-item">
								<img src="<c:url value="/resources/images/packages/p2.jpg" />" alt="package-place">
								<div class="single-package-item-txt">
									<h3>england <span class="pull-right">$1499</span></h3>
									<div class="packages-para">
										<p>
											<span>
												<i class="fa fa-angle-right"></i> 5 daays 6 nights
											</span>
											<i class="fa fa-angle-right"></i>  5 star accomodation
										</p>
										<p>
											<span>
												<i class="fa fa-angle-right"></i>  transportation
											</span>
											<i class="fa fa-angle-right"></i>  food facilities
										 </p>
									</div><!--/.packages-para-->
									<div class="packages-review">
										<p>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<span>2544 review</span>
										</p>
									</div><!--/.packages-review-->
									<div class="about-btn">
										<button  class="about-view packages-btn">
											book now
										</button>
									</div><!--/.about-btn-->
								</div><!--/.single-package-item-txt-->
							</div><!--/.single-package-item-->

						</div><!--/.col-->
						
						<div class="col-md-4 col-sm-6">
							<div class="single-package-item">
								<img src="<c:url value="/resources/images/packages/p3.jpg" />" alt="package-place">
								<div class="single-package-item-txt">
									<h3>france <span class="pull-right">$1199</span></h3>
									<div class="packages-para">
										<p>
											<span>
												<i class="fa fa-angle-right"></i> 5 daays 6 nights
											</span>
											<i class="fa fa-angle-right"></i>  5 star accomodation
										</p>
										<p>
											<span>
												<i class="fa fa-angle-right"></i>  transportation
											</span>
											<i class="fa fa-angle-right"></i>  food facilities
										 </p>
									</div><!--/.packages-para-->
									<div class="packages-review">
										<p>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<span>2544 review</span>
										</p>
									</div><!--/.packages-review-->
									<div class="about-btn">
										<button  class="about-view packages-btn">
											book now
										</button>
									</div><!--/.about-btn-->
								</div><!--/.single-package-item-txt-->
							</div><!--/.single-package-item-->

						</div><!--/.col-->
						
						<div class="col-md-4 col-sm-6">
							<div class="single-package-item">
								<img src="<c:url value="/resources/images/packages/p4.jpg" />" alt="package-place">
								<div class="single-package-item-txt">
									<h3>india <span class="pull-right">$799</span></h3>
									<div class="packages-para">
										<p>
											<span>
												<i class="fa fa-angle-right"></i> 5 daays 6 nights
											</span>
											<i class="fa fa-angle-right"></i>  5 star accomodation
										</p>
										<p>
											<span>
												<i class="fa fa-angle-right"></i>  transportation
											</span>
											<i class="fa fa-angle-right"></i>  food facilities
										 </p>
									</div><!--/.packages-para-->
									<div class="packages-review">
										<p>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<span>2544 review</span>
										</p>
									</div><!--/.packages-review-->
									<div class="about-btn">
										<button  class="about-view packages-btn">
											book now
										</button>
									</div><!--/.about-btn-->
								</div><!--/.single-package-item-txt-->
							</div><!--/.single-package-item-->

						</div><!--/.col-->
						
						<div class="col-md-4 col-sm-6">
							<div class="single-package-item">
								<img src="<c:url value="/resources/images/packages/p5.jpg" />" alt="package-place">
								<div class="single-package-item-txt">
									<h3>spain <span class="pull-right">$999</span></h3>
									<div class="packages-para">
										<p>
											<span>
												<i class="fa fa-angle-right"></i> 5 daays 6 nights
											</span>
											<i class="fa fa-angle-right"></i>  5 star accomodation
										</p>
										<p>
											<span>
												<i class="fa fa-angle-right"></i>  transportation
											</span>
											<i class="fa fa-angle-right"></i>  food facilities
										 </p>
									</div><!--/.packages-para-->
									<div class="packages-review">
										<p>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<span>2544 review</span>
										</p>
									</div><!--/.packages-review-->
									<div class="about-btn">
										<button  class="about-view packages-btn">
											book now
										</button>
									</div><!--/.about-btn-->
								</div><!--/.single-package-item-txt-->
							</div><!--/.single-package-item-->

						</div><!--/.col-->
						
						<div class="col-md-4 col-sm-6">
							<div class="single-package-item">
								<img src="<c:url value="/resources/images/packages/p6.jpg" />" alt="package-place">
								<div class="single-package-item-txt">
									<h3>thailand <span class="pull-right">$799</span></h3>
									<div class="packages-para">
										<p>
											<span>
												<i class="fa fa-angle-right"></i> 5 daays 6 nights
											</span>
											<i class="fa fa-angle-right"></i>  5 star accomodation
										</p>
										<p>
											<span>
												<i class="fa fa-angle-right"></i>  transportation
											</span>
											<i class="fa fa-angle-right"></i>  food facilities
										 </p>
									</div><!--/.packages-para-->
									<div class="packages-review">
										<p>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<span>2544 review</span>
										</p>
									</div><!--/.packages-review-->
									<div class="about-btn">
										<button  class="about-view packages-btn">
											book now
										</button>
									</div><!--/.about-btn-->
								</div><!--/.single-package-item-txt-->
							</div><!--/.single-package-item-->

						</div><!--/.col-->

					</div><!--/.row-->
				</div><!--/.packages-content-->
			</div><!--/.container-->

		</section><!--/.packages-->
		<!--packages end-->

		<!-- testemonial Start -->
		<section   class="testemonial">
			<div class="container">

				<div class="gallary-header text-center">
					<h2>
						????nh gi?? c???a kh??ch h??ng
					</h2>
					<p>
						S??? h??i l??ng c???a qu?? kh??ch lu??n l?? ti??u ch?? h??ng ?????u c???a ch??ng t??i!
					</p>

				</div><!--/.gallery-header-->

				<div class="owl-carousel owl-theme" id="testemonial-carousel">

					<div class="home1-testm item">
						<div class="home1-testm-single text-center">
							<div class="home1-testm-img">
								<img src="<c:url value="/resources/images/client/testimonial1.jpg" />" alt="img"/>
							</div><!--/.home1-testm-img-->
							<div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
								<p>
									D???ch v??? t???t, th???ng c???nh ?????p, l???ch tr??nh h???p l??, d???ch v??? ??i l???i t???t, gi?? c??? ok. N??i chung l?? r???t t???t, m???i ng?????i tham kh???o.
								</p>
								<h3>
									<a href="#">
										Th??? Chi???n
									</a>
								</h3>
								<h4>???? n???ng</h4>
							</div><!--/.home1-testm-txt-->	
						</div><!--/.home1-testm-single-->

					</div><!--/.item-->

					<div class="home1-testm item">
						<div class="home1-testm-single text-center">
							<div class="home1-testm-img">
								<img src="<c:url value="/resources/images/client/testimonial2.jpg" />" alt="img"/>
							</div><!--/.home1-testm-img-->
							<div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
								<p>
									D???ch v??? t???t, th???ng c???nh ?????p, l???ch tr??nh h???p l??, d???ch v??? ??i l???i t???t, gi?? c??? ok. N??i chung l?? r???t t???t, m???i ng?????i tham kh???o. 
								</p>
								<h3>
									<a href="#">
										Ph????ng ????ng
									</a>
								</h3>
								<h4>london, england</h4>
							</div><!--/.home1-testm-txt-->	
						</div><!--/.home1-testm-single-->

					</div><!--/.item-->

					<div class="home1-testm item">
						<div class="home1-testm-single text-center">
							<div class="home1-testm-img">
								<img src="<c:url value="/resources/images/client/testimonial1.jpg" />" alt="img"/>
							</div><!--/.home1-testm-img-->
							<div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
								<p>
									D???ch v??? t???t, th???ng c???nh ?????p, l???ch tr??nh h???p l??, d???ch v??? ??i l???i t???t, gi?? c??? ok. N??i chung l?? r???t t???t, m???i ng?????i tham kh???o. 
								</p>
								<h3>
									<a href="#">
										C??p
									</a>
								</h3>
								<h4>london, england</h4>
							</div><!--/.home1-testm-txt-->	
						</div><!--/.home1-testm-single-->

					</div><!--/.item-->

					<div class="home1-testm item">
						<div class="home1-testm-single text-center">
							<div class="home1-testm-img">
								<img src="<c:url value="/resources/images/client/testimonial1.jpg" />" alt="img"/>
							</div><!--/.home1-testm-img-->
							<div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
								<p>
									D???ch v??? t???t, th???ng c???nh ?????p, l???ch tr??nh h???p l??, d???ch v??? ??i l???i t???t, gi?? c??? ok. N??i chung l?? r???t t???t, m???i ng?????i tham kh???o. 
								</p>
								<h3>
									<a href="#">
										V. Linh
									</a>
								</h3>
								<h4>london, england</h4>
							</div><!--/.home1-testm-txt-->	
						</div><!--/.home1-testm-single-->

					</div><!--/.item-->

					<div class="home1-testm item">
						<div class="home1-testm-single text-center">
							<div class="home1-testm-img">
								<img src="<c:url value="/resources/images/client/testimonial2.jpg" />" alt="img"/>
							</div><!--/.home1-testm-img-->
							<div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
								<p>
									D???ch v??? t???t, th???ng c???nh ?????p, l???ch tr??nh h???p l??, d???ch v??? ??i l???i t???t, gi?? c??? ok. N??i chung l?? r???t t???t, m???i ng?????i tham kh???o. 
								</p>
								<h3>
									<a href="#">
										Lan
									</a>
								</h3>
								<h4>london, england</h4>
							</div><!--/.home1-testm-txt-->	
						</div><!--/.home1-testm-single-->

					</div><!--/.item-->

					<div class="home1-testm item">
						<div class="home1-testm-single text-center">
							<div class="home1-testm-img">
								<img src="<c:url value="/resources/images/client/testimonial1.jpg" />" alt="img"/>
							</div><!--/.home1-testm-img-->
							<div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
								<p>
									D???ch v??? t???t, th???ng c???nh ?????p, l???ch tr??nh h???p l??, d???ch v??? ??i l???i t???t, gi?? c??? ok. N??i chung l?? r???t t???t, m???i ng?????i tham kh???o. 
								</p>
								<h3>
									<a href="#">
										Y. Linh
									</a>
								</h3>
								<h4>london, england</h4>
							</div><!--/.home1-testm-txt-->	
						</div><!--/.home1-testm-single-->

					</div><!--/.item-->

					<div class="home1-testm item">
						<div class="home1-testm-single text-center">
							<div class="home1-testm-img">
								<img src="<c:url value="/resources/images/client/testimonial1.jpg" />" alt="img"/>
							</div><!--/.home1-testm-img-->
							<div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
								<p>
									D???ch v??? t???t, th???ng c???nh ?????p, l???ch tr??nh h???p l??, d???ch v??? ??i l???i t???t, gi?? c??? ok. N??i chung l?? r???t t???t, m???i ng?????i tham kh???o. 
								</p>
								<h3>
									<a href="#">
										Long
									</a>
								</h3>
								<h4>london, england</h4>
							</div><!--/.home1-testm-txt-->	
						</div><!--/.home1-testm-single-->

					</div><!--/.item-->

				</div><!--/.testemonial-carousel-->
			</div><!--/.container-->

		</section><!--/.testimonial-->	
		<!-- testemonial End -->


		<!--special-offer start-->
		<section id="spo" class="special-offer">
			<div class="container">
				<div class="special-offer-content">
					<div class="row">
						<div class="col-sm-8">
							<div class="single-special-offer">
								<div class="single-special-offer-txt">
									<h2>???? N???ng</h2>
									<div class="packages-review special-offer-review">
										<p>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<span>2544 review</span>
										</p>
									</div><!--/.packages-review-->
									<div class="packages-para special-offer-para">
										<p>
											<span>
												<i class="fa fa-angle-right"></i> 5 days 6 nights
											</span>
											<span>
												<i class="fa fa-angle-right"></i> 2 person
											</span>
											<span>
												<i class="fa fa-angle-right"></i>  5 star accomodation
											</span>
										</p>
										<p>
											<span>
												<i class="fa fa-angle-right"></i>  transportation
											</span>
											<span>
												<i class="fa fa-angle-right"></i>  food facilities
											</span>  
										</p>
										<p class="offer-para">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tem ut labore et dolore magna  aliqua. Ut enim ad minim veniam, quis nostrud exercitation una <br> ullamco laboris nisi ut aliquip ex ea commodo consequat. 
										</p>
									</div><!--/.packages-para-->
									<div class="offer-btn-group">
										<div class="about-btn">
											<button  class="about-view packages-btn offfer-btn">
												make tour
											</button>
										</div><!--/.about-btn-->
										<div class="about-btn">
											<button  class="about-view packages-btn">
												book now
											</button>
										</div><!--/.about-btn-->
									</div><!--/.offer-btn-group-->
								</div><!--/.single-special-offer-txt-->
							</div><!--/.single-special-offer-->
						</div><!--/.col-->
						<div class="col-sm-4">
							<div class="single-special-offer">
								<div class="single-special-offer-bg">
									<img src="<c:url value="/resources/images/offer/offer-shape.png" />" alt="offer-shape">
								</div><!--/.single-special-offer-bg-->
								<div class="single-special-shape-txt">
									<h3>??u ????i ?????c bi???t</h3>
									<h4><span>40%</span><br>off</h4>
									<p><span>$999</span><br>reguler $ 1450</p>
								</div><!--/.single-special-shape-txt-->
							</div><!--/.single-special-offer-->
						</div><!--/.col-->
					</div><!--/.row-->
				</div><!--/.special-offer-content-->
			</div><!--/.container-->

		</section><!--/.special-offer end-->
		<!--special-offer end-->

		<!--blog start-->
		<section id="blog" class="blog">
			<div class="container">
				<div class="blog-details">
						<div class="gallary-header text-center">
							<h2>
								Tin m???i nh???t
							</h2>
							<p>
								Tin t???c du l???ch trong n?????c
							</p>
						</div><!--/.gallery-header-->
						<div class="blog-content">
							<div class="row">

								<div class="col-sm-4 col-md-4">
									<div class="thumbnail">
										<h2>trending news <span>15 november 2017</span></h2>
										<div class="thumbnail-img">
											<img src="<c:url value="/resources/images/blog/b1.jpg" />" alt="blog-img">
											<div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->
										
										</div><!--/.thumbnail-img-->
									  
										<div class="caption">
											<div class="blog-txt">
												<h3>
													<a href="#">
														Discover on beautiful weather, Fantastic foods and historical place in Prag
													</a>
												</h3>
												<p>
													Lorem ipsum dolor sit amet, contur adip elit, sed do mod incid ut labore et dolore magna aliqua. Ut enim ad minim veniam 
												</p>
												<a href="#">Read More</a>
											</div><!--/.blog-txt-->
										</div><!--/.caption-->
									</div><!--/.thumbnail-->

								</div><!--/.col-->

								<div class="col-sm-4 col-md-4">
									<div class="thumbnail">
										<h2>trending news <span>15 november 2017</span></h2>
										<div class="thumbnail-img">
											<img src="<c:url value="/resources/images/blog/b2.jpg" />" alt="blog-img">
											<div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->
										
										</div><!--/.thumbnail-img-->
										<div class="caption">
											<div class="blog-txt">
												<h3>
													<a href="#">
														Discover on beautiful weather, Fantastic foods and historical place in india
													</a>
												</h3>
												<p>
													Lorem ipsum dolor sit amet, contur adip elit, sed do mod incid ut labore et dolore magna aliqua. Ut enim ad minim veniam 
												</p>
												<a href="#">Read More</a>
											</div><!--/.blog-txt-->
										</div><!--/.caption-->
									</div><!--/.thumbnail-->

								</div><!--/.col-->

								<div class="col-sm-4 col-md-4">
									<div class="thumbnail">
										<h2>trending news <span>15 november 2017</span></h2>
										<div class="thumbnail-img">
											<img src="<c:url value="/resources/images/blog/b3.jpg" />" alt="blog-img">
											<div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->
										
										</div><!--/.thumbnail-img-->
										<div class="caption">
											<div class="blog-txt">
												<h3><a href="#">10 Most Natural place to Discover</a></h3>
												<p>
													Lorem ipsum dolor sit amet, contur adip elit, sed do mod incid ut labore et dolore magna aliqua. Ut enim ad minim veniam 
												</p>
												<a href="#">Read More</a>
											</div><!--/.blog-txt-->
										</div><!--/.caption-->
									</div><!--/.thumbnail-->

								</div><!--/.col-->

							</div><!--/.row-->
						</div><!--/.blog-content-->
					</div><!--/.blog-details-->
				</div><!--/.container-->

		</section><!--/.blog-->
		<!--blog end-->

		
		<!--subscribe start-->
		<section id="subs" class="subscribe">
			<div class="container">
				<div class="subscribe-title text-center">
					<h2>
						Tham gia danh s??ch ng?????i ????ng k?? c???a ch??ng t??i ????? nh???n th??ng tin c???p nh???t th?????ng xuy??n
					</h2>
					<p>
						????ng k?? ngay ????? nh???n c??c ??u ????i m???i nh???t cho chuy???n ??i c???a b???n
					</p>
				</div>
				<form>
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
							<div class="custom-input-group">
								<input type="email" class="form-control" placeholder="Nh???p email">
								<button class="appsLand-btn subscribe-btn">????ng k??</button>
								<div class="clearfix"></div>
								<i class="fa fa-envelope"></i>
							</div>

						</div>
					</div>
				</form>
			</div>

		</section>
		<!--subscribe end-->

		<!-- footer-copyright start -->
		<footer  class="footer-copyright">
			<div class="container">
				<div class="footer-content">
					<div class="row">

						<div class="col-sm-3">
							<div class="single-footer-item">
								<div class="footer-logo">
									<a href="index.html">
										tour<span>VN</span>
									</a>
									<p>
										best travel agency
									</p>
								</div>
							</div><!--/.single-footer-item-->
						</div><!--/.col-->

						<div class="col-sm-3">
							<div class="single-footer-item">
								<h2>link</h2>
								<div class="single-footer-txt">
									<p><a href="#">Trang ch???</a></p>
									<p><a href="#">??i???m ?????n</a></p>
									<p><a href="#">G??i</a></p>
									<p><a href="#">??u ????i</a></p>
									<p><a href="#">Tin t???c</a></p>
									<p><a href="#">Li??n h???</a></p>
								</div><!--/.single-footer-txt-->
							</div><!--/.single-footer-item-->

						</div><!--/.col-->

						<div class="col-sm-3">
							<div class="single-footer-item">
								<h2>??i???m ?????n ph??? bi???n</h2>
								<div class="single-footer-txt">
									<p><a href="#">Ph?? Qu???c</a></p>
									<p><a href="#">???? N???ng</a></p>
									<p><a href="#">Hu???</a></p>
									<p><a href="#">C?? Mau</a></p>
									<p><a href="#">H?? Giang</a></p>
								</div><!--/.single-footer-txt-->
							</div><!--/.single-footer-item-->
						</div><!--/.col-->

						<div class="col-sm-3">
							<div class="single-footer-item text-center">
								<h2 class="text-left">Li??n h???</h2>
								<div class="single-footer-txt text-left">
									<p>0981397246</p>
									<p class="foot-email"><a href="#">info@tourvn.com</a></p>
									<p>30 Phung Khoang, Trung Van Ward, Nam Tu Liem District</p>
									<p>Hanoi, Vietnam</p>
								</div><!--/.single-footer-txt-->
							</div><!--/.single-footer-item-->
						</div><!--/.col-->

					</div><!--/.row-->

				</div><!--/.footer-content-->
				<hr>
				<div class="foot-icons ">
					<ul class="footer-social-links list-inline list-unstyled">
		                <li><a href="https://www.facebook.com/Tourvn-105292725412699" target="_blank" class="foot-icon-bg-1"><i class="fa fa-facebook"></i></a></li>
		                <li><a href="#" target="_blank" class="foot-icon-bg-2"><i class="fa fa-twitter"></i></a></li>
		                <li><a href="#" target="_blank" class="foot-icon-bg-3"><i class="fa fa-instagram"></i></a></li>
		        	</ul>
		        	<p>&copy; 2022 <a href="https://www.tourvn.com">TourVN</a>. All Right Reserved</p>

		        </div><!--/.foot-icons-->
				<div id="scroll-Top">
					<i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
				</div><!--/.scroll-Top-->
			</div><!-- /.container-->

		</footer><!-- /.footer-copyright-->
		<!-- footer-copyright end -->




		<script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->

		<!--modernizr.min.js-->
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


		<!--bootstrap.min.js-->
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

		<!-- bootsnav js -->
		<script type="text/javascript" src="<c:url value="/resources/js/bootsnav.js" />"></script>

		<!-- jquery.filterizr.min.js -->
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.filterizr.min.js" />"></script>

		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

		<!--jquery-ui.min.js-->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>

        <!-- counter js -->
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.counterup.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/waypoints.min.js" />"></script>

		<!--owl.carousel.js-->
        <script type="text/javascript" src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>

        <!-- jquery.sticky.js -->
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.sticky.js" />"></script>

        <!--datepicker.js-->
        <script type="text/javascript" src="<c:url value="/resources/js/datepicker.js"  />"></script>

		<!--Custom JS-->
		<script type="text/javascript" src="<c:url value="/resources/js/custom.js" />"></script>

		</script> -->
	</body>

</html>