</head>
<body>
<!-- WRAPPER -->
<div id="wrapper">
    <!--
        ASIDE
        Keep it outside of #wrapper (responsive purpose)
    -->
    <aside id="aside">
        <!--
            Always open:
            <li class="active alays-open">

            LABELS:
                <span class="label label-danger pull-right">1</span>
                <span class="label label-default pull-right">1</span>
                <span class="label label-warning pull-right">1</span>
                <span class="label label-success pull-right">1</span>
                <span class="label label-info pull-right">1</span>
        -->
        <nav id="sideNav"><!-- MAIN MENU -->
            <ul class="nav nav-list">
                <li><!-- dashboard -->
                    <a class="dashboard" href="index.php"><!-- warning - url used by default by ajax (if enabled) -->
                        <i class="main-icon et-speedometer"></i> <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-menu-arrow pull-right"></i>
                        <i class="main-icon et-desktop"></i> <span>Front Office</span>
                    </a>
                    <ul><!-- submenus -->
                        <li>
                            <a href="#"><i class="fa fa-menu-arrow pull-right"></i>Registration</a>
                            <ul>
                                <li><a href="#">Customer</a></li>
                                <li><a href="#">Complaint</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-menu-arrow pull-right"></i>Credit</a>
                            <ul>
                                <li><a href="#">Bill Payment</a></li>
                                <li><a href="#">Sell Product</a></li>
                                <li><a href="#">Received Bills</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-menu-arrow pull-right"></i>Reports</a>
                            <ul>
                                <li><a href="#">Customer List</a></li>
                                <li><a href="#">Bill Payment</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-menu-arrow pull-right"></i>
                        <i class="main-icon et-wallet"></i> <span>Accounts</span>
                    </a>
                    <ul><!-- submenus -->
                        <li><a href="#">Attendance</a></li>
                        <li><a href="#">Product Stock</a></li>
                        <li><a href="#">Balance</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-menu-arrow pull-right"></i>
                        <i class="main-icon et-basket"></i> <span>Store</span>
                    </a>
                    <ul><!-- submenus -->
                        <li><a href="#">Product Stock</a></li>
                        <li>
                            <a href="#"><i class="fa fa-menu-arrow pull-right"></i>Transaction</a>
                            <ul>
                                <li><a href="#">Issue</a></li>
                                <li><a href="#">Return</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><i class="fa fa-menu-arrow pull-right"></i>Reports</a>
                            <ul>
                                <li><a href="#">Product Issued</a></li>
                                <li><a href="#">Product Returned</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-menu-arrow pull-right"></i>
                        <i class="main-icon et-tools-2"></i> <span>Technical</span>
                    </a>
                    <ul><!-- submenus -->
                        <li><a href="#"><i class="fa fa-menu-arrow pull-right"></i>Pending Jobs</a>
                            <ul>
                                <li><a href="#">Installations</a></li>
                                <li><a href="#">Complaints</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><i class="fa fa-menu-arrow pull-right"></i>Reports</a>
                            <ul>
                                <li><a href="#">Customer List</a></li>
                                <li><a href="#">Installation Report</a></li>
                                <li><a href="#">Service Report</a></li>
                                <li><a href="#">Technician Report</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

            </ul>

            <!-- SECOND MAIN LIST -->
            <h3>Administrator</h3>
            <ul class="nav nav-list">
                <li>
                    <a href="#">
                        <i class="fa fa-menu-arrow pull-right"></i>
                        <i class="main-icon et-lock"></i> <span>Administrator</span>
                    </a>
                    <ul><!-- submenus -->
                        <li><a href="#">Attendance</a></li>
                        <li><a href="#">Product Stock</a></li>
                        <li><a href="#">Balance</a></li>
                    </ul>
                </li>
            </ul>

        </nav>

        <span id="asidebg"><!-- aside fixed background --></span>
    </aside>
    <!-- /ASIDE -->


    <!-- HEADER -->
    <header id="header">

        <!-- Mobile Button -->
        <button id="mobileMenuBtn"></button>

        <!-- Logo -->
				<span class="logo pull-left">
					<img src="assets/images/logo_light.png" alt="admin panel" height="35" />
				</span>

        <form method="get" action="page-search.html" class="search pull-left hidden-xs">
            <input type="text" class="form-control" name="k" placeholder="Search for something..." />
        </form>

        <nav>

            <!-- OPTIONS LIST -->
            <ul class="nav pull-right">

                <!-- USER OPTIONS -->
                <li class="dropdown pull-left">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <img class="user-avatar" alt="" src="assets/images/noavatar.jpg" height="34" />
								<span class="user-name">
									<span class="hidden-xs">
										John Doe <i class="fa fa-angle-down"></i>
									</span>
								</span>
                    </a>
                    <ul class="dropdown-menu hold-on-click">
                        <li><!-- my calendar -->
                            <a href="calendar.html"><i class="fa fa-calendar"></i> Calendar</a>
                        </li>
                        <li><!-- my inbox -->
                            <a href="#"><i class="fa fa-envelope"></i> Inbox
                                <span class="pull-right label label-default">0</span>
                            </a>
                        </li>
                        <li><!-- settings -->
                            <a href="page-user-profile.html"><i class="fa fa-cogs"></i> Settings</a>
                        </li>

                        <li class="divider"></li>

                        <li><!-- lockscreen -->
                            <a href="page-lock.html"><i class="fa fa-lock"></i> Lock Screen</a>
                        </li>
                        <li><!-- logout -->
                            <a href="page-login.html"><i class="fa fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
                <!-- /USER OPTIONS -->

            </ul>
            <!-- /OPTIONS LIST -->

        </nav>

    </header>
    <!-- /HEADER -->