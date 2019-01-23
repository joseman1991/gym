/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$(document).ready(function () {
    var formulario = $("#registro");
    var email = $("#correo");
    var userError = $("#userError");
   
    //btn-login

    jQuery(formulario).validate(
            {
                rules: {
                    clave: {
                        required: true,
                        minlength: 5,
                        equalTo: pclave
                    },
                    pclave: {

                    },
                    telefono: {
                        digits: true
                    }
                }
            }

    );


  


    email.keyup(function () {
        var user = email.val();
        var usuario = {
            'usuario': {
                email: user
            }
        };
        $.ajax({
            url: "obtenerUser",
            data: JSON.stringify(usuario),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {
                if (res.usuario.nombre1 === null) {                  
                    userError.css("display", "none");
                } else {                    
                    userError.css("display", "block");
                }
            }
        });
    });

});

