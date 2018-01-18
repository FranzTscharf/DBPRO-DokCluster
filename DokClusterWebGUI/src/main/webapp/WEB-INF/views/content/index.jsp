<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <%@ include file="../../view-fragments/header.jsp" %>
</head>
<!-- ============================================================== -->
<!-- added onload on the body to show the default carrot graphic with 'digital'-->
<!-- ============================================================== -->
<body class="fix-header fix-sidebar card-no-border" onload="search_textfield_input('digital');">
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
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Overview of the Documents </h3>
                    </div>
                    <div class="col-md-7 align-self-center">
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Sales overview chart -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-lg-8 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div>
                                        <h3 class="card-title m-b-5"><span class="lstick"></span>Carrot Cluster</h3>
                                    </div>
                                </div>
                                <div class="p-relative" style="height:360px;" id="foamtree-area"></div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- visit charts-->
                    <!-- ============================================================== -->
                    <div class="col-lg-4 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><span class="lstick">
                                </span>Source with Yearly Overview</h4>
                                <iframe id="kibanaOverviewiFrame" class="kibana-visualization" src="http://localhost:5601/app/kibana#/visualize/edit/592b1030-f886-11e7-b4ca-3f2a7b9f7c37?embed=true&_g=()&_a=(filters:!(),linked:!f,query:(query_string:(analyze_wildcard:!t,query:'*')),uiState:(vis:(legendOpen:!f)),vis:(aggs:!((enabled:!t,id:'1',params:(),schema:metric,type:count),(enabled:!t,id:'2',params:(field:source.keyword,order:desc,orderBy:'1',size:5),schema:segment,type:terms),(enabled:!t,id:'3',params:(customInterval:'2h',extended_bounds:(),field:issued,interval:y,min_doc_count:1),schema:segment,type:date_histogram)),listeners:(),params:(addLegend:!t,addTooltip:!t,isDonut:!t,legendPosition:bottom),title:'Pie+Chart+of+sources+with+Yearly+overwiew',type:pie))" frameBorder="0" style="height: 350px; width: 100%; position: relative;"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Page Content -->
                <!-- ============================================================== -->
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