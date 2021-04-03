/******
* Lay danh sach thuoc tinh san pham theo thuoc tinh chinh
*/
function get_list_attr(type_id){
    $("#ajax-load").css('display','none'); 
    $.post(base_url+"product/shop/get_list_ajax_attr",{'type_id':type_id},function(data){ 
            $("#list_type").html(data.list);
            $("#ajax-load").css('display','none');                                              
    },'json');
}

// Chon hinh chinh cho san pham

 


function edit_cat(catid){
    $.post(base_url+"nhomhang/edit",{'catid':catid},function(data){ 
            $("#catid").val(data.catid);
            $("#catcode").val(data.catcode);
            $("#catname").val(data.catname);
            $("#catname_en").val(data.catname_en);
            $("#ordering").val(data.ordering);
            $("#ismenuleft").val(data.ismenuleft);
            if(data.ismenuleft == 1){
                $("#ismenuleft").attr('checked','checked');
            }
            $("#nolink").val(data.nolink);
            if(data.nolink == 1){
                $("#nolink").attr('checked','checked');
            }
            $("#istab").val(data.nolink);
            if(data.istab == 1){
                $("#istab").attr('checked','checked');
            }
    },'json');
}

