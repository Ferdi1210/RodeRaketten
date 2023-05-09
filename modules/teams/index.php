<?php

$sContent = '';

  if(!empty($_GET['team']))
{

$result = selectQuery("SELECT `id`, `name`, `content` FROM `teams` WHERE `id` = ". $_GET['team'] .";");

$sContent = $result[0]['content'];
} 

$sql = "SELECT * FROM `teams`";

$results = selectQuery($sql);

$return = '<div class="teams">';

foreach($results as $result) //[-]
{
  $return .= '<a href="' . ROOTURL . '?module=teams&team='. $result['id'] .'">'. $result['name'] .'</a>';
  // print_r($result);

}

$return .= '  
  </div>';

  return $return . $sContent;

?>