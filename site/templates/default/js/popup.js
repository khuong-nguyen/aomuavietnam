function vnit_pop(title,content){
    var document_height = $(document).height();
    var window_height = $(window).height();
    var window_width = $(window).width();
    $("body").prepend('<div class="overlay-popup"></div>');
     html ='<div class="classic-popup">'+
            '<div class="classic-popup-top">'+
                '<div class="right">'+
                    '<div class="bg"></div>'+
                '</div>'+
            '</div>'+
            '<div class="classic-popup-main">'+
                '<div class="classic-popup-title">'+
                    '<div class="fl">'+title+'</div>'+
                    '<a href="javascript:void(0)" class="classic-popup-close" title="Đóng" onclick="close_pop()">x</a>'+
                    '<div class="c"></div>'+
                '</div>'+
                '<div class="classic-popup-content">'+
                    '<div>'+content+'</div>'+
                '</div>'+
            '</div>'+
            '<div class="classic-popup-bottom">'+
                '<div class="right">'+
                    '<div class="bg"></div>'+
                '</div>'+
            '</div>'+
        '</div>';

    $("#vnit_pop").html(html);
    $(".overlay-popup").css({'height':document_height});
    $("#vnit_pop").css({
        'left': (window_width - $("#vnit_pop").width())/2,
        'top': (window_height - $("#vnit_pop").height())/2
    });
}

function close_pop(){
    $("#vnit_pop").html('');
    $(".overlay-popup").remove();
}