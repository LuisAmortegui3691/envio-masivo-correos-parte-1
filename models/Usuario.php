<?php
    class Usuario extends Conectar {
        /* Insertar Correo Electronico en la Base de datos */
        public function insert_correo($usuario_correo) {
            $conectar = parent::conexion();
            parent::set_names();
            $sql = "INSERT INTO tm_usuario (usuario_correo, fecha_creacion, estado) VALUES (?, now(), 1)";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $usuario_correo);
            $sql->execute();
        }

        /* Obtener el correo */
        public function get_correo() {
            $conectar = parent::conexion();
            parent::set_names();
            $sql = "SELECT * FROM tm_usuario WHERE usuario_correo?";
            $sql = $conectar->prepare($sql);
            $sql->execute();
            return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
        }
    }
?>
