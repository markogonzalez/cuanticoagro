<?php 
    include_once("config.inc.php");
	include_once 'utilidades.php';

    class home extends utilidades{
        public function __construct() {
            parent::__construct();
        } //function __construct
        
        public function guardarInfo($params = null){

            $respuesta = "";
            $codigo = "OK";

            $nombre = isset($params["nombre"]) && $params["nombre"] !== "" ? $this->cleanQuery($params["nombre"]) : null;
            $correo = isset($params["correo"]) && $params["correo"] !== "" ? $this->cleanQuery($params["correo"]) : null;
            $celular = isset($params["celular"]) && $params["celular"] !== "" ? $this->cleanQuery($params["celular"]) : null;
            $asunto = isset($params["asunto"]) && $params["asunto"] !== "" ? $this->cleanQuery($params["asunto"]) : null;
            $mensaje = isset($params["mensaje"]) && $params["mensaje"] !== "" ? $this->cleanQuery($params["mensaje"]) : null;

            $data = array(
                "nombre"=>$nombre,
                "correo" => $correo,
                "celular" => $celular,
                "asunto" => $asunto,
                "mensaje" => $mensaje,
                "correo_destinatario" => "comunicacioncuantico@gmail.com", 
                "nombre_destinatario" => "Comunicación Cuantico",
                "asunto" => "Información de contacto Cuantico Agro",
                "enviado_desde" => CORREO_REMITENTE,
            );
            
            $envio = $this->sendMail($data,"correo_contacto");
            if(!$envio){
                $codigo = "ERR";
                $respuesta = "Error al enviar archivo, intenta de nuevo.";
            }

            return [$codigo,$respuesta];

        }
    }

?>