<?php

require_once 'responses/consultarTodosResponse.php';
require_once '../../modelo/Auto.php';
require_once '../../configuracion/database.php';

header('Content-Type: application/json');

$resp = new ConsultarTodosResponses();

$resp->ListAutos = Auto::BuscarTodas();





echo json_encode($resp);