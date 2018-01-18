<%@ page contentType="text/html; charset=UTF-8" %>
<nav class="navbar top-navbar navbar-expand-md navbar-light">
    <!-- ============================================================== -->
    <!-- Logo -->
    <!-- ============================================================== -->
    <div class="navbar-header">
        <a class="navbar-brand" href="./">
            <!-- Logo icon --><b>
            <img src="/resources/images/logo-icon.png" style="margin-top: -7px;height: 30px;margin-left: 2px;" alt="homepage" class="dark-logo" />
        </b>
            <!--End Logo icon -->
            <!-- Logo text -->
            <span>
                <h2 style='display:inline;'>DokCluster</h2>
            </span>
        </a>
    </div>
    <!-- ============================================================== -->
    <!-- End Logo -->
    <!-- ============================================================== -->
    <div class="navbar-collapse">
        <!-- ============================================================== -->
        <!-- toggle and nav items -->
        <!-- ============================================================== -->
        <ul class="navbar-nav mr-auto">
            <!-- This is  -->
            <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
        </ul>
        <!-- ============================================================== -->
        <!-- User profile and search -->
        <!-- ============================================================== -->
        <ul class="navbar-nav my-lg-0">
            <!-- ============================================================== -->
            <!-- Search -->
            <!-- ============================================================== -->
            <li class="nav-item search-box"> <a class="nav-link waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                <form class="app-search" id="search_form" onkeypress="if(event.keyCode === 13){event.preventDefault();search_textfield_input($('#search-with-cluster').val());}">
                    <input type="text" class="form-control" placeholder="Search & enter" name="q" id="search-with-cluster"><a class="srh-btn"><i class="ti-close"></i></a>
                </form>
            </li>
            <!-- ============================================================== -->
            <!-- Profile -->
            <!-- ============================================================== -->
            <li class="nav-item">
                <a class="nav-link waves-effect waves-dark" href="./profile"><img src="/resources/images/users/henrik_quadrat.png" alt="user" class="profile-pic" /></a>
            </li>
        </ul>
    </div>
</nav>