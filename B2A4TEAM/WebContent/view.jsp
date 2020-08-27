<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GaeManDa</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/hamburgers.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<%
	
	    //페이지 이동했을 때 세션이 담겨있는지 체크
	    String mem_mail = null;
	    if(info.getMem_mail() !=null){
	    	mem_mail = info.getMem_mail();
	    }

		int bbsID=0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'board.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		BbsDAO bbsDAO = new BbsDAO();
	%>


	<main>
		<!--? Hero Area Start-->
		<div class="hero-area2 d-flex align-items-center">
			<div class="container">
				<div class="row ">
					<div class="col-xl-12">
						<!-- Hero Caption -->
						<div class="hero-cap pt-100">
							<h2>QnA</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Hero Area End-->
		<!-- Hero Area End-->
		<!--? Blog Area Start-->
		<section class="blog_area section-padding">
			<div class="container">
				<div class="row">
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글 보기</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="width: 20%;">글 제목</td>
								<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
							</tr>
							<tr>
								<td>작성자</td>
								<td colspan="2"><%= bbsDAO.getNick(bbs.getMem_mail())%></td>
							</tr>
							<tr>
								<td>작성일자</td>
								<td colspan="2"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시 "
		+ bbs.getBbsDate().substring(14, 16) + "분 " %></td>
							</tr>
							<tr>
								<td>내용</td>
								<td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
							</tr>
						</tbody>
					</table>
					<a href="board.jsp" class="btn btn-primary">목록</a>
					<%
						if (info.getMem_mail() != null && info.getMem_mail().equals(bbs.getMem_mail())) {
					%>
						<a href="boardUpdate.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">수정</a>
						<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="boardDelete.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">삭제</a>
					<%
						}
					%>
					</div>
					</div>
					</section>
					<!--  <div class="col-lg-8 mb-5 mb-lg-0">
						<div class="blog_left_sidebar">
							<article class="blog_item">
								<div class="blog_item_img">
									<img class="card-img rounded-0"
										src="assets/img/blog/single_blog_1.png" alt=""> <a
										href="#" class="blog_item_date">
										<h3>15</h3>
										<p>Jan</p>
									</a>
								</div>
								<div class="blog_details">
									<a class="d-inline-block" href="blog_details.html">
										<h2 class="blog-head" style="color: #2d2d2d;">Google inks
											pact for new 35-storey office</h2>
									</a>
									<p>That dominion stars lights dominion divide years for
										fourth have don't stars is that he earth it first without
										heaven in place seed it second morning saying.</p>
									<ul class="blog-info-link">
										<li><a href="#"><i class="fa fa-user"></i> Travel,
												Lifestyle</a></li>
										<li><a href="#"><i class="fa fa-comments"></i> 03
												Comments</a></li>
									</ul>
								</div>
							</article>
							<article class="blog_item">
								<div class="blog_item_img">
									<img class="card-img rounded-0"
										src="assets/img/blog/single_blog_2.png" alt=""> <a
										href="#" class="blog_item_date">
										<h3>15</h3>
										<p>Jan</p>
									</a>
								</div>
								<div class="blog_details">
									<a class="d-inline-block" href="blog_details.html">
										<h2 class="blog-head" style="color: #2d2d2d;">Google inks
											pact for new 35-storey office</h2>
									</a>
									<p>That dominion stars lights dominion divide years for
										fourth have don't stars is that he earth it first without
										heaven in place seed it second morning saying.</p>
									<ul class="blog-info-link">
										<li><a href="#"><i class="fa fa-user"></i> Travel,
												Lifestyle</a></li>
										<li><a href="#"><i class="fa fa-comments"></i> 03
												Comments</a></li>
									</ul>
								</div>
							</article>
							<article class="blog_item">
								<div class="blog_item_img">
									<img class="card-img rounded-0"
										src="assets/img/blog/single_blog_3.png" alt=""> <a
										href="#" class="blog_item_date">
										<h3>15</h3>
										<p>Jan</p>
									</a>
								</div>
								<div class="blog_details">
									<a class="d-inline-block" href="blog_details.html">
										<h2 class="blog-head" style="color: #2d2d2d;">Google inks
											pact for new 35-storey office</h2>
									</a>
									<p>That dominion stars lights dominion divide years for
										fourth have don't stars is that he earth it first without
										heaven in place seed it second morning saying.</p>
									<ul class="blog-info-link">
										<li><a href="#"><i class="fa fa-user"></i> Travel,
												Lifestyle</a></li>
										<li><a href="#"><i class="fa fa-comments"></i> 03
												Comments</a></li>
									</ul>
								</div>
							</article>
							<article class="blog_item">
								<div class="blog_item_img">
									<img class="card-img rounded-0"
										src="assets/img/blog/single_blog_4.png" alt=""> <a
										href="#" class="blog_item_date">
										<h3>15</h3>
										<p>Jan</p>
									</a>
								</div>
								<div class="blog_details">
									<a class="d-inline-block" href="blog_details.html">
										<h2 class="blog-head" style="color: #2d2d2d;">Google inks
											pact for new 35-storey office</h2>
									</a>
									<p>That dominion stars lights dominion divide years for
										fourth have don't stars is that he earth it first without
										heaven in place seed it second morning saying.</p>
									<ul class="blog-info-link">
										<li><a href="#"><i class="fa fa-user"></i> Travel,
												Lifestyle</a></li>
										<li><a href="#"><i class="fa fa-comments"></i> 03
												Comments</a></li>
									</ul>
								</div>
							</article>
							<article class="blog_item">
								<div class="blog_item_img">
									<img class="card-img rounded-0"
										src="assets/img/blog/single_blog_5.png" alt=""> <a
										href="#" class="blog_item_date">
										<h3>15</h3>
										<p>Jan</p>
									</a>
								</div>
								<div class="blog_details">
									<a class="d-inline-block" href="blog_details.html">
										<h2 class="blog-head" style="color: #2d2d2d;">Google inks
											pact for new 35-storey office</h2>
									</a>
									<p>That dominion stars lights dominion divide years for
										fourth have don't stars is that he earth it first without
										heaven in place seed it second morning saying.</p>
									<ul class="blog-info-link">
										<li><a href="#"><i class="fa fa-user"></i> Travel,
												Lifestyle</a></li>
										<li><a href="#"><i class="fa fa-comments"></i> 03
												Comments</a></li>
									</ul>
								</div>
							</article>
							<nav class="blog-pagination justify-content-center d-flex">
								<ul class="pagination">
									<li class="page-item"><a href="#" class="page-link"
										aria-label="Previous"> <i class="ti-angle-left"></i>
									</a></li>
									<li class="page-item"><a href="#" class="page-link">1</a>
									</li>
									<li class="page-item active"><a href="#" class="page-link">2</a>
									</li>
									<li class="page-item"><a href="#" class="page-link"
										aria-label="Next"> <i class="ti-angle-right"></i>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="blog_right_sidebar">
							<aside class="single_sidebar_widget search_widget">
								<form action="#">
									<div class="form-group">
										<div class="input-group mb-3">
											<input type="text" class="form-control"
												placeholder='Search Keyword' onfocus="this.placeholder = ''"
												onblur="this.placeholder = 'Search Keyword'">
											<div class="input-group-append">
												<button class="btns" type="button">
													<i class="ti-search"></i>
												</button>
											</div>
										</div>
									</div>
									<button
										class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
										type="submit">Search</button>
								</form>
							</aside>
							<aside class="single_sidebar_widget post_category_widget">
								<h4 class="widget_title" style="color: #2d2d2d;">Category</h4>
								<ul class="list cat-list">
									<li><a href="#" class="d-flex">
											<p>Resaurant food</p>
											<p>(37)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Travel news</p>
											<p>(10)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Modern technology</p>
											<p>(03)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Product</p>
											<p>(11)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Inspiration</p>
											<p>21</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Health Care (21)</p>
											<p>09</p>
									</a></li>
								</ul>
							</aside>
							<aside class="single_sidebar_widget popular_post_widget">
								<h3 class="widget_title" style="color: #2d2d2d;">Recent
									Post</h3>
								<div class="media post_item">
									<img src="assets/img/post/post_1.png" alt="post">
									<div class="media-body">
										<a href="blog_details.html">
											<h3 style="color: #2d2d2d;">From life was you fish...</h3>
										</a>
										<p>January 12, 2019</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="assets/img/post/post_2.png" alt="post">
									<div class="media-body">
										<a href="blog_details.html">
											<h3 style="color: #2d2d2d;">The Amazing Hubble</h3>
										</a>
										<p>02 Hours ago</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="assets/img/post/post_3.png" alt="post">
									<div class="media-body">
										<a href="blog_details.html">
											<h3 style="color: #2d2d2d;">Astronomy Or Astrology</h3>
										</a>
										<p>03 Hours ago</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="assets/img/post/post_4.png" alt="post">
									<div class="media-body">
										<a href="blog_details.html">
											<h3 style="color: #2d2d2d;">Asteroids telescope</h3>
										</a>
										<p>01 Hours ago</p>
									</div>
								</div>
							</aside>
							<aside class="single_sidebar_widget tag_cloud_widget">
								<h4 class="widget_title" style="color: #2d2d2d;">Tag Clouds</h4>
								<ul class="list">
									<li><a href="#">project</a></li>
									<li><a href="#">love</a></li>
									<li><a href="#">technology</a></li>
									<li><a href="#">travel</a></li>
									<li><a href="#">restaurant</a></li>
									<li><a href="#">life style</a></li>
									<li><a href="#">design</a></li>
									<li><a href="#">illustration</a></li>
								</ul>
							</aside>

							<aside class="single_sidebar_widget instagram_feeds">
								<h4 class="widget_title" style="color: #2d2d2d;">Instagram
									Feeds</h4>
								<ul class="instagram_row flex-wrap">
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_5.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_6.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_7.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_8.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_9.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="assets/img/post/post_10.png" alt="">
									</a></li>
								</ul>
							</aside>
							<aside class="single_sidebar_widget newsletter_widget">
								<h4 class="widget_title" style="color: #2d2d2d;">Newsletter</h4>
								<form action="#">
									<div class="form-group">
										<input type="email" class="form-control"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter email'"
											placeholder='Enter email' required>
									</div>
									<button
										class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
										type="submit">Subscribe</button>
								</form>
							</aside>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Blog Area End -->
	</main>
	<footer>
		<div class="footer-wrappr">
			<div class="footer-top">
				<!-- Want To work -->
				<section class="wantToWork-area ">
					<div class="container">
						<div class="wants-wrapper w-padding2">
							<div class="row align-items-center justify-content-between">
								<div class="col-xl-7 col-lg-9 col-md-8">
									<div class="wantToWork-caption wantToWork-caption2">
										<h2>Do you want to know more about me?</h2>
									</div>
								</div>
								<div class="col-xl-2 col-lg-3 col-md-4">
									<a href="#" class="btn white-btn f-right sm-left">Download
										CV</a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- Want To work End -->
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<!-- contact-form -->
							<div class="form-wrapper">
								<div class="row ">
									<div class="col-xl-12">
										<div class="small-tittle mb-30">
											<h4>Contact Me</h4>
										</div>
									</div>
								</div>
								<form id="contact-form" action="#" method="POST">
									<div class="row">
										<div class="col-lg-4 col-md-6">
											<div class="form-box user-icon mb-25">
												<input type="text" name="name" placeholder="Your name">
											</div>
										</div>
										<div class="col-lg-4 col-md-6">
											<div class="form-box email-icon mb-25">
												<input type="text" name="email" placeholder="Email">
											</div>
										</div>
										<div class="col-lg-4 col-md-6">
											<div class="form-box email-icon mb-25">
												<input type="text" name="email" placeholder="Subject">
											</div>
										</div>
										<div class="col-lg-12">
											<div class="form-box message-icon mb-25">
												<textarea name="message" id="message" placeholder="Message"></textarea>
											</div>
											<div class="submit-info">
												<button class="submit-btn2" type="submit">Send
													Message</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer-bottom area -->
			<div class="footer-bottom-area">
				<div class="container">
					<div class="footer-border">
						<div class="row align-items-center">
							<div class="col-xl-4 col-lg-4">
								<div class="footer-social">
									<a href="#"><i class="fab fa-twitter"></i></a> <a
										href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
									<a href="#"><i class="fab fa-pinterest-p"></i></a> <a href="#"><i
										class="fas fa-globe"></i></a> <a href="#"><i
										class="fab fa-instagram"></i></a>
								</div>
							</div>
							<div class="col-xl-8 col-lg-8">
								<div class="footer-copy-right f-right">
									<p>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
										Copyright &copy;
										<script>
											document.write(new Date()
													.getFullYear());
										</script>
										All rights reserved | This template is made with <i
											class="fa fa-heart" aria-hidden="true"></i> by <a
											href="https://colorlib.com" target="_blank">Colorlib</a>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>

	<!-- JS here -->

	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="./assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="./assets/js/jquery.counterup.min.js"></script>
	<script src="./assets/js/waypoints.min.js"></script>
	<script src="./assets/js/jquery.countdown.min.js"></script>
	<script src="./assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>



</body>
</html>