if (jQuery) {
    if(jQuery.validator) jQuery.extend(jQuery.validator.messages, {required: "", remote: "", email: "", url: "", date: "", dateISO: "", number: "", digits: "", creditcard: "", equalTo: "", accept: "", maxlength: "", minlength: "", rangelength: "", range: "", max: "", min: ""});
    jQuery.fn.reset = function () { jQuery(this).each(function () { jQuery(this).find(':checkbox, :radio').each(function () { jQuery(this).removeAttr('checked'); }); this.reset(); }); };
} //if

var validator;

jQuery(document).ready(function($) {
    mostrarLoader();

    // Inicializa validación
    validator = $("#formContacto").validate({
        errorElement: "label",
        rules: {
            nombre: { required: true },
            correo: { required: true, email: true },
            celular: { required: true, digits: true,minlength: 10,maxlength: 10 },
            asunto: { required: true },
            mensaje: { required: true }
        },
        messages: {
            nombre: { required: "Este campo es obligatorio." },
            correo: {
                required: "Este campo es obligatorio.",
                email: "Ingresa un formato válido."
            },
            celular: {
                required: "Este campo es obligatorio.",
                digits: "Solo se permiten números",
                minlength: "El celular debe contener 10 dígitos.",
                maxlength: "El celular debe contener 10 dígitos."
            },
            asunto: { required: "Este campo es obligatorio." },
            mensaje: { required: "Este campo es obligatorio." }
        },
        errorPlacement: function(error, element) {
            error.insertBefore(element);
        }
    });
    ocultarLoader();

    $("#btn_contacto").on('click', function(e) {
        e.preventDefault();
        if($("#formContacto").valid()) {
            mostrarLoader();
            $.when(guardarInfo()).done(function (response_uno) {
                if (response_uno[0] === "OK") {
                    ocultarLoader();
                    notificacion("success", "Información enviada correctamente", "Gracias por escribirnos, nos pondremos en contacto lo más pronto posible.");
                } else {
                    ocultarLoader();
                    muestra_mensaje("error", response_uno[1], 10);
                }
            });
        }
    });

});


function guardarInfo() {
    var dfd = jQuery.Deferred();
    let params = "&" + $("#formContacto").serialize();

    peticion("home", "guardarInfo", params).done(function (result) {
        if (result.code == "OK") {
            $("#formContacto")[0].reset();
            regreso = ["OK"];
        } else {
            regreso = ["ERR", result.data];
        }
        dfd.resolve(regreso);
    });

    return dfd.promise();
}

function peticion(c, m, p, dn){
    var dn = dn || false;
    var p = p || '';
	var d = "&clase=" + c + "&metodo=" + m + p+"&token="+localStorage.token;
    var hilo = $.ajax({
        type: "POST",
        url: "core.php",
        data: d,
	    contentType: "application/x-www-form-urlencoded; charset=utf-8",
	    dataType: "json",
        cache: false,
        beforeSend: function(xhr){xhr.setRequestHeader('Authorization', 'Bearer '+localStorage.token+'');},
		success: function(response,textStatus, request){
			if(dn && response.data)
                $(dn).empty().html(response.data);
			if(dn && response.codigo)
                $(dn).empty().html(response.codigo);
        },
	    error: function(XMLHttpRequest, textStatus, errorThrown){
            alert(textStatus + " Ocurrio un error " + errorThrown);
        }
	}); //ajax
    return hilo;
} //function peticion

function notificacion(status,title,mensaje){
    Swal.fire({
        icon: status,
        title: title,
        text: mensaje,
        confirmButtonColor: "#91c04f",
        confirmButtonText: "Aceptar"
    })
}

function mostrarLoader(){
    $(".preloader").show();
}

function ocultarLoader(){
    $(".preloader").hide();
}