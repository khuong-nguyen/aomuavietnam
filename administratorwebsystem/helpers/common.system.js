
/*
$(document).ready(function(){
	//input check domain
	$("#checkDomain").Watermark('Nhập vào tên miền cần kiểm tra!');
	 //messages
    hide_msg();  

});*/


function set_lang(lang){
	$.post(site_url+"api/setlang/",{'lang':lang},function(data){
		location.reload();
	});
	
}

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