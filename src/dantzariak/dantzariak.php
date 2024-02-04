<?php
include("../conection.php");
$conn = conectar();
include("funtzioak.php")
    ?>

<!DOCTYPE html>
<html lang="eus">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dantzariak</title>

    <link rel="stylesheet" href="../styles/main.css">
    <link rel="stylesheet" href="../styles/dantzariak.css">
    <script src="https://kit.fontawesome.com/dacbd6cb00.js" crossorigin="anonymous"></script>
</head>

<body>
    <h2>Dantzariak</h2>

    <div class="dantzariak">
        <?php
            mostrardantzaris($conn)
        ?>
    </div>
    <div class="botoiak">
        <div class="gehitu">
            <a href="#" class="botoia"><i class="fa-solid fa-circle-plus"></i></a>
        </div>

        <div class="atzera">
            <a href="../index.php" class="botoia"><i class="fa-solid fa-circle-chevron-left"></i></a>
        </div>
    </div>

</body>

</html>