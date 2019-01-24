/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$(document).ready(function () {
    var formulario = $("#registro");
    var select = $("#periodo");
    var stotal = $("#stotal");
    var precio = $("#precio");
    var adicional = $("#adicional");
    var ad = Number($("#ad").val());
    stotal.val('1.50');
    var pocentaje = 1.5 * (ad / 100);
    var price = 1.50 + pocentaje;

    adicional.val(pocentaje.toFixed(2));


    precio.val(price.toFixed(2));



    //btn-login

    jQuery(formulario).validate(
            {
                rules: {
                   
                }
            }

    );


    select.change(function () {
        var op = Number($(this).val());
        var st = 0;
        switch (op) {
            case 1:
                st = 1.50;
                stotal.val('1.50');
                break;

            case 2:
                st = 5.00;
                stotal.val('5.00');
                break;


            case 3:
                st = 15.00;
                stotal.val('15.00');
                break;
        }
        pocentaje = st * (ad / 100);
        adicional.val(pocentaje.toFixed(2));
        price = st + pocentaje;
        precio.val(price.toFixed(2));
    });




});

