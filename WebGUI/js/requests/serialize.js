function place_seach_graphic() {
    event.preventDefault();
    $.ajax({
        method: "GET",
        url : "http://localhost:9200/zotero/entry/_search_with_clusters",
        /* url request hidden Data fields with id #...*/
        data : $("#search_form").serialize(),
        success: function(data){
            var groups_arr = [];
            var doc_group = [];
            data.clusters.forEach(function(cluster){
                cluster.documents.forEach(function(document_obj){
                    var obj = {
                        label: document_obj,
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
            var foamtree = new CarrotSearchFoamTree({
                id: "foamtree-area",
                dataObject:{
                    groups: groups_arr
                }
            });
        }
    });
}