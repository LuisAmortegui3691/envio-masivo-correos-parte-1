<?php
    /* Iniciamos clase conectar */
    class Conectar {
        protected $dbh;

        /* Funcion protegida de la cadena de conexion */
        protected function conexion() {
            try {
                $conectar = $this->dbh = new PDO("mysql:host=localhost;dbname=envio_correos_masivos","root","");
                return $conectar;
            } catch(Exception $e) {
                /* En caso de que se presente un error en la cadena de conexion */
                print "Error" .$e->getMessage()."<br>";
                die();
            }
        }

        /* Para impedir que tengamos problemas con las ñ o tildes */
        public function set_names() {
            return $this->conexion()->query("SET NAMES 'utf8'");
        }

        /* Ruta principal del proyecto */
        public static function ruta() {
            return "http://localhost/3. Envio Masivo Correos/";
        }
    }
?>