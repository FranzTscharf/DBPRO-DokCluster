var baseUrl = "http://tscharf.ddnss.de:9200";
/**
 * an event listener that handles the algorithm select dropdown
 * reloads the carrot2 visualization with the new algorithm on change
 */
$("#algorithm-select").change(function (event) {
    var newAlgorithm = $(this).val();
    var searchStr = $("#search-with-cluster").val();
    if(searchStr === ""){
        searchStr = "digital";
    }
    set_search_graphic(searchStr, newAlgorithm);
});
/**
 * method for initializing the foamtree visualization with our options
 *
 */
function initializeFoamtree() {
    if($("#foamtree-area").length){
        foamtree = new CarrotSearchFoamTree({
            id: "foamtree-area",
            layout: "squarified",
            groupMinDiameter: 0,
            relaxationInitializer: "ordered",
            groupGrowingEasing: "quadInOut",
            groupBorderRadius: 0,
            groupSelectionOutlineShadowColor: "hsla(295, 14%, 97%, 1)",
            groupFillType: "plain",
            groupStrokePlainLightnessShift: -20,
            rainbowStartColor: "hsla(140, 77%, 29%, 1)",
            rainbowEndColor: "hsla(252, 24%, 51%, 1)",
            rolloutEasing: "squareInOut",
            rolloutScalingStrength: -0.3,
            rolloutRotationStrength: 0,
            pullbackEasing: "squareInOut",
            pullbackDuration: 2000,
            pullbackScalingStrength: -0.3,
            pullbackRotationStrength: 0,
            pullbackPolygonDelay: 0.1,
            attributionPosition: 45
        });
    }
}
/**
 * function that triggers when the page finished loading,
 * also initializes the foamtree area for carrot visualization
 */
$(document).ready(function(){
    initializeFoamtree();
});

/**
 * sets the baseUrl for elasticsearch
 * @param baseUrlString
 */
function setBaseUrl(baseUrlString) {
    baseUrl = baseUrlString;
}
/**
 * creates a call to the elasticsearch instance running in the background for returning cluster
 * @param data a plain object with parameters for the endpoint call
 * @returns an ajax object for further usage with promises
 */
function cluster_data_ajax_call(data){
        return $.ajax({
            method: "GET",
            url : baseUrl + "/zotero/entry/_search_with_clusters",
            data : data
    });
}

/**
 * function for forwarding search requests to the foamtree visualization and the kibana visualization
 * @param search_str the text string from the search field
 */
function search_textfield_input(search_str, algorithm_str) {
    if($("#foamtree-area").length){
        set_search_graphic(search_str, algorithm_str);
    }
    if($(".kibana-visualization").length){
        set_kibana_graphic(search_str);
    }
}

/**
 * makes an ajax call to the cluster endpoint of the elasticsearch endpoint and handles the response
 * @param search_str the text string form the search field.
 */
function set_search_graphic(search_str, algorithm_str) {
    var data = {
        q : search_str,
        field_mapping_title : "_source.title",
        field_mapping_content : "_source.abstract",
        size : "100",
        algorithm: algorithm_str
    };
    var clusterAjaxCall = cluster_data_ajax_call(data);
    clusterAjaxCall.done(create_foam_tree);
    clusterAjaxCall.fail(show_error_message);
}

/**
 * creates a simple error message in the foamtree visualization div on error from the elasticsearch endpoint
 */
function show_error_message() {
    foamtree = null;
    var foamtreeArea = $("#foamtree-area");
    foamtreeArea.children("canvas").css("display", "none");
    var errorArea = foamtreeArea.children("div");
    if(errorArea.length){
        foamtreeArea.children("div").css("display", "flex");
    }else {
        var errorHeading = $("<h1>Something went wrong!</h1>").addClass("alert-heading");
        errorArea = $("<div></div>");
        errorArea.css({"height":"360px","display":"flex","justify-content":"center","align-items":"center"});
        errorArea.addClass("alert alert-danger");
        errorArea.append(errorHeading);
        foamtreeArea.append(errorArea);

    }
}
/**
 * sets the foamtree and visualizes the cluster.
 * @param cluster_data the data of the cluster
 */
function create_foam_tree(cluster_data){
    if (cluster_data.hits.total === 0){
        show_error_message();
        return;
    }
    var groups_arr = [];
    var doc_group = [];
    cluster_data.clusters.forEach(function(cluster){
        cluster.documents.forEach(function(document_obj){
            var obj = {
                label: find_responding_document(cluster_data,document_obj),
                weight : 2,
                isEntry: true,
                entryId : document_obj
            };
            doc_group.push(obj);
        });
        var cluster_obj = {
            label: cluster.label,
            weight: cluster.score,
            groups: doc_group
        };
        doc_group = [];
        groups_arr.push(cluster_obj);

    });
    if(typeof foamtree !== "undefined"){
        $("#foamtree-area").children("canvas").css("display","inherit");
        var errorBox = $("#foamtree-area").children("div");
        if(errorBox.length){
            errorBox.css("display","none");
        }
        foamtree.set({
            id: "foamtree-area",
            dataObject:{
                groups: groups_arr
            },
            onGroupDoubleClick: function(event){
                if(event.group.isEntry){
                    get_document_metadata(event.group.entryId);
                }
            }
        });
    }
}

/**
 * finds the corresponding document to the document id to assign the document title to the document
 * @param server_response the cluster response from elasticsearch
 * @param document_id the id of the document
 * @returns the title of the document
 */
function find_responding_document(server_response,document_id){
    var return_value;
    server_response.hits.hits.forEach(function(hit){
            if(parseInt(document_id) === hit._source.id){
               return_value = hit._source.title;
            }
    });
    return return_value;
}

/**
 * create a ajax call to get the metadata of an entry in the elasticsearch database
 * @param entryId the id of the document.
 */
function create_meta_data_ajax_call(entryId){
    return $.ajax({
        method: "GET",
        url : baseUrl + "/zotero/entry/"+entryId
    });
}

/**
 * appends the table with id #metadata-table with the metadata of the document that was clicked inside the visualization
 * @param data the server response with the metadata about the document.
 */
function append_metada_table(data) {
    $("#metadata_table").empty();
    $("#metadata_table").append('<tr><th>Key</th>th><th>Value</th>th></tr>tr>');
    $.each(data._source, function (key, value) {
        $("#metadata_table").append(
            "<tr><td style=''width: 20%'>" + key + "</td><td>" + value + "</td></tr>tr>"
        )
    });
}
/**
 * makes an Ajax call and then appends the information to a table.
 * @param entryId the id of the document that was clicked in the foamtree graphic.
 */
function get_document_metadata(entryId){
    var ajaxCall = create_meta_data_ajax_call(entryId);
    ajaxCall.done(append_metada_table);
}

/**
 * changes the source link of the kibana visualization's iframe to include the results from the search
 * @param search_str the text searched by the user from the form
 */
function set_kibana_graphic(search_str) {
    search_str = search_str.replace(/'/g,''); // basically escape all ' symbols
    $(".kibana-visualization").each(function (index, element) {
        var iframe_src = element.src;
        element.src= iframe_src.replace(/query:'.+?'/, "query:'" + search_str + "'");
    });
}
