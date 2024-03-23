<?php

function conectar() {

    $servername = "localhost";
    $username = "root";
    $password = "root";
    $database = "erraldoiak";

    $conn = new mysqli($servername, $username, $password, $database);

    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    return $conn;

}