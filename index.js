function init() {
    $("#usuario_form").on("submit", function(e) {
        guardar(e);
    });
}

$(document).ready(function() {
    init();// Llamada a la función init al cargar el documento  
});

function guardar(e) {
    e.preventDefault();
    var formData = new FormData($("#usuario_form")[0]);
    $.ajax({
        url: "controller/usuario.php?op=guardarcorreo",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(data) {
            $("#usuario_correo").val('');
            $("#modalsuscribete").modal('hide');

            if (data==1) {
                /* Alerta que indica la actualizacion con exito */
                Swal.fire({
                    icon: "success",
                    title: "Luis Amortegui Soluciones",
                    text: "Gracias por suscribirte!",
                    showConfirmButton: false,
                    timer: 2000
                });

                console.log(data);
                console.log("Exito al guardar la informacion en la base de datos");

            } else {
                /* Alerta para los correos ya registrados */
                Swal.fire({
                    icon: 'error',
                    title: 'AnderCode',
                    text : 'Correo ya registrado!',
                    showConfirmButton: false,
                    timer: 4000
                });
            }

            
        },

        /* Nos indica si hay algun error en el ajax */
        error: function(jqXHR, textStatus, errorThrown) {
            console.error("Error en la petición AJAX:", textStatus, errorThrown);

            /* Alerta que indica la actualizacion con exito */
            Swal.fire({
                icon: "error",
                title: "Error al enviar",
                text: "Por favor comuniquese con el administrador",
                showConfirmButton: false,
                timer: 4000
              });
        }
    });
}

