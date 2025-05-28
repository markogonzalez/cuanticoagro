<?php
    include_once("../config.inc.php");
    include_once (core.'/database.php');

	class utilidades extends database{

		public function sendMail($data,$template){
            require_once('vendor/autoload.php');
        
            $config = SendinBlue\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', API_SENDINBLUE);
    
            $apiInstance = new SendinBlue\Client\Api\TransactionalEmailsApi(
                new GuzzleHttp\Client(),
                $config
            );
            $sendSmtpEmail = new \SendinBlue\Client\Model\SendSmtpEmail();
            $sendSmtpEmail['subject'] = $data['asunto'];
            ob_start();
            try {
                $templatePath = "./".$template.".php"; // Ajusta esta ruta según tu estructura de directorios
                if (!file_exists($templatePath)) {
                    throw new Exception('Template file does not exist: ' . $templatePath);
                }
        
                include($templatePath);
            } catch (Exception $e) {
                ob_clean(); // Limpiar el buffer si hay un error
                error_log('Error loading template: ' . $e->getMessage());
                return false;
            }
            $html = ob_get_clean();
        
            $sendSmtpEmail['htmlContent'] = $html;
            $sendSmtpEmail['sender'] = array('name' => NOMBRE_REMITENTE, 'email' => $data['enviado_desde']);
            $sendSmtpEmail['to'] = array(
                array('email' => $data['correo_destinatario'], 'name' => $data['nombre_destinatario'])
            );
            
            if($data['adjunto']!=null){
                $attachment_list = [];
                foreach($data['adjunto'] as $adjunto){
                    $pdfDocPath = "";
                    $content = "";
                    $pdfDocPath = $adjunto['ubicacion'];
                    $content = chunk_split(base64_encode(file_get_contents($pdfDocPath)));
                    $attachment_item = array(
                        'name'=>$adjunto['nombre_archivo'],
                        'content'=>$content
                    );
                    array_push($attachment_list,$attachment_item);
                }
                $sendSmtpEmail['attachment']    = $attachment_list;
            }
            $sendSmtpEmail['replyTo'] = array('email' => $data['enviado_desde'], 'name' => NOMBRE_REMITENTE);
            try {
                $result = $apiInstance->sendTransacEmail($sendSmtpEmail);
                // print_r($result);
            } catch (Exception $e) {
                echo 'Exception when calling TransactionalEmailsApi->sendTransacEmail: ', $e->getMessage(), PHP_EOL;
            }
    
            return $result;
    
        }

	}
?>
