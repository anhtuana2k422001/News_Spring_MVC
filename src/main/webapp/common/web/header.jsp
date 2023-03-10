<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Import Header -->
<header class="header--section header--style-3">
	<!-- Header Topbar Start -->
	<div class="header--topbar  bg--color-1">

		<div class="container">
			<div class="float--left float--xs-none text-xs-center">
				<!-- Header Topbar Info Start -->
				<ul class="header--topbar-info nav">
					<li><a href=""> <!-- <img style="border-radius: 12px; height: 40px;" src="./public/kcnew/frontend/img/image_logo.png" alt="logo"> -->
					</a></li>
					<li><i class="fa fm fa-map-marker"></i>Hồ Chí Minh</li>
					<li><i class="fa fm fa-mixcloud"></i>28<sup>0</sup> C</li>
					<li style="text-transform: capitalize"><i
						class="fa fm fa-calendar"></i>Hôm nay (Thứ Hai, Ngày 06 Tháng 03
						Năm 2023)</li>
				</ul>
				<!-- Header Topbar Info End -->
			</div>

			<div class="float--right float--xs-none text-xs-center">
				<!-- Header Topbar Action Start -->
				<ul class="header--topbar-action nav">
					<!-- @guest -->
					<li class="btn-cta"><a href="./login.php"> <i
							class="fa fm fa-user-o"></i> <span> Hồ Anh Tuấn</span>
					</a></li>
					<!-- @endguest -->

					<!-- @auth -->
					<li class="has-dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <!-- <i class="fa fm fa-user-o"></i> -->
							<!-- {{ auth()->user()->name }}  --> <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<!-- @if(auth()->user()->role->name !== 'user') -->
							<li><a href="">Admin - Dashbroad</a></li>
							<!-- @endif -->
							<li><a href="">Tài khoản của tôi</a></li>
							<li><a href="../logout.php">Đăng xuất <i
									class="fa fm fa-arrow-circle-right"></i>
							</a>

								<form id="nav-logout-form" action="" method="POST">
									<!-- @csrf -->
								</form></li>
						</ul></li>
					<!-- @endauth -->

				</ul>
				<!-- Header Topbar Action End -->


				<!-- Header Topbar Social Start -->
				<ul class="header--topbar-social nav hidden-sm hidden-xxs">
					<li><a
						href="https://www.facebook.com/people/Anh-Tuan/100007007238964"><i
							class="fa fa-facebook"></i></a></li>
					<li><a
						href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
							class="fa fa-twitter"></i></a></li>
					<li><a
						href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
							class="fa fa-google-plus"></i></a></li>
					<li><a
						href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
							class="fa fa-rss"></i></a></li>
					<li><a
						href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
							class="fa fa-youtube-play"></i></a></li>
				</ul>
				<!-- Header Topbar Social End -->
			</div>
		</div>
	</div>
	<!-- Header Topbar End -->

	<!-- Header Navbar Start -->
	<div class="header--navbar navbar bd--color-1 bg--color-0"
		data-trigger="sticky">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#headerNav"
					aria-expanded="false" aria-controls="headerNav">
					<span class="sr-only">Toggle Navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div id="headerNav" class="navbar-collapse collapse float--left">
				<!-- Header Menu Links Start -->
				<ul class="header--menu-links nav navbar-nav"
					data-trigger="hoverIntent">
					<li><a href="{{ route('home"> <i
							class="icon_home fa fa-home"></i>
					</a></li>
					<li><a href='404.php'>Thế giới</a></li>
					<li><a href='404.php'>Xã hội</a></li>
					<li><a href='404.php'>Kinh tế</a></li>
					<li><a href='404.php'>Sức Khỏe</a></li>
					<li><a href='404.php'>Giáo dục</a></li>
					<li><a href='404.php'>Thể thao</a></li>
					<li><a href='404.php'>Giải trí</a></li>
					<li><a href='404.php'>Pháp luật</a></li>
					<li><a href='404.php'>Công nghệ</a></li>
					<li><a href='404.php'>Khoa học</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Trang<i class="fa flm fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="{{ route('about">Giới thiệu</a></li>
							<li><a href="{{ route('contact.create">Liên hệ</a></li>
							<li><a href="404.php">404</a></li>
						</ul></li>
					<li><a href="{{ route('categories.index"> <span
							style="color: #ccc; margin-right: 10px;">Tất cả</span> <img
							width="17" class="icon-menu"
							src="https://static.vnncdn.net/v1/icon/menu-center.svg">
					</a></li>
				</ul>
				<!-- Header Menu Links End -->
			</div>

			<!-- Header Search Form Start -->
			<form method="POST" action="{{ route('search"
				class="header--search-form float--right" data-form="validate">
				@csrf <input type="search" name="search" placeholder="Search..."
					class="header--search-control form-control" required>

				<button type="submit" class="header--search-btn btn">
					<i class="header--search-icon fa fa-search"></i>
				</button>
			</form>
			<!-- Header Search Form End -->
		</div>
	</div>
	<!-- Header Navbar End -->
</header>
<!-- Header Section End -->
<div id="page" class="wrapper">
	<!-- Posts Filter Bar Start -->
	<div class="posts--filter-bar style--3 hidden-xs">
		<div class="container">
			<ul class="nav">
				<li><a href="{{ route('newPost"> <i class="fa fa-star-o"></i>
						<span>Tin tức mới nhất</span>
				</a></li>

				<li><a href="{{ route('hotPost"> <i class="fa fa-fire"></i>
						<span>Tin nóng</span>
				</a></li>
				<li><a href="{{ route('viewPost"> <i class="fa fa-eye"></i>
						<span>Xem nhiều nhất</span>
				</a></li>
			</ul>
		</div>
	</div>

	<!-- News Ticker Start -->
	<div class="news--ticker">
		<div class="container">
			<div class="title">
				<h2>Tin mới cập nhật</h2>
			</div>

			<div class="news-updates--list" data-marquee="true">
				<ul class="nav">

					<li>
						<h3 class='h3'>
							<a href=''>Bậc thầy quan hệ của Microsoft</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>Bếp từ Sakura với công nghệ HEATTECH, chinh phục
								mọi công thức, nấu món nào cũng ngon</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>Liên tục bốc hơi tài khoản: Nhà đầu tư chứng khoán
								nên làm gì lúc này?</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>Nga chỉ trích EU trao tư cách ứng viên cho Ukraine</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>Việt Nam - Campuchia: Mối quan hệ mãi mãi xanh
								tươi, đời đời bền vững</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>Giá vàng hôm nay 25/6: Tiếp đà suy giảm</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>Virus bị xóa sổ 40 năm 'trỗi dậy' ở Anh</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>Gần 4.000 học sinh giành suất vào trường chuyên
								Trần Đại Nghĩa</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>Ronaldo được tìm kiếm nhiều nhất thế giới thể thao</a>
						</h3>
					</li>

					<li>
						<h3 class='h3'>
							<a href=''>10 ứng viên cho vương miện Miss Universe Vietnam
								2022</a>
						</h3>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
