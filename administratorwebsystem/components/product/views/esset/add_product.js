$(document).ready(function() {
    $("#show_mienbac").click(function(){
        if($('input[name=mienbac]').is(':checked')){
            $("fieldset#mienbac").show();
        }else{
            $("fieldset#mienbac").hide();
        }
    });
    $("#show_miennam").click(function(){
        if($('input[name=miennam]').is(':checked')){
            $("fieldset#miennam").show();
        }else{
            $("fieldset#miennam").hide();
        }
    });
    
    $('#giaban_mienbac').priceFormat({});
    $('#giathitruong_mienbac').priceFormat({});
    $('#giaban_miennam').priceFormat({});
    $('#giathitruong_miennam').priceFormat({});
    
    
    // Tinh tien giam gia kem % Mien Nam
    $('#giathitruong_miennam').keyup(function() {
        giaban_miennam = ToNumber($("#giaban_miennam").val());
        giathitruong_miennam = ToNumber($(this).val());
        tietkiem_phantram = ((giathitruong_miennam - giaban_miennam)*100)/giaban_miennam;
        $("#per_miennam").val(parseInt(tietkiem_phantram));
        $("#giamgia_miennam").val(formatCurrency(giathitruong_miennam - giaban_miennam));
    });
    
    $('#giaban_miennam').keyup(function() {
         giathitruong_miennam = ToNumber($("#giathitruong_miennam").val());
         giaban_miennam = ToNumber($(this).val());
        tietkiem_phantram = ((giathitruong_miennam - giaban_miennam)*100)/giaban_miennam;
        $("#per_miennam").val(parseInt(tietkiem_phantram));
        $("#giamgia_miennam").val(formatCurrency(giathitruong_miennam - giaban_miennam));
    });
    
    // Tinh tien giam gia kem % Mien Bac
    $('#giathitruong_mienbac').keyup(function() {
        giaban_miennam = ToNumber($("#giaban_mienbac").val());
        giathitruong_miennam = ToNumber($(this).val());
        tietkiem_phantram = ((giathitruong_miennam - giaban_miennam)*100)/giaban_miennam;
        $("#per_mienbac").val(parseInt(tietkiem_phantram));
        $("#giamgia_mienbac").val(formatCurrency(giathitruong_miennam - giaban_miennam));
    });
    $('#giaban_mienbac').keyup(function() {
         giathitruong_miennam = ToNumber($("#giathitruong_mienbac").val());
         giaban_miennam = ToNumber($(this).val());
        tietkiem_phantram = ((giathitruong_miennam - giaban_miennam)*100)/giaban_miennam;
        $("#per_mienbac").val(parseInt(tietkiem_phantram));
        $("#giamgia_mienbac").val(formatCurrency(giathitruong_miennam - giaban_miennam));
    });
});

$(function() {
  $(".low input[type='button']").click(function(){
    var arr = $(this).attr("name").split("2");
    var from = arr[0];
    var to = arr[1];
    $("#" + from + " option:selected").each(function(){
      $("#" + to).append($(this).clone());
      $(this).remove();
    });
  });
})



function change_tinhtrang_mienbac(tinhtrang){
    if(tinhtrang == -1){
        $("#tinhtrang_mienbac_text").show();
    }else{
        $("#tinhtrang_mienbac_text").hide();
    }
}
function change_tinhtrang_miennam(tinhtrang){
    if(tinhtrang == -1){
        $("#tinhtrang_miennam_text").show();
    }else{
        $("#tinhtrang_miennam_text").hide();
    }
}

function get_manufacture(catid){
    $.post(base_url+"product/shop/get_manufacture",{'catid':catid},function(data){
        $("#manufacture").html(data.list);                                            
    },'json');
}

//Them tang pham mien nam

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

//formatCurrency
function formatCurrency(num) {
    num = num.toString().replace(/\$|\,/g, '');
    if (isNaN(num))
        num = "0";
    sign = (num == (num = Math.abs(num)));
    num = Math.floor(num * 100 + 0.50000000001);
    cents = num % 100;
    num = Math.floor(num / 100).toString();
    if (cents < 10)
        cents = "0" + cents;
    for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
        num = num.substring(0, num.length - (4 * i + 3)) + '.' +
    num.substring(num.length - (4 * i + 3));
    var currency = (((sign) ? '' : '-') + num);
    return currency;
}
