<?php


//$dns = 'mysql:host=localhost;dbname=id16123060_sampledb	';
//$user = 'id16123060_sampleuser';
//$pass = 'Qweasdzxc321@#$%';

try {
    $connection = new PDO('mysql:host=localhost','id16123060_sampleuser','Qweasdzxc321@#$%');
    $connection -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    echo "Connected";
} catch (PDOException $exc) {
    echo $exc ->getMessage();
    die("Unable to connect");
}

/*try {
    $db = new PDO ($dns, $user, $pass);
    echo 'connected';
} catch (PDOException $err) {
    $error = $err->getMessage();
    echo $error;
}*/

?>

