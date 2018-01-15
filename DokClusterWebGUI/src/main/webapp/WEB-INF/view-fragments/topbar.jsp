<nav class="navbar top-navbar navbar-expand-md navbar-light">
    <!-- ============================================================== -->
    <!-- Logo -->
    <!-- ============================================================== -->
    <div class="navbar-header">
        <a class="navbar-brand" href="index.html">
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
            <li class="nav-item hidden-xs-down search-box"> <a class="nav-link hidden-sm-down waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                <form class="app-search" id="search_form" onkeypress="if(event.keyCode == 13)set_search_graphic($('#search-with-cluster').val());">
                    <input type="hidden" value="100" name="size" id="size"/>
                    <input type="hidden" value="_source.title" name="field_mapping_title" id="field_mapping_title"/>
                    <input type="hidden" value="_source.abstract" name="field_mapping_content" id="field_mapping_content"/>
                    <input type="text" class="form-control" placeholder="Search & enter" name="q" id="search-with-cluster"><a class="srh-btn"><i class="ti-close"></i></a>
                </form>
            </li>
            <!-- ============================================================== -->
            <!-- Profile -->
            <!-- ============================================================== -->
            <li class="nav-item">
                <a class="nav-link waves-effect waves-dark" href="#"><img src="/resources/images/users/henrik.png" alt="user" class="profile-pic" /></a>
            </li>
        </ul>
    </div>
</nav>