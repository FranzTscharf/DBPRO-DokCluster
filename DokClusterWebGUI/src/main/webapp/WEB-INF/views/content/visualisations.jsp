<!DOCTYPE html>
<html lang="en">

<head>
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
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Basic Table</h4>
                                <h6 class="card-subtitle">Add class <code>.table</code></h6>
                                <div class="table-responsive" id="metadata_table">
                                    <iframe src="http://localhost:5601/app/kibana#/visualize/edit/3a879680-f886-11e7-b4ca-3f2a7b9f7c37?embed=true&_g=()&_a=(filters:!(),linked:!f,query:(query_string:(analyze_wildcard:!t,query:'*')),uiState:(vis:(defaultColors:('0+-+13':'rgb(247,252,245)','13+-+25':'rgb(199,233,192)','25+-+38':'rgb(116,196,118)','38+-+50':'rgb(35,139,69)'))),vis:(aggs:!((enabled:!t,id:'1',params:(),schema:metric,type:count),(enabled:!t,id:'2',params:(customInterval:'2h',extended_bounds:(),field:issued,interval:y,min_doc_count:1),schema:segment,type:date_histogram),(enabled:!t,id:'3',params:(field:source.keyword,order:desc,orderBy:'1',size:5),schema:group,type:terms)),listeners:(),params:(addLegend:!t,addTooltip:!t,colorSchema:Greens,colorsNumber:4,colorsRange:!(),enableHover:!f,invertColors:!f,legendPosition:right,percentageMode:!f,setColorRange:!f,times:!(),valueAxes:!((id:ValueAxis-1,labels:(color:%23555,rotate:0,show:!f),scale:(defaultYExtents:!f,type:linear),show:!f,type:value))),title:'Heatmap+of+Sources+by+year',type:heatmap))" height="600" width="800"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- visit charts-->
                    <!-- ============================================================== -->
                    <div class="col-lg-3 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><span class="lstick"></span>Visit Separation</h4>
                                <iframe src="http://localhost:5601/app/kibana#/visualize/edit/dd369f70-f4b2-11e7-8363-8f672d64b6a2?embed=true&_g=()" frameBorder="0" style="height: 250px; width: 100%; max-height: 250px; position: relative;"></iframe>
                                <div id="visitor" style="height: 250px; width: 100%; max-height: 250px; position: relative;" class="c3"><svg width="192.75" height="250" style="overflow: hidden;"><defs><clipPath id="c3-1515855196022-clip"><rect width="192.75" height="226"></rect></clipPath><clipPath id="c3-1515855196022-clip-xaxis"><rect x="-31" y="-20" width="254.75" height="40"></rect></clipPath><clipPath id="c3-1515855196022-clip-yaxis"><rect x="-29" y="-4" width="20" height="250"></rect></clipPath><clipPath id="c3-1515855196022-clip-grid"><rect width="192.75" height="226"></rect></clipPath><clipPath id="c3-1515855196022-clip-subchart"><rect width="192.75"></rect></clipPath></defs><g transform="translate(0.5,4.5)"><text class="c3-text c3-empty" text-anchor="middle" dominant-baseline="middle" x="96.375" y="113" style="opacity: 0;"></text><rect class="c3-zoom-rect" width="192.75" height="226" style="opacity: 0;"></rect><g clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip)" class="c3-regions" style="visibility: hidden;"></g><g clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip-grid)" class="c3-grid" style="visibility: hidden;"><g class="c3-xgrid-focus"><line class="c3-xgrid-focus" x1="-10" x2="-10" y1="0" y2="226" style="visibility: hidden;"></line></g></g><g clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip)" class="c3-chart"><g class="c3-event-rects c3-event-rects-single" style="fill-opacity: 0;"><rect class=" c3-event-rect c3-event-rect-0" x="0.625" y="0" width="192.75" height="226"></rect></g><g class="c3-chart-bars"><g class="c3-chart-bar c3-target c3-target-Other" style="opacity: 1; pointer-events: none;"><g class=" c3-shapes c3-shapes-Other c3-bars c3-bars-Other" style="cursor: pointer;"></g></g><g class="c3-chart-bar c3-target c3-target-Desktop" style="opacity: 1; pointer-events: none;"><g class=" c3-shapes c3-shapes-Desktop c3-bars c3-bars-Desktop" style="cursor: pointer;"></g></g><g class="c3-chart-bar c3-target c3-target-Tablet" style="opacity: 1; pointer-events: none;"><g class=" c3-shapes c3-shapes-Tablet c3-bars c3-bars-Tablet" style="cursor: pointer;"></g></g><g class="c3-chart-bar c3-target c3-target-Mobile" style="opacity: 1; pointer-events: none;"><g class=" c3-shapes c3-shapes-Mobile c3-bars c3-bars-Mobile" style="cursor: pointer;"></g></g></g><g class="c3-chart-lines"><g class="c3-chart-line c3-target c3-target-Other" style="opacity: 1; pointer-events: none;"><g class=" c3-shapes c3-shapes-Other c3-lines c3-lines-Other"></g><g class=" c3-shapes c3-shapes-Other c3-areas c3-areas-Other"></g><g class=" c3-selected-circles c3-selected-circles-Other"></g><g class=" c3-shapes c3-shapes-Other c3-circles c3-circles-Other" style="cursor: pointer;"></g></g><g class="c3-chart-line c3-target c3-target-Desktop" style="opacity: 1; pointer-events: none;"><g class=" c3-shapes c3-shapes-Desktop c3-lines c3-lines-Desktop"></g><g class=" c3-shapes c3-shapes-Desktop c3-areas c3-areas-Desktop"></g><g class=" c3-selected-circles c3-selected-circles-Desktop"></g><g class=" c3-shapes c3-shapes-Desktop c3-circles c3-circles-Desktop" style="cursor: pointer;"></g></g><g class="c3-chart-line c3-target c3-target-Tablet" style="opacity: 1; pointer-events: none;"><g class=" c3-shapes c3-shapes-Tablet c3-lines c3-lines-Tablet"></g><g class=" c3-shapes c3-shapes-Tablet c3-areas c3-areas-Tablet"></g><g class=" c3-selected-circles c3-selected-circles-Tablet"></g><g class=" c3-shapes c3-shapes-Tablet c3-circles c3-circles-Tablet" style="cursor: pointer;"></g></g><g class="c3-chart-line c3-target c3-target-Mobile" style="opacity: 1; pointer-events: none;"><g class=" c3-shapes c3-shapes-Mobile c3-lines c3-lines-Mobile"></g><g class=" c3-shapes c3-shapes-Mobile c3-areas c3-areas-Mobile"></g><g class=" c3-selected-circles c3-selected-circles-Mobile"></g><g class=" c3-shapes c3-shapes-Mobile c3-circles c3-circles-Mobile" style="cursor: pointer;"></g></g></g><g class="c3-chart-arcs" transform="translate(96.375,108)"><text class="c3-chart-arcs-title" style="text-anchor: middle; opacity: 1;">Visits</text><g class="c3-chart-arc c3-target c3-target-Other"><g class=" c3-shapes c3-shapes-Other c3-arcs c3-arcs-Other"><path class=" c3-shape c3-shape c3-arc c3-arc-Other" transform="" style="fill: rgb(236, 239, 241); cursor: pointer; opacity: 1;" d="M-85.6065808693665,32.46629368928817A91.55624999999999,91.55624999999999 0 0,1 -42.548310920432336,-81.06903324871166L-33.25384747955695,-63.35991273564747A71.55624999999999,71.55624999999999 0 0,0 -66.9062560156582,25.374195948437453Z"></path></g><text dy=".35em" class="" transform="translate(-66.92714778483071,-25.382119151382295)" style="opacity: 1; text-anchor: middle; pointer-events: none;"></text></g><g class="c3-chart-arc c3-target c3-target-Desktop"><g class=" c3-shapes c3-shapes-Desktop c3-arcs c3-arcs-Desktop"><path class=" c3-shape c3-shape c3-arc c3-arc-Desktop" transform="" style="fill: rgb(116, 90, 242); cursor: pointer; opacity: 1;" d="M-42.548310920432336,-81.06903324871166A91.55624999999999,91.55624999999999 0 0,1 -9.81368957143348e-14,-91.55624999999999L-7.669938692289024e-14,-71.55624999999999A71.55624999999999,71.55624999999999 0 0,0 -33.25384747955695,-63.35991273564747Z"></path></g><text dy=".35em" class="" transform="translate(-17.129878712050544,-69.49864990442605)" style="opacity: 1; text-anchor: middle; pointer-events: none;"></text></g><g class="c3-chart-arc c3-target c3-target-Tablet"><g class=" c3-shapes c3-shapes-Tablet c3-arcs c3-arcs-Tablet"><path class=" c3-shape c3-shape c3-arc c3-arc-Tablet" transform="" style="fill: rgb(38, 198, 218); cursor: pointer; opacity: 1;" d="M60.71302387855882,68.53083718724035A91.55624999999999,91.55624999999999 0 0,1 -85.6065808693665,32.46629368928817L-66.9062560156582,25.374195948437453A71.55624999999999,71.55624999999999 0 0,0 47.45057071374291,53.56062222381833Z"></path></g><text dy=".35em" class="" transform="translate(-17.12987871205046,69.49864990442605)" style="opacity: 1; text-anchor: middle; pointer-events: none;"></text></g><g class="c3-chart-arc c3-target c3-target-Mobile"><g class=" c3-shapes c3-shapes-Mobile c3-arcs c3-arcs-Mobile"><path class=" c3-shape c3-shape c3-arc c3-arc-Mobile" transform="" style="fill: rgb(30, 136, 229); cursor: pointer; opacity: 1;" d="M5.606203425221742e-15,-91.55624999999999A91.55624999999999,91.55624999999999 0 0,1 60.71302387855882,68.53083718724035L47.45057071374291,53.56062222381833A71.55624999999999,71.55624999999999 0 0,0 4.381556626074389e-15,-71.55624999999999Z"></path></g><text dy=".35em" class="" transform="translate(66.92714778483071,-25.3821191513823)" style="opacity: 1; text-anchor: middle; pointer-events: none;"></text></g></g><g class="c3-chart-texts"><g class="c3-chart-text c3-target c3-target-Other" style="opacity: 1; pointer-events: none;"><g class=" c3-texts c3-texts-Other"></g></g><g class="c3-chart-text c3-target c3-target-Desktop" style="opacity: 1; pointer-events: none;"><g class=" c3-texts c3-texts-Desktop"></g></g><g class="c3-chart-text c3-target c3-target-Tablet" style="opacity: 1; pointer-events: none;"><g class=" c3-texts c3-texts-Tablet"></g></g><g class="c3-chart-text c3-target c3-target-Mobile" style="opacity: 1; pointer-events: none;"><g class=" c3-texts c3-texts-Mobile"></g></g></g></g><g clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip-grid)" class="c3-grid c3-grid-lines"><g class="c3-xgrid-lines"></g><g class="c3-ygrid-lines"></g></g><g class="c3-axis c3-axis-x" clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip-xaxis)" transform="translate(0,226)" style="visibility: visible; opacity: 0;"><text class="c3-axis-x-label" transform="" style="text-anchor: end;" x="192.75" dx="-0.5em" dy="-0.5em"></text><g class="tick" transform="translate(97, 0)" style="opacity: 1;"><line y2="6" x1="0" x2="0"></line><text y="9" x="0" transform="" style="text-anchor: middle; display: block;"><tspan x="0" dy=".71em" dx="0">0</tspan></text></g><path class="domain" d="M0,6V0H192.75V6"></path></g><g class="c3-axis c3-axis-y" clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip-yaxis)" transform="translate(0,0)" style="visibility: visible; opacity: 0;"><text class="c3-axis-y-label" transform="rotate(-90)" style="text-anchor: end;" x="0" dx="-0.5em" dy="1.2em"></text><g class="tick" transform="translate(0,208)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">10</tspan></text></g><g class="tick" transform="translate(0,184)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">15</tspan></text></g><g class="tick" transform="translate(0,161)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">20</tspan></text></g><g class="tick" transform="translate(0,137)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">25</tspan></text></g><g class="tick" transform="translate(0,114)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">30</tspan></text></g><g class="tick" transform="translate(0,91)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">35</tspan></text></g><g class="tick" transform="translate(0,67)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">40</tspan></text></g><g class="tick" transform="translate(0,44)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">45</tspan></text></g><g class="tick" transform="translate(0,20)" style="opacity: 1;"><line x2="-6"></line><text x="-9" y="0" style="text-anchor: end;"><tspan x="-9" dy="3">50</tspan></text></g><path class="domain" d="M-6,1H0V226H-6"></path></g><g class="c3-axis c3-axis-y2" transform="translate(192.75,0)" style="visibility: hidden; opacity: 0;"><text class="c3-axis-y2-label" transform="rotate(-90)" style="text-anchor: end;" x="0" dx="-0.5em" dy="-0.5em"></text><g class="tick" transform="translate(0,226)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0</tspan></text></g><g class="tick" transform="translate(0,204)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.1</tspan></text></g><g class="tick" transform="translate(0,181)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.2</tspan></text></g><g class="tick" transform="translate(0,159)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.3</tspan></text></g><g class="tick" transform="translate(0,136)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.4</tspan></text></g><g class="tick" transform="translate(0,114)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.5</tspan></text></g><g class="tick" transform="translate(0,91)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.6</tspan></text></g><g class="tick" transform="translate(0,69)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.7</tspan></text></g><g class="tick" transform="translate(0,46)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.8</tspan></text></g><g class="tick" transform="translate(0,24)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">0.9</tspan></text></g><g class="tick" transform="translate(0,1)" style="opacity: 1;"><line x2="6" y2="0"></line><text x="9" y="0" style="text-anchor: start;"><tspan x="9" dy="3">1</tspan></text></g><path class="domain" d="M6,1H0V226H6"></path></g></g><g transform="translate(0.5,250.5)" style="visibility: hidden;"><g clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip-subchart)" class="c3-chart"><g class="c3-chart-bars"></g><g class="c3-chart-lines"></g></g><g clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip)" class="c3-brush" style="pointer-events: all; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><rect class="background" x="0" width="192.75" style="visibility: hidden; cursor: crosshair;"></rect><rect class="extent" x="0" width="0" style="cursor: move;"></rect><g class="resize e" transform="translate(0,0)" style="cursor: ew-resize; display: none;"><rect x="-3" width="6" height="6" style="visibility: hidden;"></rect></g><g class="resize w" transform="translate(0,0)" style="cursor: ew-resize; display: none;"><rect x="-3" width="6" height="6" style="visibility: hidden;"></rect></g></g><g class="c3-axis-x" transform="translate(0,0)" clip-path="url(file:///Users/franztscharf/Downloads/admin-pro-lite%202/lite/index.html#c3-1515855196022-clip-xaxis)" style="visibility: hidden; opacity: 0;"><g class="tick" transform="translate(97, 0)" style="opacity: 1;"><line y2="6" x1="0" x2="0"></line><text y="9" x="0" transform="" style="text-anchor: middle; display: block;"><tspan x="0" dy=".71em" dx="0">0</tspan></text></g><path class="domain" d="M0,6V0H192.75V6"></path></g></g><g transform="translate(0,230)"><g class="c3-legend-item c3-legend-item-Other" style="visibility: hidden; cursor: pointer;"><text x="14" y="9" style="pointer-events: none;">Other</text><rect class="c3-legend-item-event" x="0" y="-5" width="0" height="0" style="fill-opacity: 0;"></rect><line class="c3-legend-item-tile" x1="-2" y1="4" x2="8" y2="4" stroke-width="10" style="stroke: rgb(236, 239, 241); pointer-events: none;"></line></g><g class="c3-legend-item c3-legend-item-Desktop" style="visibility: hidden; cursor: pointer;"><text x="14" y="9" style="pointer-events: none;">Desktop</text><rect class="c3-legend-item-event" x="0" y="-5" width="0" height="0" style="fill-opacity: 0;"></rect><line class="c3-legend-item-tile" x1="-2" y1="4" x2="8" y2="4" stroke-width="10" style="stroke: rgb(116, 90, 242); pointer-events: none;"></line></g><g class="c3-legend-item c3-legend-item-Tablet" style="visibility: hidden; cursor: pointer;"><text x="14" y="9" style="pointer-events: none;">Tablet</text><rect class="c3-legend-item-event" x="0" y="-5" width="0" height="0" style="fill-opacity: 0;"></rect><line class="c3-legend-item-tile" x1="-2" y1="4" x2="8" y2="4" stroke-width="10" style="stroke: rgb(38, 198, 218); pointer-events: none;"></line></g><g class="c3-legend-item c3-legend-item-Mobile" style="visibility: hidden; cursor: pointer;"><text x="14" y="9" style="pointer-events: none;">Mobile</text><rect class="c3-legend-item-event" x="0" y="-5" width="0" height="0" style="fill-opacity: 0;"></rect><line class="c3-legend-item-tile" x1="-2" y1="4" x2="8" y2="4" stroke-width="10" style="stroke: rgb(30, 136, 229); pointer-events: none;"></line></g></g><text class="c3-title" x="96.375" y="0"></text></svg><div class="c3-tooltip-container" style="position: absolute; pointer-events: none; display: none;"></div></div>
                                <table class="table vm font-14">
                                    <tbody><tr>
                                        <td class="b-0">Mobile</td>
                                        <td class="text-right font-medium b-0">38.5%</td>
                                    </tr>
                                    <tr>
                                        <td>Tablet</td>
                                        <td class="text-right font-medium">30.8%</td>
                                    </tr>
                                    </tbody></table>
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