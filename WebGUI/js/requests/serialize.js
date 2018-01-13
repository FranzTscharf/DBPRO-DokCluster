/**
 * Dokument Loads
 *
 */
$(document).ready(function(){
    foamtree = new CarrotSearchFoamTree({
        id: "foamtree-area"
    });
});

function set_search_graphic(event) {
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
        }
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
            if(document_id === hit._source.id){
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
            $("#metadata_table").empty()
            $("#metadata_table").append(`
                <tr>
                    <th>Key</th>
                    <th>Value</th>
                </tr>
                `)
            $.each(data._source, function(key, value){
                if(key === "author"){
                    var names = "";
                    for(obj of value){
                        names += obj.family+ " "+ obj.given + ", "
                    }
                    var names_display = names.substring(0, names.length-2);
                    console.log(names);
                    $("#metadata_table").append(
                        "<tr><td>"+key+"</td><td>"+names_display+"</td></tr>"
                    )
                }else if(key === "issued"){
                    console.log(value["date-parts"]);
                    var issue_date = "";
                    for(obj of value["date-parts"][0]){
                        issue_date += obj + "-";
                    }
                    var issue_date_display = issue_date.substring(0, issue_date.length-1);
                    $("#metadata_table").append(
                        "<tr><td>"+key+"</td><td>"+issue_date_display+"</td></tr>"
                    );
                }else{
                    $("#metadata_table").append(
                        "<tr><td>"+key+"</td><td>"+value+"</td></tr>"
                    )
                }
                
            });
        }
    })
}

function set_kibana_graphic(event) {

    //#!TODO set src in the iframe with the search input text
    //var test = document.getElementById('#search-with-cluster').value;
    //alert(test);
}
