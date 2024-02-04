<?php
function mostrardantzaris($conexion) {
    $consulta = 'SELECT * FROM dantzariak;';
    $resultado = $conexion->query($consulta);

    // Verifica si la consulta fue exitosa
    if ($resultado) {
        // Procesa y muestra los resultados
        while ($fila = $resultado->fetch_assoc()) {

            if (empty($fila["Erra_Gustokoa"])) {
                $erra = "Ez dauka Erraldoirik";
            } else {
                $erra = $fila["Erra_Gustokoa"];
            }

            if (empty($fila["Dant_gustokoa"])) {
                $dantza = "Ez dauka Dantzarik";
            } else {
                $dantza = $fila["Dant_gustokoa"];
            }


            ?>

            
                <li>
                    <span class="izena"><?php echo ucfirst($fila["Izena"]); ?></span>
                    <span class="dantza"><?php echo ucfirst($dantza); ?></span>
                    <span class="erraldoia"><?php echo ucfirst($erra); ?></span>
                    <span class="ikusi"><a href="#"><i class="fa-solid fa-circle-info"></i></a></span>
                </li>
            
            <a href="ikusi.php?id=<?php echo $fila["ID_dantzari"] ?>"></a>
            <?php
        }
    } else {
        // Maneja errores
        echo "Ez da aurkitu dantzaririk " . $conexion->error;
    }

    // Cierra la conexión
    $conexion->close();
}