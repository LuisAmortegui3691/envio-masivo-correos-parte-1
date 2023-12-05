<?php
    /* Llamando a la cadena de conexion */
    require_once("../config/conexion.php");
    /* Llamado a la clase  */
    require_once("../models/Usuario.php");
    /* Inicializa la clase */
    $usuario = new Usuario();

    /* Opcion de solicitud de controller */
    switch($_GET["op"]) {
        /* Servicio para guardar el correo electronico */
        case "guardarcorreo";
            $datos = $usuario->get_correo($_POST["usuario_correo"]);
            if (is_array(($datos))) {
                $usuario->insert_correo($_POST["usuario_correo"]);
                echo 1;
            } else {
                echo 2;
            }

            break;
    }
?>