<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <%@ include file="../../view-fragments/header.jsp" %>
</head>

<body class="fix-header fix-sidebar card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">DokCluster</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <%@ include file="../../view-fragments/topbar.jsp" %>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <%@ include file="../../view-fragments/sidebar.jsp" %>
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Main wrapper - style you can find in pages.scss -->
                <!-- ============================================================== -->
                <section id="wrapper" class="error-page">
                    <div class="error-box">
                        <div class="error-body text-center">
                            <h1>404</h1>
                            <h3 class="text-uppercase">Page Not Found !</h3>
                            <!--
                            <p class="text-muted m-t-30 m-b-30">YOU SEEM TO BE TRYING TO FIND HIS WAY HOME</p>
                            <a href="" class="btn btn-info btn-rounded waves-effect waves-light m-b-40">Back home</a>
                            -->
                        </div>
                    </div>
                </section>
                <!-- ============================================================== -->
                <!-- End Wrapper -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- All Jquery -->
                <!-- ============================================================== -->
                <script src="../assets/plugins/jquery/jquery.min.js"></script>
                <!-- Bootstrap tether Core JavaScript -->
                <script src="../assets/plugins/bootstrap/js/popper.min.js"></script>
                <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
                <!--Wave Effects -->
                <script src="js/waves.js"></script>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer">
                <%@ include file="../../view-fragments/footer.jsp" %>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <%@ include file="../../view-fragments/jqueryPagePlugins.jsp" %>
</body>

</html>