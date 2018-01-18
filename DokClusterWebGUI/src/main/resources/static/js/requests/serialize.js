/**
 * Dokument Loads
 *
 */

$(document).ready(function(){
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
});
function clusterDataAjaxCall(data){
        return $.ajax({
        method: "GET",
        url : "http://localhost:9200/zotero/entry/_search_with_clusters",
        data : data
    });
}
function search_textfield_input(search_str) {
    if($("#foamtree-area").length){
        set_search_graphic(search_str);
    }
    if($(".kibana-visualization").length){
        set_kibana_graphic(search_str);
    }
}
function set_search_graphic(search_str) {
    var data = {
        q : search_str,
        field_mapping_title : "_source.title",
        field_mapping_content : "_source.abstract",
        size : "100"
    };
    var clusterAjaxCall = clusterDataAjaxCall(data);
    clusterAjaxCall.done(create_foam_tree);
    clusterAjaxCall.fail(show_error_message);
}

function show_error_message() {
   var foamtreeArea = $("#foamtree-area");
   foamtreeArea.empty()
   var errorHeading = $("<h1>Something went wrong!</h1>").addClass("alert-heading");
   foamtreeArea.css({"height":"360px","display":"flex","justify-content":"center","align-items":"center"});
   foamtreeArea.addClass("alert alert-danger");
   foamtreeArea.append(errorHeading);
}
function create_foam_tree(cluster_data){
    console.log(cluster_data);
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
function find_responding_document(server_response,document_id){
    var return_value;
    server_response.hits.hits.forEach(function(hit){
            if(parseInt(document_id) === hit._source.id){
               return_value = hit._source.title;
            }
    });
    return return_value;
}

function get_document_metadata(entryId){
    $.ajax({
        method: "GET",
        url : "http://localhost:9200/zotero/entry/"+entryId,
        /* url request hidden Data fields with id #...*/
        success: function(data){
            $("#metadata_table").empty();
            $("#metadata_table").append('<tr><th>Key</th><th>Value</th></tr>')
            $.each(data._source, function(key, value){
                $("#metadata_table").append(
                    "<tr><td style='width: 20%'>"+key+"</td><td>"+value+"</td></tr>"
                )
            });
        }
    })
}

function set_kibana_graphic(search_str) {

    console.log("before:",search_str);
    search_str = search_str.replace(/'/g,'');
    console.log("after:",search_str)
    $(".kibana-visualization").each(function (index, element) {
        console.log("element:", element);
        var iframe_src = element.src;
        var new_iframe_src = iframe_src.replace(/query:'.+?'/, "query:'"+search_str+"'");
        element.src= new_iframe_src;
    });
}
