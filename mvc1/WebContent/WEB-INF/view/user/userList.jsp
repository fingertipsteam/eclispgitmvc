<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>

<meta name="description" content="Static &amp;Dynamic Tables /">
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0">

<!-- bookstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/assets/css/ace.min.css"
	id="main-ace-style" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/assets/css/ace-skins.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/assets/css/ace-rtl.min.css" />

<!-- ace settings handler -->
<script
	src="${pageContext.request.contextPath }/static/assets/js/ace-extra.min.js"></script>

</head>
<body>
<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<!-- #section:basics/sidebar.mobile.toggle -->
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<!-- /section:basics/sidebar.mobile.toggle -->
			<div class="navbar-header pull-left">
				<!-- #section:basics/navbar.layout.brand -->
				<a href="#" class="navbar-brand"> <small> <i
						class="fa fa-leaf"></i> 老A在线考试
				</small>
				</a>

				<!-- /section:basics/navbar.layout.brand -->

				<!-- #section:basics/navbar.toggle -->

				<!-- /section:basics/navbar.toggle -->
			</div>

			<!-- #section:basics/navbar.dropdown -->
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="grey"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-tasks"></i> <span class="badge badge-grey">4</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="ace-icon fa fa-check"></i>
								4 Tasks to complete</li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left">Software Update</span> <span
											class="pull-right">65%</span>
									</div>

									<div class="progress progress-mini">
										<div style="width: 65%" class="progress-bar"></div>
									</div>
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left">Hardware Upgrade</span> <span
											class="pull-right">35%</span>
									</div>

									<div class="progress progress-mini">
										<div style="width: 35%"
											class="progress-bar progress-bar-danger"></div>
									</div>
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left">Unit Testing</span> <span
											class="pull-right">15%</span>
									</div>

									<div class="progress progress-mini">
										<div style="width: 15%"
											class="progress-bar progress-bar-warning"></div>
									</div>
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left">Bug Fixes</span> <span
											class="pull-right">90%</span>
									</div>

									<div class="progress progress-mini progress-striped active">
										<div style="width: 90%"
											class="progress-bar progress-bar-success"></div>
									</div>
							</a></li>

							<li class="dropdown-footer"><a href="#"> See tasks with
									details <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="purple"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-bell icon-animated-bell"></i> <span
							class="badge badge-important">8</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-exclamation-triangle"></i> 8 Notifications
							</li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-pink fa fa-comment"></i> New
											Comments
										</span> <span class="pull-right badge badge-info">+12</span>
									</div>
							</a></li>

							<li><a href="#"> <i
									class="btn btn-xs btn-primary fa fa-user"></i> Bob just signed
									up as an editor ...
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
											New Orders
										</span> <span class="pull-right badge badge-success">+8</span>
									</div>
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
											Followers
										</span> <span class="pull-right badge badge-info">+11</span>
									</div>
							</a></li>

							<li class="dropdown-footer"><a href="#"> See all
									notifications <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="green"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">5</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-envelope-o"></i> 5 Messages</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#"> <img
											src="${pageContext.request.contextPath }/static/assets/avatars/avatar.png"
											class="msg-photo" alt="Alex's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Alex:</span> Ciao sociis natoque penatibus et
													auctor ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>a moment
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#"> <img
											src="${pageContext.request.contextPath }/static/assets/avatars/avatar3.png"
											class="msg-photo" alt="Susan's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Susan:</span> Vestibulum id ligula porta felis
													euismod ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>20 minutes
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#"> <img
											src="${pageContext.request.contextPath }/static/assets/avatars/avatar4.png"
											class="msg-photo" alt="Bob's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Bob:</span> Nullam quis risus eget urna mollis
													ornare ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>3:15 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#"> <img
											src="${pageContext.request.contextPath }/static/assets/avatars/avatar2.png"
											class="msg-photo" alt="Kate's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Kate:</span> Ciao sociis natoque eget urna
													mollis ornare ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>1:33 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#"> <img
											src="${pageContext.request.contextPath }/static/assets/avatars/avatar5.png"
											class="msg-photo" alt="Fred's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Fred:</span> Vestibulum id penatibus et auctor
													...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>10:09 am</span>
											</span>
										</span>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="inbox.html"> See
									all messages <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<!-- #section:basics/navbar.user_menu -->
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="${pageContext.request.contextPath }/static/assets/avatars/user.jpg"
							alt="Jason's Photo" /> <span class="user-info"> <small>Welcome,</small>
								Jason
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="ace-icon fa fa-cog"></i>
									Settings
							</a></li>

							<li><a href="profile.html"> <i
									class="ace-icon fa fa-user"></i> Profile
							</a></li>

							<li class="divider"></li>

							<li><a href="#"> <i class="ace-icon fa fa-power-off"></i>
									Logout
							</a></li>
						</ul></li>

					<!-- /section:basics/navbar.user_menu -->
				</ul>
			</div>

			<!-- /section:basics/navbar.dropdown -->
		</div>
		<!-- /.navbar-container -->
	</div>

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<!-- #section:basics/sidebar -->
		<div id="sidebar" class="sidebar                  responsive">
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'fixed')
				} catch (e) {
				}
			</script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-pencil"></i>
					</button>

					<!-- #section:basics/sidebar.layout.shortcuts -->
					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>

					<!-- /section:basics/sidebar.layout.shortcuts -->
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<li class=""><a href="index.html"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
							Dashboard </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-desktop"></i> <span class="menu-text">
							UI &amp; Elements </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="#" class="dropdown-toggle"> <i
								class="menu-icon fa fa-caret-right"></i> Layouts <b
								class="arrow fa fa-angle-down"></b>
						</a> <b class="arrow"></b>

							<ul class="submenu">
								<li class=""><a href="top-menu.html"> <i
										class="menu-icon fa fa-caret-right"></i> Top Menu
								</a> <b class="arrow"></b></li>

								<li class=""><a href="mobile-menu-1.html"> <i
										class="menu-icon fa fa-caret-right"></i> Default Mobile Menu
								</a> <b class="arrow"></b></li>

								<li class=""><a href="mobile-menu-2.html"> <i
										class="menu-icon fa fa-caret-right"></i> Mobile Menu 2
								</a> <b class="arrow"></b></li>

								<li class=""><a href="mobile-menu-3.html"> <i
										class="menu-icon fa fa-caret-right"></i> Mobile Menu 3
								</a> <b class="arrow"></b></li>
							</ul></li>

						<li class=""><a href="typography.html"> <i
								class="menu-icon fa fa-caret-right"></i> Typography
						</a> <b class="arrow"></b></li>

						<li class=""><a href="elements.html"> <i
								class="menu-icon fa fa-caret-right"></i> Elements
						</a> <b class="arrow"></b></li>

						<li class=""><a href="buttons.html"> <i
								class="menu-icon fa fa-caret-right"></i> Buttons &amp; Icons
						</a> <b class="arrow"></b></li>

						<li class=""><a href="treeview.html"> <i
								class="menu-icon fa fa-caret-right"></i> Treeview
						</a> <b class="arrow"></b></li>

						<li class=""><a href="jquery-ui.html"> <i
								class="menu-icon fa fa-caret-right"></i> jQuery UI
						</a> <b class="arrow"></b></li>

						<li class=""><a href="nestable-list.html"> <i
								class="menu-icon fa fa-caret-right"></i> Nestable Lists
						</a> <b class="arrow"></b></li>

						<li class=""><a href="#" class="dropdown-toggle"> <i
								class="menu-icon fa fa-caret-right"></i> Three Level Menu <b
								class="arrow fa fa-angle-down"></b>
						</a> <b class="arrow"></b>

							<ul class="submenu">
								<li class=""><a href="#"> <i
										class="menu-icon fa fa-leaf green"></i> Item #1
								</a> <b class="arrow"></b></li>

								<li class=""><a href="#" class="dropdown-toggle"> <i
										class="menu-icon fa fa-pencil orange"></i> 4th level <b
										class="arrow fa fa-angle-down"></b>
								</a> <b class="arrow"></b>

									<ul class="submenu">
										<li class=""><a href="#"> <i
												class="menu-icon fa fa-plus purple"></i> Add Product
										</a> <b class="arrow"></b></li>

										<li class=""><a href="#"> <i
												class="menu-icon fa fa-eye pink"></i> View Products
										</a> <b class="arrow"></b></li>
									</ul></li>
							</ul></li>
					</ul></li>

				<li class="active open"><a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-list"></i> <span class="menu-text">
							Tables </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class="active"><a href="tables.html"> <i
								class="menu-icon fa fa-caret-right"></i> Simple &amp; Dynamic
						</a> <b class="arrow"></b></li>

						<li class=""><a href="jqgrid.html"> <i
								class="menu-icon fa fa-caret-right"></i> jqGrid plugin
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-pencil-square-o"></i> <span
						class="menu-text"> Forms </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="form-elements.html"> <i
								class="menu-icon fa fa-caret-right"></i> Form Elements
						</a> <b class="arrow"></b></li>

						<li class=""><a href="form-wizard.html"> <i
								class="menu-icon fa fa-caret-right"></i> Wizard &amp; Validation
						</a> <b class="arrow"></b></li>

						<li class=""><a href="wysiwyg.html"> <i
								class="menu-icon fa fa-caret-right"></i> Wysiwyg &amp; Markdown
						</a> <b class="arrow"></b></li>

						<li class=""><a href="dropzone.html"> <i
								class="menu-icon fa fa-caret-right"></i> Dropzone File Upload
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="widgets.html"> <i
						class="menu-icon fa fa-list-alt"></i> <span class="menu-text">
							Widgets </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="calendar.html"> <i
						class="menu-icon fa fa-calendar"></i> <span class="menu-text">
							Calendar <!-- #section:basics/sidebar.layout.badge --> <span
							class="badge badge-transparent tooltip-error"
							title="2 Important Events"> <i
								class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
						</span> <!-- /section:basics/sidebar.layout.badge -->
					</span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="gallery.html"> <i
						class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
							Gallery </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-tag"></i> <span class="menu-text">
							More Pages </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="profile.html"> <i
								class="menu-icon fa fa-caret-right"></i> User Profile
						</a> <b class="arrow"></b></li>

						<li class=""><a href="inbox.html"> <i
								class="menu-icon fa fa-caret-right"></i> Inbox
						</a> <b class="arrow"></b></li>

						<li class=""><a href="pricing.html"> <i
								class="menu-icon fa fa-caret-right"></i> Pricing Tables
						</a> <b class="arrow"></b></li>

						<li class=""><a href="invoice.html"> <i
								class="menu-icon fa fa-caret-right"></i> Invoice
						</a> <b class="arrow"></b></li>

						<li class=""><a href="timeline.html"> <i
								class="menu-icon fa fa-caret-right"></i> Timeline
						</a> <b class="arrow"></b></li>

						<li class=""><a href="email.html"> <i
								class="menu-icon fa fa-caret-right"></i> Email Templates
						</a> <b class="arrow"></b></li>

						<li class=""><a href="login.html"> <i
								class="menu-icon fa fa-caret-right"></i> Login &amp; Register
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-file-o"></i> <span class="menu-text">
							Other Pages <!-- #section:basics/sidebar.layout.badge --> <span
							class="badge badge-primary">5</span> <!-- /section:basics/sidebar.layout.badge -->
					</span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="faq.html"> <i
								class="menu-icon fa fa-caret-right"></i> FAQ
						</a> <b class="arrow"></b></li>

						<li class=""><a href="error-404.html"> <i
								class="menu-icon fa fa-caret-right"></i> Error 404
						</a> <b class="arrow"></b></li>

						<li class=""><a href="error-500.html"> <i
								class="menu-icon fa fa-caret-right"></i> Error 500
						</a> <b class="arrow"></b></li>

						<li class=""><a href="grid.html"> <i
								class="menu-icon fa fa-caret-right"></i> Grid
						</a> <b class="arrow"></b></li>

						<li class=""><a href="blank.html"> <i
								class="menu-icon fa fa-caret-right"></i> Blank Page
						</a> <b class="arrow"></b></li>
					</ul></li>
			</ul>
			<!-- /.nav-list -->

			<!-- #section:basics/sidebar.layout.minimize -->
			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>

			<!-- /section:basics/sidebar.layout.minimize -->
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'collapsed')
				} catch (e) {
				}
			</script>
		</div>

		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<!-- #section:basics/content.breadcrumbs -->
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">管理学员信息</a>
					</li>
				</ul>
				<!-- /.breadcrumb -->

				<!-- #section:basics/content.searchbox -->
				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> <input type="text"
							placeholder="Search ..." class="nav-search-input"
							id="nav-search-input" autocomplete="off" /> <i
							class="ace-icon fa fa-search nav-search-icon"></i>
						</span>
					</form>
				</div>
				<!-- /.nav-search -->

				<!-- /section:basics/content.searchbox -->
			</div>

			<!-- /section:basics/content.breadcrumbs -->
			<div class="page-content">
				<!-- #section:settings.box -->
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
						id="ace-settings-btn">
						<i class="ace-icon fa fa-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box clearfix" id="ace-settings-box">
						<div class="pull-left width-50">
							<!-- #section:settings.skins -->
							<div class="ace-settings-item">
								<div class="pull-left">
									<select id="skin-colorpicker" class="hide">
										<option data-skin="no-skin" value="#438EB9">#438EB9</option>
										<option data-skin="skin-1" value="#222A2D">#222A2D</option>
										<option data-skin="skin-2" value="#C6487E">#C6487E</option>
										<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
									</select>
								</div>
								<span>&nbsp; Choose Skin</span>
							</div>

							<!-- /section:settings.skins -->

							<!-- #section:settings.navbar -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-navbar" /> <label class="lbl"
									for="ace-settings-navbar"> Fixed Navbar</label>
							</div>

							<!-- /section:settings.navbar -->

							<!-- #section:settings.sidebar -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-sidebar" /> <label class="lbl"
									for="ace-settings-sidebar"> Fixed Sidebar</label>
							</div>

							<!-- /section:settings.sidebar -->

							<!-- #section:settings.breadcrumbs -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-breadcrumbs" /> <label class="lbl"
									for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
							</div>

							<!-- /section:settings.breadcrumbs -->

							<!-- #section:settings.rtl -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-rtl" /> <label class="lbl"
									for="ace-settings-rtl"> Right To Left (rtl)</label>
							</div>

							<!-- /section:settings.rtl -->

							<!-- #section:settings.container -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-add-container" /> <label class="lbl"
									for="ace-settings-add-container"> Inside <b>.container</b>
								</label>
							</div>

							<!-- /section:settings.container -->
						</div>
						<!-- /.pull-left -->

						<div class="pull-left width-50">
							<!-- #section:basics/sidebar.options -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-hover" /> <label class="lbl"
									for="ace-settings-hover"> Submenu on Hover</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-compact" /> <label class="lbl"
									for="ace-settings-compact"> Compact Sidebar</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-highlight" /> <label class="lbl"
									for="ace-settings-highlight"> Alt. Active Item</label>
							</div>

							<!-- /section:basics/sidebar.options -->
						</div>
						<!-- /.pull-left -->
					</div>
					<!-- /.ace-settings-box -->
				</div>
				<!-- /.ace-settings-container -->

				<!-- /section:settings.box -->
				<div class="page-content-area">
					<div class="page-header">
						
						<%
							String message = (String)request.getAttribute("message");
							
							
							if(message == null){
								%>
								<h1 style="visibility: none;"></h1>
							<% 	
							}else{
								%>
								<h1><%=request.getAttribute("message") %></h1>
								
								<%
							}
						%>
							
						
					</div>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="row">
							<div class="col-xs-12">
								<table id="sample-table-1"
									class="table table-striped table-bordered table-hover">
									<thead>

										<tr>
											<th width="10px">
												<div class="hidden-sm hidden-xs btn-group">
													<a href="add">
														<button class="btn btn-xs btn-success">
															<i class="ace-icon fa fa-plus bigger-120"></i>
														</button>
													</a>
												</div>
											</th>
											<th class="center"><label class="position-relative">
													<input type="checkbox" class="ace" /> <span class="lbl"></span>
											</label></th>
											<th><spring:message code="user.id.message" /></th>
											<th><spring:message code="user.name.message" /></th>
											<th class="hidden-480"><spring:message
													code="userJDBC.tel.message" /></th>
											<th class="hidden-480"><spring:message
													code="user.action.message" /></th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${jdbcUserList}" var="userJdbc">
											<tr>
												<td></td>
												<td class="center"><label class="position-relative">
														<input type="checkbox" class="ace" /> <span class="lbl"></span>
												</label></td>
												<td>${userJdbc.userId }</td>
												<td>${userJdbc.userName}</td>
												<td>${userJdbc.tel }</td>

												<td>
													<div class="hidden-sm hidden-xs btn-group">
														<a href="edit/${userJdbc.userId }">
															<button class="btn btn-xs btn-info">

																<i class="ace-icon fa fa-pencil bigger-120"></i>
															</button>
														</a> <a href="delete/${userJdbc.userId }">
															<button class="btn btn-xs btn-danger">
																<i class="ace-icon fa fa-trash-o bigger-120"></i>
															</button>
														</a>

													</div>

													<div class="hidden-md hidden-lg">
														<div class="inline position-relative">
															<button
																class="btn btn-minier btn-primary dropdown-toggle"
																data-toggle="dropdown" data-position="auto">
																<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
															</button>

															<ul
																class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																<li><a href="#" class="tooltip-info"
																	data-rel="tooltip" title="View"> <span class="blue">
																			<i class="ace-icon fa fa-search-plus bigger-120"></i>
																	</span>
																</a></li>

																<li><a href="#" class="tooltip-success"
																	data-rel="tooltip" title="Edit"> <span
																		class="green"> <i
																			class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
																</a></li>

																<li><a href="#" class="tooltip-error"
																	data-rel="tooltip" title="Delete"> <span
																		class="red"> <i
																			class="ace-icon fa fa-trash-o bigger-120"></i>
																	</span>
																</a></li>
															</ul>
														</div>
													</div>
												</td>
											</tr>

										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /.span -->
						</div>
						<!-- /.row -->

						<div class="hr hr-18 dotted hr-double"></div>


					</div>
					</div>
					<!-- /.main-container -->

					<!-- basic scripts -->

					<!--[if !IE]> -->
					<script type="text/javascript">
						window.jQuery
								|| document
										.write("<script src='${pageContext.request.contextPath }/static/assets/js/jquery.min.js'>"
												+ "<"+"/script>");
					</script>

					<!-- <![endif]-->

					<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${pageContext.request.contextPath }/static/assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
					<script type="text/javascript">
						if ('ontouchstart' in document.documentElement)
							document
									.write("<script src='${pageContext.request.contextPath }/static/assets/js/jquery.mobile.custom.min.js'>"
											+ "<"+"/script>");
					</script>
					<script
						src="${pageContext.request.contextPath }/static/assets/js/bootstrap.min.js"></script>

					<!-- page specific plugin scripts -->
					<script
						src="${pageContext.request.contextPath }/static/assets/js/jquery.dataTables.min.js"></script>
					<script
						src="${pageContext.request.contextPath }/static/assets/js/jquery.dataTables.bootstrap.js"></script>

					<!-- ace scripts -->
					<script
						src="${pageContext.request.contextPath }/static/assets/js/ace-elements.min.js"></script>
					<script
						src="${pageContext.request.contextPath }/static/assets/js/ace.min.js"></script>

					<!-- inline scripts related to this page -->
					<script type="text/javascript">
						jQuery(function($) {
							var oTable1 = $('#sample-table-2')
							//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
							.dataTable({
								bAutoWidth : false,
								"aoColumns" : [ {
									"bSortable" : false
								}, null, null, null, null, null, {
									"bSortable" : false
								} ],
								"aaSorting" : [],

							//,
							//"sScrollY": "200px",
							//"bPaginate": false,

							//"sScrollX": "100%",
							//"sScrollXInner": "120%",
							//"bScrollCollapse": true,
							//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
							//you may want to wrap the table inside a "div.dataTables_borderWrap" element

							//"iDisplayLength": 50
							});
							/**
							var tableTools = new $.fn.dataTable.TableTools( oTable1, {
								"sSwfPath": "copy_csv_xls_pdf.swf",
							    "buttons": [
							        "copy",
							        "csv",
							        "xls",
									"pdf",
							        "print"
							    ]
							} );
							$( tableTools.fnContainer() ).insertBefore('#sample-table-2');
							 */

							$(document)
									.on(
											'click',
											'th input:checkbox',
											function() {
												var that = this;
												$(this)
														.closest('table')
														.find(
																'tr > td:first-child input:checkbox')
														.each(
																function() {
																	this.checked = that.checked;
																	$(this)
																			.closest(
																					'tr')
																			.toggleClass(
																					'selected');
																});
											});

							$('[data-rel="tooltip"]').tooltip({
								placement : tooltip_placement
							});
							function tooltip_placement(context, source) {
								var $source = $(source);
								var $parent = $source.closest('table')
								var off1 = $parent.offset();
								var w1 = $parent.width();

								var off2 = $source.offset();
								//var w2 = $source.width();

								if (parseInt(off2.left) < parseInt(off1.left)
										+ parseInt(w1 / 2))
									return 'right';
								return 'left';
							}

						})
					</script>

					<!-- the following scripts are used in demo only for onpage help and you don't need them -->
					<link rel="stylesheet"
						href="${pageContext.request.contextPath }/static/assets/css/ace.onpage-help.css" />
					<link rel="stylesheet"
						href="${pageContext.request.contextPath }/static/docs/assets/js/themes/sunburst.css" />

					<script type="text/javascript">
						ace.vars['base'] = '..';
					</script>
					<script
						src="${pageContext.request.contextPath }/static/assets/js/ace/elements.onpage-help.js"></script>
					<script
						src="${pageContext.request.contextPath }/static/assets/js/ace/ace.onpage-help.js"></script>
					<script
						src="${pageContext.request.contextPath }/static/docs/assets/js/rainbow.js"></script>
					<script
						src="${pageContext.request.contextPath }/static/docs/assets/js/language/generic.js"></script>
					<script
						src="${pageContext.request.contextPath }/static/docs/assets/js/language/html.js"></script>
					<script
						src="${pageContext.request.contextPath }/static/docs/assets/js/language/css.js"></script>
					<script
						src="${pageContext.request.contextPath }/static/docs/assets/js/language/javascript.js"></script>
</body>
</html>