jQuery(document).ready(function () {
    //body click
    jQuery("body").click(function () {
        jQuery("#ressult-search-header").hide();
    });

    /*--------------------------------+
     * banner left -right
     +------------------------------*/
    var widthScreen = jQuery(window).width();
    var widthAds = (widthScreen - 1010) / 2;
    //set css
    jQuery("div#ads-left-screen").css({
        'width': widthAds,
        'top': '170px'
    });
    jQuery("div#ads-right-screen").css({
        'width': widthAds,
        'top': '170px'
    });

    //check css
    if (widthScreen <= 1024) {
        jQuery("div#ads-left-screen").css({
            'display': 'none'
        });
        jQuery("div#ads-right-screen").css({
            'display': 'none'
        });
    } else {
        //check scroll
        jQuery(window).scroll(function () {
            var heightTop = jQuery(window).scrollTop();
            //check top
            if (heightTop != 0) {
                jQuery("div#ads-left-screen").css({
                    'width': widthAds,
                    'top': '5px'
                });
                jQuery("div#ads-right-screen").css({
                    'width': widthAds,
                    'top': '5px'
                });
            } else {
                jQuery("div#ads-left-screen").css({
                    'width': widthAds,
                    'top': '140px'
                });
                jQuery("div#ads-right-screen").css({
                    'width': widthAds,
                    'top': '140px'
                });
            }

        });


    }

    /**
     * autocomplete search
     */
    jQuery("#keyword").keyup(function () {
        var keyword = jQuery(this).val();
        if (keyword.length >= 3) {
            jQuery.ajax({
                type: 'POST',
                url: base_url + 'products/autosearch',
                data: {'keyword': keyword},
                dataType: "html",
                success: function (data) {
                    //show result
                    jQuery("#ressult-search-header").html(data);
                }
            });

            //show result
            jQuery("#ressult-search-header").show();
        }

    });

    /*-----------------------------------------+
     * Menu scroll top
     +-------------------------------------------*/
    jQuery('#nav-bar p#label').hover(function () {
        jQuery('#content-wapper div.scroll-top-menu').show();
    }, function () {
        jQuery('#content-wapper div.scroll-top-menu').hide();
    });

    //menu home main
    jQuery("ul#menu-left li").hover(function () {
        jQuery('#content-wapper div.scroll-top-menu').show();
        //get id
        var id = jQuery(this).attr("id");
        if (id != undefined) {
            jQuery("div#box-menu").show();
            jQuery.ajax({
                type: 'POST',
                url: base_url + 'api/submenu',
                data: {'id': id},
                dataType: "html",
                success: function (data) {
                    jQuery("div#box-menu").html(data);
                }
            });
        }
    }, function () {
        jQuery("div#box-menu").hide();
        jQuery('#content-wapper div.scroll-top-menu').hide();
    });

    //menu sub home
    jQuery("#box-menu").hover(function () {
        jQuery("div#box-menu").show();
        jQuery('#content-wapper div.scroll-top-menu').show();
    }, function () {
        jQuery("div#box-menu").hide();
        jQuery('#content-wapper div.scroll-top-menu').hide();
    })

    /*-----------------------------------------+
     * End menu scroll top
     +-------------------------------------------*/

    /**----------------------------------+
     * box-cart
     +-----------------------------------*/
    jQuery(".box-cart").hover(function () {
        jQuery("#cart-box").show();
    }, function () {
        jQuery("#cart-box").hide();
    });
    jQuery("#cart-box").hover(function () {
        jQuery("#cart-box").show();
    }, function () {
        jQuery("#cart-box").hide();
    });

    /*-- addCart --*/
    jQuery(".addCart").click(function () {
        var attrId = jQuery(this).attr("id");
        //get productID
        var product_id = attrId.split('_');
        var qty = jQuery("#quantity_" + product_id[1]).val();

        //check quantity
        if (qty === '') {
            qty = 1;
        }   
        //post
        jQuery.post(base_url + "muangay/index", {'product_id': product_id[1], 'qty': qty}, function (data) {
            window.location = base_url + "thong-tin-gio-hang.html";
        }, 'json');

    });


    //**scroll top
    jQuery(window).scroll(function () {
        if (jQuery(this).scrollTop() != 0) {
            jQuery("#toTop").fadeIn();
        } else {
            jQuery("#toTop").fadeOut();
        }
    });

    //** Click
    jQuery("#toTop").click(function () {
        jQuery('body,html').animate({scrollTop: 0}, 800);
    });
    //**

});

// language **
function set_lang(lang) {
    jQuery.post(site_url + "api/setlang/", {'lang': lang}, function (data) {
        location.reload();
    });

}

function hide_msg() {
    setTimeout(RemoveMes, 2000);
}

function RemoveMes() {
    var id_msg = jQuery("#msg");
    if (id_msg.length > 0) {
        jQuery("#msg").slideUp("fast", function () {
            jQuery(this).hide();
        });
    }
}