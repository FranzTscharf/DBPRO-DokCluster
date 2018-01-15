<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <%@ include file="../../view-fragments/header.jsp" %>
</head>
<!-- ============================================================== -->
<!-- added onload on the body to show the default carrot graphic with 'digital'-->
<!-- ============================================================== -->
<body class="fix-header fix-sidebar card-no-border" onload="set_search_graphic('digital');">
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
                        <h3 class="text-themecolor">Kibana Visualisations</h3>
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

                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">
                                    <span class="lstick"></span>Document Types</h4>
                                    <iframe frameborder="0" height="360" width="100%" src="http://localhost:5601/app/kibana#/visualize/edit/9b3049a0-fa20-11e7-bb12-2364802450e0?embed=true&_g=()&_a=(filters:!(),linked:!f,query:(match_all:()),uiState:(vis:(legendOpen:!f)),vis:(aggs:!((enabled:!t,id:'2',params:(),schema:metric,type:count),(enabled:!t,id:'3',params:(field:type.keyword,order:desc,orderBy:'2',size:20),schema:segment,type:terms)),listeners:(),params:(addLegend:!t,addTimeMarker:!f,addTooltip:!f,categoryAxes:!((id:CategoryAxis-1,labels:(show:!t,truncate:100),position:bottom,scale:(type:linear),show:!t,style:(),title:(text:'type.keyword:+Descending'),type:category)),grid:(categoryLines:!f,style:(color:%23eee)),legendPosition:right,seriesParams:!((data:(id:'2',label:Count),drawLinesBetweenPoints:!t,interpolate:linear,lineWidth:2,mode:stacked,show:!t,showCircles:!t,type:histogram,valueAxis:ValueAxis-1)),times:!(),valueAxes:!((id:ValueAxis-1,labels:(filter:!f,rotate:0,show:!t,truncate:100),name:LeftAxis-1,position:left,scale:(mode:normal,type:linear),show:!t,style:(),title:(text:Count),type:value))),title:'Documents+by+Types',type:histogram))">
                                    </iframe>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><span class="lstick"></span>Heatmap of Sources by year</h4>
                                <h6 class="card-subtitle">Viewing the amount of the Documents</h6>
                                <div class="table-responsive">
                                    <iframe frameborder="0" height="360" width="100%" src="http://localhost:5601/app/kibana#/visualize/edit/3a879680-f886-11e7-b4ca-3f2a7b9f7c37?embed=true&_g=()&_a=(filters:!(),linked:!f,query:(query_string:(analyze_wildcard:!t,query:'*')),uiState:(vis:(defaultColors:('0+-+13':'rgb(247,252,245)','13+-+25':'rgb(199,233,192)','25+-+38':'rgb(116,196,118)','38+-+50':'rgb(35,139,69)'))),vis:(aggs:!((enabled:!t,id:'1',params:(),schema:metric,type:count),(enabled:!t,id:'2',params:(customInterval:'2h',extended_bounds:(),field:issued,interval:y,min_doc_count:1),schema:segment,type:date_histogram),(enabled:!t,id:'3',params:(field:source.keyword,order:desc,orderBy:'1',size:5),schema:group,type:terms)),listeners:(),params:(addLegend:!t,addTooltip:!t,colorSchema:Greens,colorsNumber:4,colorsRange:!(),enableHover:!f,invertColors:!f,legendPosition:right,percentageMode:!f,setColorRange:!f,times:!(),valueAxes:!((id:ValueAxis-1,labels:(color:%23555,rotate:0,show:!f),scale:(defaultYExtents:!f,type:linear),show:!f,type:value))),title:'Heatmap+of+Sources+by+year',type:heatmap))"></iframe>
                                </div>
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