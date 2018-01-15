<!DOCTYPE html>
<html lang="en">

<head>
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

            <div class="card">
                <class="card-body">
                <h1>about</h1>


                <h1>Imprint</h1>


                <div class="row">
                    <div class="col-sm-4">

                        <p>
                            Franz Tscharf | Antonia Steinmann | Henrik Fröhls | Mark Paranski<br/>
                            c/o Technische Universität Berlin<br/>
                            Straße des 17. Juni 136<br/>
                            10623 Berlin<br/>
                        </p>
                        <p><a href="mailto:team@smart-Meter.org">team@smart-Meter.org</a> (not active!)</p>
                    </div>
                    <div class="col-sm-8">
                        <img src="../media/tu-berlin.png" class="img-responsive" alt="c/o TU Berlin" width="150"
                             height="auto">
                    </div>
                </div>

                <h2>Disclaimer</h2>
                <h3>Accountability for content</h3><br/>The contents of our pages have been created with the utmost
                care. However, we cannot guarantee the contents' accuracy, completeness or topicality. According to
                statutory provisions, we are furthermore responsible for our own content on these web pages. In this
                context, please note that we are accordingly not obliged to monitor merely the transmitted or saved
                information of third parties, or investigate circumstances pointing to illegal activity. Our obligations
                to remove or block the use of information under generally applicable laws remain unaffected by this as
                per &sect;&sect; 8 to 10 of the Telemedia Act (TMG).<br/><br/>
                <h3>Accountability for links</h3><br/>Responsibility for the content of external links (to web pages of
                third parties) lies solely with the operators of the linked pages. No violations were evident to us at
                the time of linking. Should any legal infringement become known to us, we will remove the respective
                link immediately.<br/><br/>
                <h3>Copyright</h3><br/> Our web pages and their contents are subject to German copyright law. Unless
                expressly permitted by law (&sect; 44a et seq. of the copyright law), every form of utilizing,
                reproducing or processing works subject to copyright protection on our web pages requires the prior
                consent of the respective owner of the rights. Individual reproductions of a work are allowed only for
                private use, so must not serve either directly or indirectly for earnings. Unauthorized utilization of
                copyrighted works is punishable (&sect; 106 of the copyright law).<br/><br/><i>Quelle: </i><a
                    href="http://www.muster-vorlagen.net" target="_blank">Rechtssicheres Impressum –
                www.Muster-Vorlagen.net</a><br/><br/>


            </div>
        </div>
    </div>

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