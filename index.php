<?php
// Cabeceras de seguridad
header("X-Frame-Options: DENY");
header("Content-Security-Policy: frame-ancestors 'none'");
header("Referrer-Policy: no-referrer");

// Configuración
include_once("config.inc.php");

if (is_string($smarty)) {
    die($smarty); // Error al inicializar Smarty
}

if (!isset($_SESSION)) {
    session_start();
}

include_once core . "database.php";
$daba = new database();

// Lista blanca de plantillas válidas
$plantillas = [
    'home', 'nosotros', 'agroquimicos'
];

// Obtener y validar la opción
$opcion = isset($_GET['op']) ? $daba->cleanQuery($_GET['op']) : 'home';
$item   = isset($_GET['item']) ? $daba->cleanQuery($_GET['item']) : null;

if (!preg_match("/^([a-z_]+)$/", $opcion)) {
    http_response_code(403);
    die('Forbidden - Opción inválida');
}

if (!in_array($opcion, $plantillas)) {
    http_response_code(404);
    $smarty->display("404.tpl");
    exit;
}

// Controlador dinámico según si hay item
if($item){
    switch ($opcion) {
        case 'agroquimicos':
            $agroquimicos = [];
            $data = [];
            $qry = "SELECT * FROM master_agroquimicos WHERE activo = 1";
            $res = $daba->query($qry);
            while ($row = $res->fetch_assoc()) {
                $agroquimicos[] = $row;
                if($row['item']==$item){
                    $data[] = $row;
                }
            }
            error_log(print_r($data,true));

            $smarty->assign('agroquimicos', $agroquimicos);
            $smarty->assign('data', $data);
            break;

        default:
            http_response_code(404);
            $smarty->display("404.tpl");
            exit;
    }
}
$template = $opcion . ".tpl";

$titulos = [
    'home' => 'Inicio | Cuánticoagro',
    'nosotros' => 'Nosotros | Cuánticoagro',
    'agroquimicos' => 'Agroquimicos | Cuánticoagro',
    'contacto' => 'Contáctanos | Cuánticoagro',
    '404' => 'Página no encontrada | Cuánticoagro'
];

$descripciones = [
    'home' => 'En Cuántico Agroservicios Integrales proveemos soluciones integrales (insumos, tecnología y acompañamiento) para cultivos como tuna, nopal, jitomate y papa. Combate plagas como la grana cochinilla, mejora tu rendimiento y protege tu inversión con nuestros fungicidas, insecticidas y fertilizantes de alto desempeño, somos la tienda de agroinsumos más relevante de la región',
    'nosotros' => 'Honramos la tierra y a quienes la trabajan Somos más que proveedores: tu aliado técnico en cada etapa del cultivo, con soluciones innovadoras y trato humano.',
    'agroquimicos' => '',
    'contacto' => '¿Necesitas ayuda? Contáctanos y empecemos tu próximo proyecto digital.',
    '404' => 'La página que buscas no existe. Regresa al inicio o explora nuestros servicios.'
];
// Variables compartidas para todas las plantillas
$smarty->assign('base_url', BASE_URL);
$smarty->assign('opcion', $opcion);
$smarty->assign('page_title', $titulos[$opcion]);
$smarty->assign('page_description', $descripciones[$opcion]);
$smarty->assign('entorno', entorno);
$smarty->assign('ruta_relativa', ruta_relativa);
// Renderizado
$smarty->display("header.tpl");
$smarty->display($template);
$smarty->display("footer.tpl");