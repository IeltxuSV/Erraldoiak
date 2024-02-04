<?php
function mostrardantzaris($conexion) {
    $consulta = 'SELECT ID_dantzari AS Dantzari, Izena AS Izen FROM dantzariak;';
    $resultado = $conexion->query($consulta);

    // Verifica si la consulta fue exitosa
    if ($resultado) {
        // Procesa y muestra los resultados
        while ($fila = $resultado->fetch_assoc()) {
            ?>
            <a href="ikusi.php?id=<?php echo $fila["Dantzari"] ?>"><?php echo ucfirst($fila["Izen"]); ?></a>
            <?php
            echo "<br>";
        }
    } else {
        // Maneja errores
        echo "Ez da aurkitu dantzaririk " . $conexion->error;
    }

    // Cierra la conexión
    $conexion->close();
}