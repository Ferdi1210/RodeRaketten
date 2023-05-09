<?php

    define('ROOTURL', 'http://studenten.local/Ferdi%20Cumen/Eindopdrachtp10/FCRodeRaketten/');
    define('ROOT_PATH','__DIR__');
    define('HOSTNAME', 'localhost');
    define('USERNAME', 'root');
    define('PASSWORD', '');
    define('DATABASE', 'opdracht_p10');

    $oConnection = mysqli_connect(HOSTNAME, USERNAME, PASSWORD, DATABASE);
    global $oConnection;

?>