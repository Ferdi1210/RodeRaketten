<?php
if(file_exists('config.php')){
    include('config.php');
}

function selectQuery($query){
    global $oConnection;
    $result = mysqli_query($oConnection, $query);
    return mysqli_fetch_all($result, MYSQLI_ASSOC);
} // select query gaat alleeen over select en geeft een array terug.

function otherQuery($query){
    global $oConnection;
    //print_r($query);
    
    mysqli_query($oConnection, $query);

    if(!empty(mysqli_error_list($oConnection))){
        var_dump(mysqli_error_list($oConnection));
    }
    return '<script>console.log("GELUKT")</script>';
} // other query kan andere query gebruiken dan select, select kan er ook in maar dan geeft het een object terug
?>  