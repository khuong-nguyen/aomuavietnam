$(document).ready(function() {	
	//validate
	jQuery("#form-validate").validate({	
		rules:{			
			fullName:"required",			
			address: "required",
			phone:"required",
			email:{
				required: true,
                email: true
			}
		},
		messages:{
			fullName:"Họ tên bạn phải nhập vào!",
			address:"Bạn phải nhập vào địa chỉ",
			phone:"Điện thoại liên hệ khi giao hàng không được rỗng!",
			email:{
				  required: "Email hiện tại không được rỗng!. Vui lòng nhập vào.",
	              email: "Email không đúng định dạng. Vui lòng kiểm tra lại"      
			},
			
			
		}
	});
	
	
	//update cart
	jQuery(".updateCart").click(function(){
		var attrID  = jQuery(this).attr("id");
		var product_id  = attrID.split('_');
		//get quantity
		var qty = jQuery("#qty_"+product_id[1]).val();
		//check quantiy
		if(qty == ''){
			qty = 1;
		}
		// ajax update ***
		$.ajax({
	            type: "POST",
	            url: base_url + 'muangay/update_cart',
	            data: {'product_id':product_id[1],'qty':qty},
	            dataType: "json",
	            success: function(data) {
	            	//check error
	    			if(data.error == 0){
	    				alert(data.msg);
	    				//reload
	    				window.location = base_url + "thong-tin-gio-hang.html";
	    			}else{
	    				alert(data.msg);
	    			}

	            }
	        });		 	
		
	});
	
	
  
   //district   
    $("#quanhuyen_id").change(function() {
        total = $("#total_price").val();
        payment_id = $('input[name=thanhtoan_id]:checked').val();
        quanhuyen_id = $("#quanhuyen_id").val();
        if(quanhuyen_id == ''){
            hide_v();
            alert('Vui lòng chọn Thành phố, Quận Huyện');
            
            return false;
        }
        //return false;
        $.post(site_url+"muangay/get_payment",{'payment_id':payment_id,'quanhuyen_id':quanhuyen_id,'total':total},function(data){
            $("#total_ship").val(data.ship_price);
            $("#label_total_ship").html(formatCurrency(data.ship_price));
            get_total_order();
            
        },'json');
    });
    
    $("#thanhpho_id").change(function() {
        show_v();
        dataString = 'thanhpho_id='+$(this).val();
        $.ajax({
            type: "POST",
            url: site_url+'muangay/get_quanhuyen',
            data: dataString,
            dataType: "json",
            success: function(data) {
                hide_v();
                $("#quanhuyen_id").html(data.list);
            }
        });
    });
   
  

});

//** hide_msg
function hide_msg(){
	setTimeout(RemoveMes, 2000); 
}  

function RemoveMes(){
	var id_msg = $("#msg");
    if(id_msg.length > 0){
        $("#msg").slideUp("fast", function() {
            $(this).hide();
        });        
    }
}
function change_ship(shipping_id, order_id){
	   price_ship = $("#ship_"+shipping_id).html();
	   $("#price_ship").html(price_ship);
	    $.post(site_url+"muangay/getPaymentList", { "shipping_id": shipping_id,'order_id':order_id },function(data){
	        $("tbody#payment_list").html(data);
	    });
	}

function get_price_ship(){
    show_v();
    payment_id = $('input[name=thanhtoan_id]:checked').val();
    quanhuyen_id = $("#quanhuyen_id").val();
    total = $("#total_price").val();
    if(quanhuyen_id == ''){
        hide_v();
        alert('Vui lòng chọn Thành phố, Quận Huyện');
        
        return false;
    }
    //return false;
    $.post(site_url+"muangay/get_payment",{'payment_id':payment_id,'quanhuyen_id':quanhuyen_id,'total':total},function(data){
        $("#total_ship").val(data.ship_price);
        $("#label_total_ship").html(formatCurrency(data.ship_price));
        get_total_order();
        hide_v();
    },'json');
}

function get_total_order(){
    price_ship  =  $("#total_ship").val();
    price_total =  $("#total_price").val();
    $("#label_total").html(formatCurrency( parseInt(price_ship) + parseInt(price_total)));
}

function get_total(){
    sub_total = ToNumber($("#total").html());
    price_ship = $("#total_ship").val();
    
   // $("#price_total").html(formatCurrency(sub_total));
   // $("#tongthanhtoan").html(formatCurrency(sub_total));
   // $("#label_total").html(formatCurrency((parseInt(sub_total)+parseInt(price_ship))));
}

function ToNumber(nStr) {
    if (nStr != null && nStr != NaN) {
        var rgx = /[₫\s.]/;
        while (rgx.test(nStr)) {
            nStr = nStr.replace(rgx, '');
        }
        return eval(nStr) + 0;
    }
    return 0;

}

