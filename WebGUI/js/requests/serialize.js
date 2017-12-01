function place_seach_graphic(event) {
    event.preventDefault();
    $.ajax({
        method: "GET",
        url : "http://localhost:9200/zotero/entry/_search_with_clusters",
        /* url request hidden Data fields with id #...*/
        data : $("#search_form").serialize(),
        success: create_foam_tree
    });
}
function create_foam_tree(cluster_data){
    var groups_arr = [];
    var doc_group = [];
    cluster_data.clusters.forEach(function(cluster){
        cluster.documents.forEach(function(document_obj){
            var obj = {
                label: find_responding_document(cluster_data,document_obj),
                weight : 2
            };
            doc_group.push(obj);
        });
        var cluster_obj = {
            label: cluster.label,
            weight: cluster.score,
            groups: doc_group
        }
        doc_group = [];
        groups_arr.push(cluster_obj);

    });
    foamtree.set({
        id: "foamtree-area",
        dataObject:{
            groups: groups_arr
        }
    });
}
function find_responding_document(server_response,document_id){
    var return_value;
    server_response.hits.hits.forEach(function(hit){
            if(document_id == hit._source.id){
               return_value = hit._source.title;
            }
    });
    return return_value;
}
$(document).ready(function(){
    foamtree = new CarrotSearchFoamTree({
        id: "foamtree-area"
    });

});

